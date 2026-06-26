.class public Lcom/narvii/widget/InputDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "InputDialog.java"


# instance fields
.field public edit:Landroid/widget/EditText;

.field public edit2:Landroid/widget/EditText;

.field public editLimit:I

.field public error:Landroid/widget/TextView;

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 26
    new-instance p1, Lcom/narvii/widget/InputDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/InputDialog$1;-><init>(Lcom/narvii/widget/InputDialog;)V

    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    .line 55
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->layoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 56
    sget p1, Lcom/narvii/lib/R$id;->edit:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 57
    sget p1, Lcom/narvii/lib/R$id;->edit_2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    .line 58
    sget p1, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    .line 59
    iget-object p1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    return-object p1
.end method

.method protected allowEditEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enableActionButton(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected layoutId()I
    .locals 1

    .line 69
    sget v0, Lcom/narvii/lib/R$layout;->dialog_input_url:I

    return v0
.end method

.method protected updateActionButtonStatus()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    if-nez v1, :cond_1

    goto :goto_2

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/InputDialog;->allowEditEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/narvii/widget/InputDialog;->edit2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 93
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/narvii/widget/InputDialog;->enableActionButton(Landroid/view/View;Z)V

    :cond_6
    :goto_2
    return-void
.end method
