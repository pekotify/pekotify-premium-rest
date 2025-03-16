const soapRequest = require('easy-soap-request');
const fs = require('fs');
const dotenv = require('dotenv');

dotenv.config();

// example data
const url = 'http://soap-web/ws/Subscription';
const sampleHeaders = {
    'user-agent': 'someone',
    'Content-Type': 'text/xml;charset=UTF-8',
};
const header = '<Header><KEY>' + process.env.APIKEY + '</KEY></Header>'
// usage of module
async function soapUserSongs(userId, singerId) {
    const xml = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/">' + header + '<Body><getStatus xmlns="http://ws/"><creator_id xmlns="">' + String(singerId) + '</creator_id><user_id xmlns="">' + String(userId) + '</user_id></getStatus></Body></Envelope>'
    const { response } = await soapRequest({ url: url, headers: sampleHeaders, xml: xml, timeout: 10000 }); // Optional timeout parameter(milliseconds)
    const { headers, body, statusCode } = response;
    return body;
};

async function soapGetRequests() {
    const xml = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/">' + header + '<Body><getAllReq xmlns="http://ws/"></getAllReq></Body></Envelope>'
    const { response } = await soapRequest({ url: url, headers: sampleHeaders, xml: xml, timeout: 10000 }); // Optional timeout parameter(milliseconds)
    const { headers, body, statusCode } = response;
    return body;
};

module.exports = { soapUserSongs, soapGetRequests };