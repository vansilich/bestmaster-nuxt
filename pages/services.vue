<template>

    <div>
        <section class="wrapper-outer pre-content">
            <div class="section-inner">
                <h3 class="pre-content__text">
                    Здесь Вы сможете подобрать для себя как лечебно-профилактический массаж, так и другие оздоровительные техники.
                    Но после любого сеанса Вы сразу почувствуете себя здоровыми и красивыми!
                    Если у Вас остались вопросы, Вы всегда можете
                    <nuxt-link to="contacts" class="pre-content__link">связаться со мной.</nuxt-link>
                </h3>
            </div>
        </section>

        <section-services :services="services"></section-services>

        <section class="section-stretching-intro">
            <div class="intro-wrapper">

                <div class="intro">

                    <div class="intro__text">
                        <h1 class="intro__head-text">
                            Я за<br>
                            комплексный<br>
                            подход
                        </h1>

                        <h3 class="intro__desc-text">
                            Именно поэтому каждому клиенту я советую дополнительно заниматься гимнастикой.
                            Приходите на сеанс и я подберу для вас оптимальный комплекс упражнений.
                        </h3>
                    </div>

                    <video ref="video" class="intro__video"
                           :poster="require('~/assets/img/posters/StretchingIntro.jpg')"
                           :data-src="require('~/assets/video/StretchingIntro.mp4')"
                           loop muted autoplay playsinline
                    ></video>

                </div>
            </div>
        </section>    </div>

</template>

<script>
import SectionServices from "../components/sections/SectionServices";

export default {
    name: "services",
    head() {
        return {
            'title': 'bestmaster-massage - Услуги',

            'description': 'Мы предоставляем широкий спектр услуг лечебно-профилактического массажа и техник восстановления.' +
                'Здесь вы сможете ознакомится со всеми видами и ценами сеансов нашего салона.'
        }
    },
    fetchKey: 'servicesPage',
    async fetch() {
        const services = await this.$axios.get('/api/services/all');

        let data = {};
        (services.data.data).map( item => {

            let category = item.category_name.toUpperCase();
            data[ category ] = data[ category ] !== undefined ? data[ category ] : [];

            data[ category ].push( item );
        });

        this.services = data;
    },
    components: {
        SectionServices,
    },
    data() {
        return {
            services: {}
        }
    },
    mounted() {
        this.$refs.video.src = this.$refs.video.getAttribute('data-src');
    },
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.pre-content{

    &__text{
        text-align: center;
        color: #FFFFFF;
    }

    &__link{
        color: #FFFFFF;
        text-decoration: underline;
    }

    @media only screen and (max-width: 719px) {
        &__text{
            font-size: 20px;
            line-height: 29px;
        }
    }
}

.section-stretching-intro{
    background-image: url("~/assets/img/bg-repeat.png");
    background-size: 760px;
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

</style>
