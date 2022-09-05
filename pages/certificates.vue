<template>

    <div>
        <section class="section-certificates-intro">
            <div class="intro-wrapper">

                <div class="intro">

                    <video ref="video" class="intro__video"
                        :poster="require('~/assets/img/posters/CertificatesIntro.jpg')"
                        :data-src="require('~/assets/video/CertificatesIntro.mp4')"
                        loop muted autoplay playsinline
                    ></video>

                    <div class="intro__text">
                        <h1 class="intro__head-text">
                            Подарите<br>
                            здоровье<br>
                            близким!<br>
                        </h1>

                        <h3 class="intro__desc-text">
                            Подарочный сертификат - <br>
                            отличный подарок друзьям, коллегам и близким людям на праздник
                            или другое мероприятие!
                            Они есть в печатном и электронном виде.
                        </h3>
                    </div>

                    <i class="angle-down"></i>
                </div>
            </div>
        </section>

        <section class="wrapper-outer section-paper-certificates">
            <div class="section-inner">
                <h2 class="section-paper-certificates__title section-heading">Бумажные сертификаты</h2>

                <div class="paper-certificates">
                    <div class="paper-certificates__description">
                        <h3 class="paper-certificates__text">
                            Бумажный сертификат - отличный выбор,
                            если вы хотите сделать подарок при личной встрече.
                            Это практичный и компактный способ подарить человеку здоровье.
                            Дизайн конверта и сертификата будут выглядить премиально
                            без дополнительной упаковки на любом празднике
                            и подчеркнут статусность вашего подарка.
                        </h3>

                        <a class="paper-certificates__get" href="#" @click.stop="getPaperCertificate">
                            Заказать
                        </a>
                    </div>

                    <client-only>
                        <vue-slick-carousel class="paper-certificates-slider" v-bind="sliderSettings">

                            <div class="paper-certificates-slider__item">
                                <img class="paper-certificates-slider__image"
                                     v-lazy="require(`~/assets/img/certificates_1.jpg`)"
                                     alt="bestmaster-massage - сертификаты на массаж">
                            </div>
                            <div class="paper-certificates-slider__item">
                                <img class="paper-certificates-slider__image"
                                     v-lazy="require(`~/assets/img/certificates_2.jpg`)"
                                     alt="bestmaster-massage - сертификаты на массаж">
                            </div>
                            <div class="paper-certificates-slider__item">
                                <img class="paper-certificates-slider__image"
                                     v-lazy="require(`~/assets/img/certificates_3.jpg`)"
                                     alt="bestmaster-massage - сертификаты на массаж">
                            </div>

                            <template #prevArrow>
                                <div class="paper-certificates-slider__arrow paper-certificates-slider__arrow-prev">
                                    <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M24 2L4 22L24 42" stroke="white" stroke-width="5"/>
                                    </svg>
                                </div>
                            </template>

                            <template #nextArrow>
                                <div class="paper-certificates-slider__arrow paper-certificates-slider__arrow-next">
                                    <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2 2L22 22L2 42" stroke="white" stroke-width="5"/>
                                    </svg>
                                </div>
                            </template>

                        </vue-slick-carousel>
                    </client-only>

                </div>
            </div>
        </section>

        <section class="wrapper-outer section-certificates">

            <certificate-popup ref="popup"
                :is-open="isPopupOpen"
                :active-stock="activeStock"
                :errors="errors"
                :isRequestSend="isRequestSend">
            </certificate-popup>

            <div class="section-inner">
                <h2 class="section-services__title section-heading">Электронные сертификаты</h2>

                <div class="certificates certificates-cards-grid">

                    <div class="certificates__item" v-for="stock in certificates" :key="stock.id">
                        <certificate-card v-bind="stock"></certificate-card>
                    </div>

                </div>
            </div>
        </section>

    </div>

</template>

