.class public Lcom/narvii/util/text/EditTextActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# instance fields
.field private editText:Lcom/narvii/util/text/MyEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "text"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 28
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0207

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0e51

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/util/text/MyEditText;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    .line 25
    const-string/jumbo p1, "text"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/util/text/EditTextActivity$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/util/text/EditTextActivity$1;-><init>(Lcom/narvii/util/text/EditTextActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/util/text/EditTextActivity$2;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/narvii/util/text/EditTextActivity$2;-><init>(Lcom/narvii/util/text/EditTextActivity;)V

    .line 55
    .line 56
    iput-object v0, p1, Lcom/narvii/util/text/MyEditText;->onKeyPreImeListener:Lcom/narvii/util/Callback;

    .line 57
    .line 58
    .line 59
    const-string/jumbo p1, "title"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    :cond_1
    const-string p1, "hint"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/util/text/EditTextActivity;->editText:Lcom/narvii/util/text/MyEditText;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x104000a

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 11
    .line 12
    .line 13
    const v2, 0x7f12052e

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/text/EditTextActivity;->finish()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method
