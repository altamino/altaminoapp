.class public Lcom/narvii/util/dialog/RequestDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "RequestDialog.java"


# static fields
.field private static final DEFAULT_MAX_COUNT:I = 0x64


# instance fields
.field public editText:Landroid/widget/EditText;

.field public maxCount:I

.field public progressBar:Landroid/widget/ProgressBar;

.field public tvCountHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 23
    iput p1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 27
    sget p1, Lcom/narvii/lib/R$layout;->community_request_dialog:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/narvii/lib/R$id;->request_progress:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    sget p1, Lcom/narvii/lib/R$id;->request_edit:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 30
    sget p1, Lcom/narvii/lib/R$id;->request_text_count_left:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/util/dialog/RequestDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/RequestDialog$1;-><init>(Lcom/narvii/util/dialog/RequestDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/dialog/RequestDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    .line 110
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_gray:I

    goto :goto_0

    .line 107
    :cond_0
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red:I

    goto :goto_0

    .line 104
    :cond_1
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green:I

    goto :goto_0

    .line 101
    :cond_2
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_blue:I

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_divider:I

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object p2
.end method

.method public getRequestEdit()Landroid/widget/EditText;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRequestText()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCountShow()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEdtHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEdtHint(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .locals 3

    .line 84
    iput p1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 85
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRequestProgressVisible(Z)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method
