var iframe = window.frameElement;

iframe.parentElement.style.display = 'flex';
iframe.parentElement.style.flexDirection = 'column';
iframe.parentElement.style.flexGrow = '1';

iframe.style.removeProperty('height');
iframe.style.removeProperty('min-height');
iframe.style.removeProperty('max-height');

iframe.style.flexGrow = '1';
iframe.style.flexShrink = '1';
iframe.style.flexBasis = 'auto';

iframe.style.height = '100px';
iframe.style.width = '100%';

iframe.scroll = false;

$(document).ready(function () {
    window.navControlContainer = $("#controlAddIn");

    var html = '';

    html += '<button type="button" onClick="ClickMe()">Click me!</button>';
    window.navControlContainer.append(html);

    console.log("ControlAddIn Loaded!");
});