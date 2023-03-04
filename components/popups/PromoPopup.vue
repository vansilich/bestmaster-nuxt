<template>

    <div ref="overlay" class="popup-overlay" :class="{'hidden': !isOpen}" @click="$nuxt.$emit('closePopup')">
        <div class="popup" @click.stop>
            <div class="popup__content">

                <div class="popup__close" @click="$nuxt.$emit('closePopup')">
                    <svg width="15" height="15" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2 2L25 25M2 25L25 2" stroke="white" stroke-width="5"/>
                    </svg>
                </div>

                <div class="body" v-if="!isRequestSend" ref="body">
                    <h2 class="body__title">{{ activeStock.title }}</h2>

                    <h2 class="after-submit" v-if="errors.massage">
                        {{ errors.massage }}
                    </h2>

                    <div class="form">
                        <p class="form__description">
                            Заполните, пожалуйста, данные ниже, чтобы мы могли связаться с вами и выдать вам купон.
                        </p>

                        <div class="form__item">
                            <label class="form__label" for="name">Имя:</label>
                            <input class="form__input" id="name" type="text" v-model.trim="customer.name"
                                   :class="[{ 'error': errorFor('customer.name') }]"
                                   @input="$nuxt.$emit('removeError', 'customer.name')">
                        </div>
                        <validation-errors :errors="errorFor('customer.name')" style="color: #000000; margin: 10px 0;"></validation-errors>

                        <div class="form__item">
                            <label class="form__label" for="phone">Телефон:</label>
                            <input class="form__input" id="phone" type="tel" v-model.trim="customer.phone"
                                   :class="[{ 'error': errorFor('customer.phone') }]"
                                   @input="$nuxt.$emit('removeError', 'customer.phone')">
                        </div>
                        <validation-errors :errors="errorFor('customer.phone')" style="color: #000000; margin: 10px 0;"></validation-errors>

                        <button class="form__submit" @click="submit">
                            отправить
                        </button>

                        <p class="form__policy">
                            Нажимая на кнопку "отправить", вы принимаете
                            <nuxt-link to="/privacy" style="color: #000000">
                                политику конфиденциальности
                            </nuxt-link>
                            и
                            <nuxt-link to="/terms" style="color: #000000">
                                пользовательское соглашение
                            </nuxt-link>
                        </p>

                    </div>
                </div>

                <h2 class="after-submit" v-if="isRequestSend">
                    Спасибо за заказ! <br>
                    Мы свяжемся с вами как можно скорее.
                </h2>
            </div>
        </div>
    </div>

</template>

<script>

import validationErrors from "../../shared/mixins/validationErrors";
import ValidationErrors from "../../shared/components/ValidationErrors"

export default {
    name: "PromoPopup",
    components: {
        ValidationErrors
    },
    mixins: [
        validationErrors
    ],
    props: {
        isOpen: {
            type: Boolean,
            required: true,
        },
        activeStock: {
            type: Object,
            required: true,
        },
        errors: {
            type: Object,
            required: true,
        },
        isRequestSend: {
            type: Boolean,
            required: true,
        }
    },
    data() {
        return {
            customer: {
                name: '',
                phone: '',
            }
        }
    },
    methods: {
        submit() {
            this.$nuxt.$emit('sendRequest', this.activeStock.id, this.customer)
        }
    },
    watch: {
        isOpen() {
            this.$nextTick( () => {
                if (this.isOpen) {
                    document.querySelector('body').style.overflow = 'hidden'
                }
                else {
                    document.querySelector('body').style.overflow = 'auto'
                }
            });
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.popup {
    background-color: white;
    border-radius: 10px;
}

.body{
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px 0;

    &__title{
        width: 200px;
        text-align: center;
        margin-bottom: 50px;
    }
}

.form{

    &__description{
        font-size: 19px;
    }

    &__item{
        display: flex;
        margin-top: 15px;
    }

    &__input{
        border: 2px solid #EBC100;
        filter: drop-shadow(0px 0px 10px rgba(0, 0, 0, 0.1));
        border-radius: 10px;
        height: 50px;
        width: 560px;
    }

    &__input.error{
        border: none;
        filter: drop-shadow(0px 0px 10px variables.$error-color);
    }

    &__label{
        font-size: 19px;
    }

    &__submit{
        background-color: #EBC100;
        border-radius: 10px;
        border: none;
        color: #FFFFFF;
        padding: 7px 20px;
        font-size: 19px;
        margin: 25px auto 30px auto;
        display: block;
        cursor: pointer;
    }

    &__policy{
        text-align: center;
    }

    @media only screen and (min-width: 540px) {
        &__item{
            align-items: center;
            justify-content: space-between;
        }
    }
    @media only screen and (min-width: 1140px) {
        width: 700px;
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 700px;
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 620px;

        &__input{
            width: 480px;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        width: 500px;

        &__input{
            width: 380px;
        }
    }
    @media only screen and (max-width: 539px) {
        width: 95%;

        &__item{
            flex-direction: column;
        }

        &__input{
            width: 100%;
        }
    }
}

.after-submit{
    text-align: center;
    padding: 50px 0;
}

</style>
