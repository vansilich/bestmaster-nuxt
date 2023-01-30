<template>
    <div class="page">
        <header class="section-header">
            <div class="section-inner">
                <nav class="header-nav section-inner__top-nav">

                    <div class="header-nav__item">
                        <button class="header-nav__menu header-menu" ref="menuBtn" @click="toggleMenu"
                                :class="{'active': showMenu, 'closed': !showMenu}">
                            <svg class="header-menu__icon" :class="{'active': showMenu, 'closed': !showMenu}" width="12" height="17" viewBox="0 0 12 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M1 17L0.999999 4.76837e-07M6 17L6 2.5828e-07M11 17L11 3.97233e-08"
                                      stroke="white"
                                      stroke-width="2"/>
                            </svg>
                            <span class="header-menu__text">Меню</span>
                        </button>

                        <transition name="fade">
                            <div class="overlay" ref="overlay" v-if="showMenu" @click="toggleMenu">
                                <div class="main-menu" @click.stop>

                                    <button class="main-menu__close" @click="toggleMenu">
                                        <svg class="main-menu__close-icon" width="15" height="15" viewBox="0 0 27 27"
                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M2 2L25 25M2 25L25 2" stroke="white" stroke-width="5"/>
                                        </svg>
                                    </button>

                                    <ul class="menu-wrapper">
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="/" class="menu-link">
                                                Главная
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="about-master" class="menu-link">
                                                Обо мне
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="services" class="menu-link">
                                                Услуги
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="interior" class="menu-link">
                                                Интерьер
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="promotions" class="menu-link">
                                                Акции
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="certificates" class="menu-link">
                                                Сертификаты
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="contacts" class="menu-link">
                                                Контакты
                                            </nuxt-link>
                                        </li>
                                        <li class="menu-wrapper__item" @click="toggleMenu">
                                            <nuxt-link to="partnership" class="menu-link">
                                                Сотрудничество
                                            </nuxt-link>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </transition>
                    </div>

                    <nuxt-link class="header-nav__item" to="/" @click.native="closeMenu">
                        <img class="header-nav__logo-img" src="~/assets/img/crown-logo.png" alt="bestmaster-massage.ru">
                    </nuxt-link>

                    <nuxt-link to="promotions" class="header-nav__item promotions">
                        Акции
                    </nuxt-link>
                </nav>
            </div>
        </header>

        <main class="container">
            <Nuxt/>
        </main>

        <footer class="wrapper-outer section-footer page__footer">
            <div class="section-inner">

                <div class="footer">
                    <nav class="footer-nav section-inner__footer-nav">

                        <nuxt-link to="/" class="footer-nav__link">
                            Главная
                        </nuxt-link>
                        <nuxt-link to="about-master" class="footer-nav__link">
                            Обо мне
                        </nuxt-link>
                        <nuxt-link to="services" class="footer-nav__link">
                            Услуги
                        </nuxt-link>
                        <nuxt-link to="promotions" class="footer-nav__link">
                            Акции
                        </nuxt-link>
                        <nuxt-link to="certificates" class="footer-nav__link">
                            Сертификаты
                        </nuxt-link>
                        <nuxt-link to="contacts" class="footer-nav__link">
                            Контакты
                        </nuxt-link>

                    </nav>

                    <nav class="footer-docs">
                        <nuxt-link to="terms" class="footer-nav__link">
                            Пользовательское соглашение
                        </nuxt-link>
                        <nuxt-link to="privacy" class="footer-nav__link">
                            Политика конфиденциальности
                        </nuxt-link>
                    </nav>
                </div>
            </div>
        </footer>
    </div>
</template>

<script>

import ogImage from '~/assets/img/meta/og-image.jpg'