<script>
import CertificatePopup from "../components/popups/CertificatePopup";
import CertificateCard from "../components/CertificateCard";
import {is422} from "../shared/utils/responseErrors";
import VueSlickCarousel from "vue-slick-carousel";
import 'vue-slick-carousel/dist/vue-slick-carousel.css';

export default {
    head() {
        return {
            'title': 'bestmaster-massage - Подарочные сертификаты на массаж',

            'description':
                'Сертификат на массаж - отличный подарок на все случаи жизни! На сайте вы сможете заказать его как в бумажном, так и в электронном виде',
        }
    },
    name: "certificates",
    fetchKey: 'servicesPage',
    async fetch() {
        this.certificates = ( await this.$axios.get('/api/certificates/all') ).data;
    },
    components: {
        CertificateCard,
        CertificatePopup,
        VueSlickCarousel,
    },
    mounted() {
        this.$refs.video.src = this.$refs.video.getAttribute('data-src');

        this.$nuxt.$on('removeError', this.removeError);
        this.$nuxt.$on('purchaseStock', this.togglePopup);
        this.$nuxt.$on('sendRequest', this.sendRequest);
        this.$nuxt.$on('closePopup', this.togglePopup);
    },
    data() {
        return {
            isPopupOpen: false,
            errors: {},
            isRequestSend: false,
            certificates: [],
            activeStock: {},
            sliderSettings: {
                arrows: true,
                slidesToShow: 1,
                speed: 400,
            },
        }
    },
    methods: {
        removeError( field ) {
            this.errors[field] = null;
        },
        async sendRequest( customer ) {

            try {
                const id = this.activeStock.id;

                //if it is electronic certificate
                if ( id !== undefined ) {
                    await this.$axios.$post('/api/certificates/purchase', { id, customer });
                }
                //if it is paper certificate
                else {
                    await this.$axios.$post('/api/certificates/purchase/in-paper', { customer });
                }

                this.errors = {};
                this.isRequestSend = true;
            } catch ( err ) {
                if ( is422( err ) ) {
                    this.errors = err.response.data.errors;
                } else {
                    this.errors.message = err.response.data.message;
                }
                this.isRequestSend = false;
            }

        },
        togglePopup( id ) {
            this.isPopupOpen = !this.isPopupOpen;
            this.errors = {};
            this.isRequestSend = false;

            if (this.isPopupOpen) {

                this.certificates.map( item => {
                    if (item.id === id) {
                        this.activeStock = item;
                    }
                });

            }
            else {
                this.activeStock = {};
            }

        },
        getPaperCertificate() {
            this.isPopupOpen = !this.isPopupOpen;
            this.errors = {}

            if (this.isPopupOpen) {
                this.activeStock = { title: 'Заказ бумажного сертификата' };
            }
            else {
                this.activeStock = {};
            }
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-certificates-intro{
    background-image: url("~/assets/img/bg-repeat.png");
    background-size: 760px;
}

.intro-wrapper{
    display: flex;
    align-items: center;
    margin: 0 auto;

    @media only screen and (min-width: 1140px) {
        max-width: 1140px;
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        max-width: 960px;
    }
    @media only screen and (max-width: 959px) {
        width: 100%;
    }
}

.intro{
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: 100%;
    min-height: 600px;

    &__video{
        z-index: 1;
        display: block;
        object-fit: cover;
    }

    &__text{
        z-index: 100;
        color: #FFFFFF;
        display: flex;
        justify-content: center;
        flex-direction: column;
    }

    &__head-text{
        margin-bottom: 40px;
    }

    @media only screen and (min-width: 1140px) {
        height: calc(100vh - variables.$xl-header-height);

        &__video{
            width: 350px;
            height: 100%;
        }

        &__text{
            width: 350px;
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        height: calc(100vh - variables.$l-header-height);

        &__video{
            width: 350px;
            height: 100%;
        }

        &__text{
            width: 350px;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        height: calc(100vh - variables.$m-header-height);

        &__video{
            width: 350px;
            height: 600px;
        }

        &__text{
            width: 250px;
        }
    }
    @media only screen and (max-width: 719px) {
        height: calc(100vh - variables.$m-header-height);

        &__video{
            width: 100%;
            height: 100%;
            filter: brightness(50%);
        }

        &__text{
            position: absolute;
            width: 250px;
            margin: 20px 0;
        }

        &__head-text{
            color: #EDC300;
        }
    }
}

.angle-down {
    left: calc(50% - 7px);
    height: 0;
    position: absolute;
    width: 14px;
    display: none;
    transform: rotate(-180deg);
    bottom: 50px;
    z-index: 100;

    &:before, &:after{
        content: " ";
        width: 5px;
        height: 20px;
        top: 0;
        position: absolute;
    }

    &:before{
        background: #FFFFFF;
        transform: rotate(45deg);
        left: -0.8px;
    }

    &:after{
        background: #FFFFFF;
        transform: rotate(-45deg);
        right: -0.9px;
    }

    @media only screen and (max-width: 719px){
        display: inline-block;
    }
}

.certificates-cards-grid{
    display: grid;
    justify-items: center;

    @media only screen and (min-width: 1140px) {
        grid-template-columns: repeat(2, 1fr);
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        grid-template-columns: repeat(2, 1fr);
    }
    @media only screen and (max-width: 959px) {
        grid-template-columns: 1fr;
    }
}

.section-services{

    &__title{
        color: variables.$main-fc;
        margin: 30px 0;
    }
}

.certificates{
    &__item{
        display: flex;
        justify-content: center;
    }

    @media only screen and (min-width: 1140px) {}
    @media only screen and (max-width: 1139px) and (min-width: 960px) {}
    @media only screen and (max-width: 959px) and (min-width: 720px) {}
    @media only screen and (max-width: 719px) and (min-width: 540px) {}
    @media only screen and (max-width: 539px) {
        &__item{
            width: 90%;
        }
    }
}

.section-paper-certificates{

    &__title{
        color: #FFFFFF;
        margin: 30px 0;
    }
}

.paper-certificates{
    display: flex;
    justify-content: space-around;
    align-items: center;

    &__description{
        color: #FFFFFF;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    &__text{
        font-weight: 300;
        line-height: 30px;
    }

    &__get{
        margin-top: 25px;
        display: inline-block;
        background-color: #ffffff;
        border: none;
        border-radius: 10px;
        padding: 10px 25px;
        color: variables.$third-fc;
        font-size: 19px;
        font-weight: 300;
        text-decoration: none;
    }

    @media only screen and (min-width: 720px) {

        &__text{
            font-size: 25px;
        }

        &__description{
            margin-right: 20px;
        }
    }
    @media only screen and (max-width: 719px) {
        flex-direction: column;

        &__text{
            font-size: 19px;
        }

        &__description{
            order: 2;
            margin-right: 0;
        }
    }
}

.paper-certificates-slider{
    position: relative;
    margin-bottom: 80px;

    &__image{
        object-fit: cover;
        user-select: none;
        -webkit-user-drag: none;
    }

    &__arrow{
        position: absolute;
        top: calc(100% + 20px);
        cursor: pointer;
        width: 50px;
        background-color: #202020;
        border-radius: 10px;
        display: flex;
        justify-content: center;

        &-prev{
            left: 30%;
        }

        &-next{
            right: 30%;
        }
    }

    @media only screen and (min-width: 960px) {
        width: 450px;

        &__image{
            width: 450px;
            height: 450px;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 350px;

        &__image{
            width: 350px;
            height: 350px;
        }
    }
    @media only screen and (max-width: 719px) {
        width: 300px;
        margin-bottom: 100px;
        order: 1;

        &__image{
            width: 300px;
            height: 300px;
        }
    }
}

</style>
