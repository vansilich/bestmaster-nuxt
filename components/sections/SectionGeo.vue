<template>
    <section class="wrapper-outer section-reviews">
        <h2 class="section-reviews__title section-heading">Наш адрес</h2>

        <div id="map" ref="map">
        </div>

        <p class="how-to address">Москва, Марксистская улица, 7</p>

    </section>
</template>

<script>

export default {
    name: "SectionGeo",
    head() {
        return {
            script: [
                {
                    hid: 'ymaps',
                    src: this.ymapsScriptSrc(),
                    defer: true,
                },
            ]
        }
    },
    data() {
        return {
            coords: [55.736311, 37.666144],
            lang: 'ru_RU',
            mapInstance: null,
        }
    },
    mounted() {
        let count = 0;
        let awaitYmaps = setInterval(() => {
            count++;

            if (window.ymaps !== undefined && window.ymaps.ready !== undefined) {

                clearInterval(awaitYmaps);
                window.ymaps.ready( this.initMaps );
            }
            
            if(count > 5){
                clearInterval(awaitYmaps);
            }
        }, 200);
    },
    beforeDestroy() {
        if(window.ymaps !== undefined){
            this.mapInstance.destroy();
        }
    },
    methods: {
        initMaps(){
            this.mapInstance = new window.ymaps.Map( this.$refs.map, {
                center: this.coords,
                zoom: 18
            });

            this.mapInstance.geoObjects
                .add(new window.ymaps.Placemark(this.coords, {
                    balloonContent: 'Москва, Марксистская улица, 7'
                }, {
                    preset: 'islands#redIcon',
                }))
        },
        ymapsScriptSrc(){
            const url = new URL('https://api-maps.yandex.ru/2.1');
            url.searchParams.append('apikey', this.$config.YANDEX_MAP_KEY);
            url.searchParams.append('lang', this.lang);

            return url.toString();
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-reviews{
    padding: 30px 0;

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
