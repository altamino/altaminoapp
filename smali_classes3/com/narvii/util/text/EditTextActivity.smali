.class public Lcom/narvii/util/text/EditTextActivity;
.super Lcom/narvii/app/NVActivity;
.source "EditTextActivity.java"


# instance fields
.field private editText:Lcom/narvii/util/text/MyEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b01e8

    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const v0, 0x7f090b5b

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/text/MyEditText;

    iput-object v0, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    if-nez p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    new-instance v0, Lcom/narvii/util/text/EditTextActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/text/EditTextActivity$1;-><init>(Lcom/narvii/util/text/EditTextActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 56
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    new-instance v0, Lcom/narvii/util/text/EditTextActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/text/EditTextActivity$2;-><init>(Lcom/narvii/util/text/EditTextActivity;)V

    iput-object v0, p1, Lcom/narvii/util/text/MyEditText;->onKeyPreImeListener:Lcom/narvii/util/Callback;

    const-string p1, "title"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string p1, "hint"

    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 77
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    const v2, 0x7f0f0483

    invoke-direct {v1, p0, v2}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 78
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 79
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/narvii/util/text/EditTextActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
