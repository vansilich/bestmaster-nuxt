<template>

    <div>
        <section class="section-interior-intro">
            <div class="intro-wrapper">

                <div class="intro">

                    <video ref="video" class="intro__video"
                        :poster="require('~/assets/img/posters/PartnershipIntro.jpg')"
                        :data-src="require('~/assets/video/PartnershipIntro.mp4')"
                        loop muted autoplay playsinline
                    >
                    </video>

                    <div class="intro__text">
                        <h1 class="intro__head-text">
                            Сотрудничество
                        </h1>
                    </div>

                    <i class="angle-down"></i>
                </div>
            </div>

            <div class="section-inner">
                <div class="interior-desc">

                    <p class="interior-desc__header">Выступаю спонсором на многих топовых мероприятиях, среди которых</p>

                    <ul class="interior-desc-list">
                        <li class="interior-desc-list__item">
                            <span class="interior-desc-list__dot"></span>
                            <p class="interior-desc-list__text">BE YOURSELF FAM WORKSHOPS</p>
                        </li>
                        <li class="interior-desc-list__item">
                            <span class="interior-desc-list__dot"></span>
                            <p class="interior-desc-list__text">WORLDWIDE DANCE CHAMP</p>
                        </li>
                        <li class="interior-desc-list__item">
                            <span class="interior-desc-list__dot"></span>
                            <p class="interior-desc-list__text">STREET FEST GROW-UP</p>
                        </li>
                        <li class="interior-desc-list__item">
                            <span class="interior-desc-list__dot"></span>
                            <p class="interior-desc-list__text">Открытая лига Единоборств</p>
                        </li>
                        <li class="interior-desc-list__item">
                            <span class="interior-desc-list__dot"></span>
                            <p class="interior-desc-list__text">Турнир по ММА Слава России!</p>
                        </li>
                    </ul>

                    <a href="https://t.me/bestmaster_msk" target="_blank" class="contact-with-me">
                        <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M20 40C31.0457 40 40 31.0457 40 20C40 8.95431 31.0457 0 20 0C8.95431 0 0 8.95431 0 20C0 31.0457 8.95431 40 20 40Z" fill="url(#paint0_linear_60_48)"/>
                            <path d="M16.3333 29.1667C15.6853 29.1667 15.7955 28.922 15.572 28.305L13.6666 22.0345L28.3333 13.3333" fill="#C8DAEA"/>
                            <path d="M16.3334 29.1667C16.8334 29.1667 17.0542 28.938 17.3334 28.6667L20 26.0737L16.6737 24.0678" fill="#A9C9DD"/>
                            <path d="M16.6733 24.0683L24.7333 30.0231C25.6531 30.5306 26.3168 30.2678 26.546 29.1693L29.8268 13.7088C30.1626 12.3621 29.3135 11.7511 28.4335 12.1506L9.16847 19.5791C7.85347 20.1066 7.8613 20.8403 8.9288 21.1671L13.8726 22.7103L25.3181 15.4895C25.8585 15.1618 26.3545 15.3378 25.9475 15.6991" fill="url(#paint1_linear_60_48)"/>
                            <defs>
                                <linearGradient id="paint0_linear_60_48" x1="26.68" y1="6.68" x2="16.68" y2="30" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#37AEE2"/>
                                    <stop offset="1" stop-color="#1E96C8"/>
                                </linearGradient>
                                <linearGradient id="paint1_linear_60_48" x1="22.5073" y1="20.0016" x2="25.6285" y2="27.1131" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#EFF7FC"/>
                                    <stop offset="1" stop-color="white"/>
                                </linearGradient>
                            </defs>
                        </svg>

                        <div>
                            Связаться по вопросам
                            сотрудничества
                        </div>
                    </a>

                </div>
            </div>

        </section>

        <section class="section-galery">
            <div class="section-inner">

                <client-only>
                    <vue-slick-carousel class="studio-galery" v-bind="sliderSettings">

                        <div class="studio-galery__item">
                            <img class="studio-galery__image"
                                :src="require(`~/assets/img/partnership/1.jpg`)"
                                alt="Фото студии">
                        </div>
                        <div class="studio-galery__item">
                            <img class="studio-galery__image"
                                :src="require(`~/assets/img/partnership/10.jpg`)"
                                alt="Фото студии">
                        </div>
                        <div class="studio-galery__item">
                            <img class="studio-galery__image"
                                :src="require(`~/assets/img/partnership/20.jpg`)"
                                alt="Фото студии">
                        </div>
                        <div class="studio-galery__item">
                            <img class="studio-galery__image"
                                :src="require(`~/assets/img/partnership/30.jpg`)"
                                alt="Фото студии">
                        </div>

                        <template #prevArrow>
                            <div class="studio-galery__arrow studio-galery__arrow-prev">
                                <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M24 2L4 22L24 42" stroke="white" stroke-width="5"/>
                                </svg>
                            </div>
                        </template>

                        <template #nextArrow>
                            <div class="studio-galery__arrow studio-galery__arrow-next">
                                <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M2 2L22 22L2 42" stroke="white" stroke-width="5"/>
                                </svg>
                            </div>
                        </template>

                    </vue-slick-carousel>
                </client-only>
            </div>
        </section>

    </div>

</template>

<script>
import VueSlickCarousel from "vue-slick-carousel";
import 'vue-slick-carousel/dist/vue-slick-carousel.css';

export default {
    head() {
        return {
            'title': 'bestmaster-massage - Сотрудничество',
        }
    },
    name: "partnership",
    components: {
        VueSlickCarousel,
    },
    mounted() {
        this.$refs.video.src = this.$refs.video.getAttribute('data-src');
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
                slidesToShow: 2,
                speed: 400,
                responsive: [
                    {
                        "breakpoint": 1080,
                        "settings": {
                            "slidesToShow": 1,
                        }
                    }
                ]
            },
        }
    },
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-interior-intro{
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
.intro__head{
    &-text{
        text-align: center;
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

.interior-desc{
    padding: 35px 50px 35px 50px;

    &__header, &__bottom{
        font-family: "Oswald", sans-serif;
        color: #FFFFFF;
        font-size: 25px;
    }

    &__bottom{
        text-align: center;
    }
}

.interior-desc-list{
    padding: 0;
    margin: 40px 0 40px 0;

    &__item{
        display: flex;
        align-items: center;
        list-style: none;
        color: variables.$main-fc;
    }

    &__item:not(:last-child){
        margin-bottom: 10px;
    }

    &__dot{
        width: 15px;
        height: 15px;
        margin-right: 20px;
        border-radius: 100%;
        background-color: #FFFFFF;
        display: block;
        box-shadow: 0 0 15px #FFFFFF;
    }

    &__text{
        font-family: "Oswald", sans-serif;
        width: 100%;
        font-size: 20px;
    }

    @media only screen and (min-width: 1140px) {
        width: 900px;
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 900px;
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 600px;
    }
    @media only screen and (max-width: 539px) {
        &__dot{
            margin-right: 15px;
        }

        &__text{
            font-size: 19px;
        }
    }
}

.section-galery{
    padding: 0 0 50px 0;
}
.studio-galery{
    margin-top: 40px;
    position: relative;
    margin-bottom: 80px;
    width: 100%;

    &__item{
        margin: 0 auto;
        display: flex !important;
        align-items: center;
        justify-content: center;
        box-sizing: content-box;
        padding: 20px 0;
    }

    &__image{
        object-fit: contain;
        user-select: none;
        -webkit-user-drag: none;
        box-shadow: 0px 0px 20px 2px rgb(100 100 100);;
    }

    &__arrow{
        position: absolute;
        top: calc(100% + 20px);
        cursor: pointer;
        width: 50px;
        display: flex;
        justify-content: center;

        &-prev{
            left: 35%;
        }

        &-next{
            right: 35%;
        }
    }

    @media only screen and (min-width: 960px) {

        &__item{
            height: 450px;
            width: 450px !important;
        }

        &__image{
            max-width: 450px;
            max-height: 450px;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {

        &__item{
            height: 350px;
            width: 350px !important;
        }

        &__image{
            max-width: 350px;
            max-height: 350px;
        }
    }
    @media only screen and (max-width: 719px) {
        margin-bottom: 100px;
        order: 1;

        &__item{
            height: 350px;
            width: 350px !important;
        }

        &__image{
            max-width: 350px;
            max-height: 350px;
        }
    }
    @media only screen and (max-width: 350px) {
        margin-bottom: 100px;
        order: 1;

        &__item{
            height: 300px;
            width: 300px !important;
        }

        &__image{
            max-width: 300px;
            max-height: 300px;
        }
    }
}

.contact-with-me{
    background-color: #ffffff;
    border: none;
    border-radius: 10px;
    padding: 15px 25px;
    color: #EDC300;
    font-size: 21px;
    font-weight: 300;
    text-decoration: none;
    display: flex;
    flex-direction: row;
    align-items: center;
    text-align: center;
    width: 290px;
    margin: 0 auto;
}

</style>
