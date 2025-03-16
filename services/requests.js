const db = require('./db');
const soap = require('./soap');

async function get() {
    var response = await soap.soapGetRequests()
    var parseString = require('xml2js').parseString;
    var xml = response
    var res
    await parseString(xml, function (err, result) {
        let envelope = result['S:Envelope']
        let body = envelope['S:Body'][0]
        let response = body['ns2:getAllReqResponse'][0]
        let ret = response['return']

        res = ret
    });

    return res
}

module.exports = {
    get
}