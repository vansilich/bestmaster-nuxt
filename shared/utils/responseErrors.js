//if error with authorization
export const is401 = ( error ) => {
    return isErrorWithStatus(error) && error.response.status === 401;
};

export const is403 = ( error ) => {
    return isErrorWithStatus(error) && error.response.status === 403;
};

//if error with validation
export const is422 = ( error ) => {
    return isErrorWithStatus(error) && error.response.status === 422;
};

const isErrorWithStatus = ( err ) => {
    return err.response && err.response.status;
};
