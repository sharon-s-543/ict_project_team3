function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tab-content");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tab-btn");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    if (evt) {
        evt.currentTarget.className += " active";
    } else {
        document.getElementById("btn-" + tabName).className += " active";
    }
}

//  Run automatically on page load to preserve position
window.onload = function() {
    var serverActiveTab = "{{ active_tab }}";
    openTab(null, serverActiveTab);
};
