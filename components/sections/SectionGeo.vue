<template>
    <section class="wrapper-outer section-reviews">
        <h2 class="section-reviews__title section-heading">Наш адрес</h2>

        <GMap
            ref="gMap"
            language="ru"
            :cluster="{options: {styles: clusterStyle}}"
            :center="{lat: locations[0].lat, lng: locations[0].lng}"
            :options="{fullscreenControl: false}"
            :zoom="17"
        >
            <GMapMarker
                v-for="location in locations"
                :key="location.id"
                :position="{lat: location.lat, lng: location.lng}"
                @click="currentLocation = location"
            >
                <GMapInfoWindow :options="{maxWidth: 200}">
                    Москва, ул. Таганская ул., 26 ст. 1
                </GMapInfoWindow>
            </GMapMarker>
            <GMapCircle :options="circleOptions"/>
        </GMap>
        <p class="how-to address">Москва, ул. Таганская ул., 26 ст. 1</p>
        <p class="how-to guide">Вход со стороны Марксистского переулка (стеклянное крыльцо)</p>

    </section>
</template>

<script>
import GMap from 'nuxt-gmaps/components/GMap.vue';
import GMapMarker from 'nuxt-gmaps/components/GMapMarker.vue';
import GMapInfoWindow from 'nuxt-gmaps/components/GMapInfoWindow.vue';
import GMapCircle from 'nuxt-gmaps/components/GMapCircle.vue';

export default {
    name: "SectionGeo",
    components: {
        GMap,
        GMapMarker,
        GMapInfoWindow,
        GMapCircle,
    },
    data() {
        return {
            currentLocation: {},
            circleOptions: {},
            locations: [
                {
                    lat: 55.7395544,
                    lng: 37.6637599
                },
            ],
            pins: {
                // selected: "data:image/png;base64,iVBORw0KGgo...",
                // notSelected: "data:image/png;base64,iVBORw0KGgo..."
            },
            clusterStyle: [
                {
                    url: "https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m1.png",
                    width: 56,
                    height: 56,
                    textColor: "#fff"
                }
            ]
        }
    },
    mounted() {},
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-reviews{

    &__title{
        color: variables.$main-fc;
        margin: 30px 0;
    }
}

#map{
    width: 100%;
    height: 550px;
}

.how-to{
    color: #FFFFFF;
}

.address{
    margin: 10px 0;
    font-size: 20px;
}

</style>
