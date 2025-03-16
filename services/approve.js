const db = require('./db');
const soapRequest = require('easy-soap-request');
const dotenv = require('dotenv');

const url = 'http://host.docker.internal:4444/ws/Subscription';
const sampleHeaders = {
    'user-agent': 'someone',
    'Content-Type': 'text/xml;charset=UTF-8',
};

dotenv.config()
const header = '<Header><KEY>' + process.env.APIKEY + '</KEY></Header>'

async function approval(artistId, userId, status) {
    // request soap di sini    
    console.log("CREATOR: " + artistId + "\nSUBS: " + userId + "\n")
    const xml = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/">' + header + '<Body><approval xmlns="http://ws/"><creator_id xmlns="">' + String(artistId) + '</creator_id><user_id xmlns="">' + String(userId) + '</user_id><status xmlns="">' + status + '</status></approval></Body></Envelope>'
    const { response } = await soapRequest({ url: url, headers: sampleHeaders, xml: xml, timeout: 10000 }); // Optional timeout parameter(milliseconds)
    const { headers, body, statusCode } = response;
    console.log("KONTOL\n" + xml);
    return body;
    
}

module.exports = {
    approval
}