WebAssembly.instantiateStreaming(fetch('factorial.wasm').then(result=>{
    console.log(result.instance.exports.factorial(4));
});
