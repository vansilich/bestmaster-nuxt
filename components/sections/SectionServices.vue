<template>

    <section class="wrapper-outer section-services">
        <div class="section-inner">
            <div class="services">

                <a class="services__free-consultations" href="https://t.me/bestmaster_msk" target="_blank"  rel="noopener">
                    <svg class="services__free-consultations__icon" width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
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

                    Бесплатная консультация
                </a>

                <h2 class="services__title section-heading">Услуги</h2>

                <p class="services__info">* - вакуумные банки и тейпирование входят в стоимость.</p>

                <div class="massage services__item" v-for="(item, key, index) in services">
                    <h2 class="massage__title">{{ key }}:</h2>

                    <div class="massage__cards services-cards-grid">
                        <template v-for="service in item">
                            <service-card class="massage__grid-item" v-bind="service"></service-card>
                        </template>
                    </div>
                </div>

            </div>
        </div>
    </section>

</template>
<script>
import ServiceCard from "../ServiceCard";

export default {
    name: "SectionServices",
    components: {
        ServiceCard,
    },
    props: {
        services: {
            type: Object,
            required: true,
        },
    },
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-services {
    margin-top: 30px;
}

.services {
    &__title {
        color: variables.$main-fc;
    }

    &__free-consultations{
        box-sizing: border-box;
        margin: 45px auto;
        display: flex;
        justify-content: center;
        align-items: center;
        width: fit-content;
        text-decoration: underline;
        background-color: #ffffff;
        border: none;
        border-radius: 10px;
        padding: 15px 25px;
        color: #EDC300;
        font-size: 21px;
        font-weight: 500;

        &__icon{
            margin-right: 10px;
        }
    }

    &__info{
        color: #FFFFFF;
        font-size: 20px;
        margin: 20px;
    }

    &__item {
        margin-top: 30px;
        color: variables.$main-fc;
    }
}

.massage {
    &__cards {
        justify-items: center;
    }
}

</style>
