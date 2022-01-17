export default {

    //in props{} or data() must be declared 'errors' property

    methods: {
        errorFor(field) {
            return null !== this.errors && this.errors[field]
                ? this.errors[field]
                : null;
        },
    }
};
