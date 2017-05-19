/**
 * Created by yibeel on 2017/5/10.
 */

/**
var http = new XMLHttpRequest();

http.open('GET','../../restful/index.php/messages/1/1');

http.setRequestHeader('Content-Type','application/json');

http.send(null);
*/
/*

function postMessage(mes){
    var request = new XMLHttpRequest();
    request.open('POST','/log.php');
    request.setRequestHeader('Content-Type','text/plain;charset=utf-8');
    request.send(mes);
}

function getText(url,callback){
    var request = new XMLHttpRequest();
    request.open("GET",url);
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            var type = request.getResponseHeader("Content-Type");
            if(type.match('application/json')){
                callback(request.responseText);
            }
        }
    }
    request.send(null);
}

function postText(url,data, callbalck){
    var request = new XMLHttpRequest();
    request.open("POST",url);
    request.onreadystatechange = function(){
        if(request.readyState ==4 && callback){
            callback(request);
        }
    };
    request.setRequestHeader("Content-Type","application/json");
    request.send(JSON.stringify(data));
}

*/

var EventEmitter = process.EventEmitter;
Myclass = function(){};

Myclass.prototype.__proto__ = EventEmitter.prototype;

var a = new Myclass();

a.on('haha',function(){
})











