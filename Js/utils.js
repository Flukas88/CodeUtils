function encodeHTML(s) {
    return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/"/g, '&quot;');
}

String.prototype.trim = function(){ this.replace( /^\s+|\s+$/g, '' ); }

function isIE() {
    return '\v' == 'v';
}

// Example of use readableNumberLimiter(12345678,",");  and I get "12,345,678"
readableNumberLimiter = function (number,limiter)
{
  return number.toString().replace(
     new RegExp(
         "(^\\d{"+(number.toString().length%3||-1)+"})(?=\\d{3})"),
         "$1"+limiter
         ).replace(/(\d{3})(?=\d)/g,"$1"+limiter);
}
