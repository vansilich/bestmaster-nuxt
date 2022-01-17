<template>

    <section class="wrapper-outer section-services">
        <div class="section-inner">
            <div class="services">
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
