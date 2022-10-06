function checkOnlyEnglishNumber (objName, pattern, nullAllowedNy, message) {
// checkOnlyEnglishNumber = function(obj, value, message) {
    var regExp = /^[A-Za-z0-9]+$/;
    return checkLogic (objName, pattern, nullAllowedNy, message, regExp);
}