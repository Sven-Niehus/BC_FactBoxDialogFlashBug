Total = 50;
Remaining = 50;

UpdateTime = 100;

function ClickMe() {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Started', [Total, Remaining]);
    setTimeout(UpdateBC, UpdateTime);
}
function UpdateBC() {
    Remaining--;
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ProgressUpdate', [Total, Remaining]);


    if(Remaining >= 0) {
        setTimeout(UpdateBC, UpdateTime);
    } else {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Finished', null);
    }
}