export default {
    layout: "default",
    head () {
        const base_url = this.$config.base_url;
        const canonical = `${base_url}${this.$route.path.toLowerCase().replace(/\/$/, '')}`
        return {
            meta: [
                ...this.meta
            ],
            scripts: [
                // { src: 'https://markknol.github.io/console-log-viewer/console-log-viewer.js' }
            ],
            link: [{ rel: 'canonical', href: canonical }]
        }
    },
    data() {
        return {
            showMenu: false,
        }
    },
    methods: {
        toggleMenu() {
            this.showMenu = !this.showMenu;

            const body = document.querySelector('body');

            if (this.showMenu) {
                body.style.overflow = 'hidden';
            } else {
                body.style.overflow = 'auto';
            }

            this.$nextTick(() => {
                const headerNavRect = this.$refs.menuBtn.getBoundingClientRect();

                if (this.$refs.overlay){
                    this.$refs.overlay.style.top = headerNavRect.height + headerNavRect.top + 'px';
                    this.$refs.overlay.style.top = headerNavRect.height + headerNavRect.top + 'px';
                }
            })
        },
        closeMenu() {
            this.showMenu = false;
            document.querySelector('body').style.overflow = 'auto';
        },
    },
    computed: {
        meta () {
            return [
                { charset: 'utf-8' },
                {
                    name: 'viewport',
                    content: 'width=device-width, initial-scale=1, maximum-scale=1 shrink-to-fit=no'
                },
                { hid: 'description', name: 'description', content: 'Главная' },
                { hid: 'og:image', property: 'og:image', content: this.$config.base_url + ogImage }
            ]
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.page {
    &__footer {
        border-top: 1px solid #FFFFFF;
        margin: 100px 0 30px 0;
    }
}

.section-inner {

    &__top-nav {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    @media only screen and (min-width: 1140px) {
        &__top-nav {
            height: variables.$xl-header-height;
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        &__top-nav {
            height: variables.$l-header-height;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        &__top-nav {
            height: variables.$m-header-height;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        &__top-nav {
            height: variables.$s-header-height;
        }
    }
    @media only screen and (max-width: 539px) {
        &__top-nav {
            height: variables.$xs-header-height;
        }
    }
}

.header-nav {
    color: variables.$main-fc;

    &__item{
        position: relative;
        width: 100px;
        display: flex;
        justify-content: center;
    }

    &__menu {
        display: flex;
        align-items: center;
        padding: 0 10px;
        transition: background-color .4s linear;

        &.active{
            background-color: #EBC100;
        }
        &.closed{
            background-color: transparent;
        }
    }

    &__logo-img {
        -webkit-transform: translate3d(0, 0px, 5px);
        position: relative;
        filter: drop-shadow(0 5px 10px rgba(255, 255, 255, 0.5));
        z-index: 1000;
    }

    @media only screen and (min-width: 1140px) {
        &__item{
            height: variables.$xl-header-height;
        }

        &__menu {
            height: variables.$xl-header-height;
        }

        &__logo-img {
            width: variables.$xl-header-height;
            height: variables.$xl-header-height;
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        &__item{
            height: variables.$l-header-height;
        }

        &__menu {
            height: variables.$l-header-height;
        }

        &__logo-img {
            width: variables.$l-header-height;
            height: variables.$l-header-height;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        &__item{
            height: variables.$m-header-height;
        }

        &__menu {
            height: variables.$m-header-height;
        }

        &__logo-img {
            width: variables.$m-header-height;
            height: variables.$m-header-height;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        &__item{
            height: variables.$s-header-height;
        }

        &__menu {
            height: variables.$s-header-height;
        }

        &__logo-img {
            width: variables.$s-header-height;
            height: variables.$s-header-height;
        }
    }
    @media only screen and (max-width: 539px) {
        &__item{
            height: variables.$xs-header-height;
        }

        &__menu {
            height: variables.$xs-header-height;
        }

        &__logo-img {
            width: variables.$xs-header-height;
            height: variables.$xs-header-height;
        }
    }
}

.header-menu {
    -webkit-transform: translate3d(0, 0px, 20px);
    background: none;
    border: none;
    color: variables.$main-fc;
    cursor: pointer;

    &__text {
        margin-left: 7px;
    }

    &__icon{
        will-change: transform;

        &.active{
            animation-duration: .4s;
            animation-fill-mode: forwards;
            animation-name: menuRotate;
        }
        &.closed{
            animation-duration: .4s;
            animation-fill-mode: forwards;
            animation-name: menuRotateReverse;
        }
    }
}

@keyframes menuRotate {
    50%{
        transform: rotate(90deg) rotateX(90deg);
    }
    100%{
        transform: rotate(90deg) rotateY(0deg);
    }
}
@keyframes menuRotateReverse {
    0%{
        transform: rotate(90deg);
    }
    50%{
        transform: rotateY(90deg);
    }
}

.footer{
    display: flex;
    justify-content: space-between;
    margin-top: 30px;

    @media only screen and (max-width: 539px) {
        flex-direction: column;
    }
}

.footer-nav {
    display: flex;
    flex-direction: column;

    &__link {
        display: block;
        margin-top: 10px;
        color: #FFFFFF;
    }
}

.footer-docs{

    @media only screen and (max-width: 539px) {
        margin-top: 30px;
    }
}

.fade-enter-active,
.fade-leave-active {
    opacity: 1;
    transition: all 0.2s ease;
}

.fade-enter,
.fade-leave-to {
    opacity: 0;
}

.overlay {
    -webkit-transform: translate3d(0, 0px, 20px);
    position: fixed;
    left: 0;
    bottom: 0;
    right: 0;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 1000;
}

.main-menu {
    left: 0;
    position: absolute;
    background-image: url("~/assets/img/bg-repeat.png");
    background-size: 470px;
    z-index: 101;
    height: 100%;
    box-shadow: 0 0 17px 17px rgb(34 60 80 / 18%);
    overflow-y: scroll;

    &__close{
        background-color: #EBC100;
        position: absolute;
        right: 0;
        width: 40px;
        height: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 0 0 0 10px;
        border: none;
        cursor: pointer;
        transition: background-color .05s linear;

        &:hover{
            background-color: darken(#EBC100, 10%);
        }
    }

    &__close-icon{
        display: block;
    }

    @media only screen and (min-width: 1140px) {
        width: 400px;
    }
    @media only screen and (max-width: 1140px) and (min-width: 960px) {
        width: 400px;
    }
    @media only screen and (max-width: 960px) and (min-width: 720px) {
        width: 400px;
    }
    @media only screen and (max-width: 720px) and (min-width: 540px) {
        width: 400px;
    }
    @media only screen and (max-width: 540px) {
        width: 100vw;
    }
}

.menu-wrapper {
    margin: 0;
    padding: 70px 0 0 0;
    height: 100%;
    display: flex;
    flex-direction: column;

    &__item {
        list-style: none;
        padding-top: 5px;
    }
}

.menu-link{
    display: block;
    color: #ffffff;
    font-size: 20px;
    font-family: 'Oswald', sans-serif;
    padding: 10px 0 10px 40px;
    transition: all 50ms linear;
    text-decoration: none;

    &:hover{
        color: #000000;
        background-color: #ffffff;
    }
}

.promotions{
    background-color: #fff;
    color: variables.$third-fc;
    text-decoration: none;
    align-items: center;
}

</style>
