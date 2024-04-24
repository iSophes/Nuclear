document.body.addEventListener("click", e => {
    let link = null;
    let target = e.target;

    while(target != null) {
        if(target.tagName == "A") {
            link = target;
            break;
        } else {
            target = target.parentNode;
        }
    }

    if(link != null) {
        if(link.href.includes("#")) {
            // enable smooth scrolling when clicking on section links
            document.body.parentNode.classList.remove("nuclear-inhibit-smooth-scrolling");
        } else {
            // disable it everywhere else
            document.body.parentNode.classList.add("nuclear-inhibit-smooth-scrolling");
        }
    }
})