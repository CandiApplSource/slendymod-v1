function create() introLength = 0;
function postCreate() {
    var darkShader:CustomShader = new CustomShader("Field", 330);
    darkShader.reduction = 0.25;
    dad.shader = darkShader;
    iconP2.shader = darkShader;
    boyfriend.shader = darkShader; //cuz blendmode doesnt wanna work today.
    iconP1.shader = darkShader;

    iconP1.visible = iconP2.visible = healthBarBG.visible = healthBar.visible = false;

    missesTxt.x -= 570;
    scoreTxt.alignment = "LEFT";
    scoreTxt.x -= 200;
    accuracyTxt.x -= 50;
}

function postUpdate(elapsed){
    missesTxt.text = 'Misses: $misses';
    accuracyTxt.text = 'Accuracy: ${accuracy < 0 ? "-%" : '${CoolUtil.quantize(accuracy * 100, 100)}%'}';
}

function onNoteCreation(e) e.noteSprite = "noteskinnormal";
function onStrumCreation(e){
    e.cancelAnimation();
    e.sprite = "noteskinnormal";
    e.strum.y+=50;
    e.strum.x+=155;
}