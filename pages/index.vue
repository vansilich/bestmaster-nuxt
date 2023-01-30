<template>
    <div class="main-page">
        <section-intro></section-intro>

        <section-services :services="services"></section-services>

        <section class="section-not-that-all">
            <p class="section-not-that-all__text">
                Это далеко не всё, что мы можем вам предложить! <br>
            </p>

            <nuxt-link class="all-services-link" to="services">
                Все услуги
            </nuxt-link>
        </section>

        <section-reviews></section-reviews>

        <section-about-master></section-about-master>

        <section-diplomas></section-diplomas>

        <section-geo></section-geo>
    </div>
</template>

<script>
import SectionIntro from "../components/sections/SectionIntro";
import SectionServices from "../components/sections/SectionServices";
import SectionReviews from "../components/sections/SectionReviews";
import SectionAboutMaster from "../components/sections/SectionAboutMaster";
import SectionDiplomas from "../components/sections/SectionDiplomas";
import SectionGeo from "../components/sections/SectionGeo";

export default {
    name: "index",
    head() {
        return {
            'title': 'bestmaster-massage - Студия массажа и реабилитации в Москве',

            'description': 'Лечебно-профилактический, антицеллюлитный, массаж лица и другие виды массажа для вас! ' +
                'Также мы предоставляем услуги по восстановлению.',
        }
    },
    fetchKey: 'indexPage',
    async fetch() {
        const services = await this.$axios.get('/api/services/index-page');

        let data = {};
        (services.data.data).map( item => {

            let category = item.category_name.toUpperCase();
            data[ category ] = data[ category ] !== undefined ? data[ category ] : [];

            data[ category ].push( item );
        });

        this.services = data;
    },
    components:{
        SectionReviews,
        SectionServices,
        SectionIntro,
        SectionAboutMaster,
        SectionDiplomas,
        SectionGeo,
    },
    data() {
        return {
            services: {}
        }
    },
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.main-page{
    background-image: url("~/assets/img/bg-repeat.png");
    background-size: 760px;
}

.section-not-that-all{
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;

    &__text{
        color: #FFFFFF;
        font-size: 20px;
        text-align: center;
        margin: 10px 0;

    }
}

.all-services-link{
    background-color: #ffffff;
    border: none;
    border-radius: 10px;
    padding: 10px 25px;
    color: variables.$third-fc;
    font-size: 20px;
    font-weight: 300;
    text-decoration: underline;
}

</style>
