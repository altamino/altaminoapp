.class public Lcom/narvii/widget/InputDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# instance fields
.field public edit:Landroid/widget/EditText;

.field public edit2:Landroid/widget/EditText;

.field public editLimit:I

.field public error:Landroid/widget/TextView;

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/widget/InputDialog$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/widget/InputDialog$1;-><init>(Lcom/narvii/widget/InputDialog;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->layoutId()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 21
    .line 22
    sget p1, Lcom/narvii/lib/R$id;->edit:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/widget/EditText;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 31
    .line 32
    sget p1, Lcom/narvii/lib/R$id;->edit_2:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroid/widget/EditText;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 41
    .line 42
    sget p1, Lcom/narvii/lib/R$id;->error:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    .line 72
    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    .line 8
    return-object p1
.end method

.method protected allowEditEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enableActionButton(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method protected layoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_input_url:I

    return v0
.end method

.method protected updateActionButtonStatus()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_2

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->allowEditEmpty()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v1

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    if-eq v1, v2, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    :cond_3
    const/4 v1, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/InputDialog;->enableActionButton(Landroid/view/View;Z)V

    .line 83
    :cond_5
    :goto_2
    return-void
.end method
