<template>

    <div>

        <div class="bg-repeat">
            <section-about-master></section-about-master>

            <section-activities></section-activities>

            <section-achievements></section-achievements>
        </div>

        <section-diplomas></section-diplomas>

    </div>

</template>

<script>
import SectionAboutMaster from "../components/sections/SectionAboutMaster";
import SectionActivities from "../components/sections/SectionActivities";
import SectionAchievements from "../components/sections/SectionAchievements";
import SectionDiplomas from "../components/sections/SectionDiplomas";

export default {
    head() {
        return {
            'title': 'bestmaster-massage - О мастере',

            'description': 'Массаж в нашем салоне выполняет Дмитрий Бесхлебнов - ' +
                'специалист, входящий в ТОП-5 лучших массажистов России',
        }
    },
    components: {
        SectionAboutMaster,
        SectionActivities,
        SectionAchievements,
        SectionDiplomas,
    },
    name: "about-master",
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.bg-repeat{
    background-image: url("~/assets/img/bg-repeat.png");
    background-size: 760px;
}

</style>
