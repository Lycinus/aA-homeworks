function simpleSetTimeout() {
    window.setTimeout(() => alert('HAMMERTIME'), 5000)
}

hammertime = time => {
    window.setTimeout(() => alert(`${time} is hammertime!`), 5000)
}