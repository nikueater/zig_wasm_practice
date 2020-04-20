const lib = import('./lib.wasm');
var gcd;



window.addEventListener('load', () => {
    const button = document.getElementById('Exe')
    button.addEventListener('click', () => {
        const a = document.getElementById('A')
        const b = document.getElementById('B')
        const ans = document.getElementById('Gcd')
        ans.value = gcd(a.value, b.value)
    })

    lib.then((r) => {
        gcd = r.gcd 
        button.click()
    });
})

