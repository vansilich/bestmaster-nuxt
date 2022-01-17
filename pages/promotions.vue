<template>

    <section class="wrapper-outer section-stocks">

        <promo-popup ref="popup"
            :is-open="isPopupOpen"
            :active-stock="activeStock"
            :errors="errors"
            :isRequestSend="isRequestSend">
        </promo-popup>

        <div class="section-inner">
            <h2 class="section-services__title section-heading">Акции</h2>

            <div class="stocks stocks-cards-grid">

                <div class="stocks__item" v-for="stock in stocks" :key="stock.id">
                    <coupon-card v-bind="stock"></coupon-card>
                </div>

            </div>
        </div>
    </section>

</template>

<script>
import PromoPopup from "../components/popups/PromoPopup";
import CouponCard from "../components/CouponCard";
import {is422} from "~/shared/utils/responseErrors";

export default {
    head() {
        return {
            'title': 'bestmaster-massage - Акции',

            'description': 'Мы хотим, чтобы наши клиенты были довольны не только качественными услугами, но и ценами.' +
                'В этом разделе собраны все акции на услуги массажа и восстановления.',
        }
    },
    fetchKey: 'promotionsPage',
    async fetch() {
        this.stocks = (await this.$axios.get('/promotions/all')).data;
    },
    name: "coupons",
    components: {
        CouponCard,
        PromoPopup,
    },
    mounted() {
        this.$nuxt.$on('removeError', this.removeError);
        this.$nuxt.$on('purchaseStock', this.togglePopup);
        this.$nuxt.$on('sendRequest', this.sendRequest);
        this.$nuxt.$on('closePopup', this.togglePopup);
    },
    data() {
        return {
            isPopupOpen: false,
            isRequestSend: false,
            errors: {},
            stocks: [],
            activeStock: {},
        }
    },
    methods: {
        removeError(field) {
            this.errors[field] = null;
        },
        async sendRequest( id, customer ) {
            try {

                await this.$axios.$post('/promotions/purchase', {id, customer});
                this.errors = {};
                this.isRequestSend = true;

            } catch (err) {
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

                this.stocks.map( item => {
                    if (item.id === id) {
                        this.activeStock = item;
                    }
                });

            }
            else {
                this.activeStock = {};
            }

        },

    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-inner{

    @media only screen and (max-width: 539px) {
        margin: 0;
    }
}

.section-services{

    &__title{
        color: variables.$main-fc;
        margin: 30px 0;
    }
}

.stocks{
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

</style>
