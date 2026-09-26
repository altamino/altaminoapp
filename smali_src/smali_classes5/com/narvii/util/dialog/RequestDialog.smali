.class public Lcom/narvii/util/dialog/RequestDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    const/16 p1, 0x64

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 8
    .line 9
    sget p1, Lcom/narvii/lib/R$layout;->community_request_dialog:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 13
    .line 14
    sget p1, Lcom/narvii/lib/R$id;->request_progress:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Landroid/widget/ProgressBar;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    sget p1, Lcom/narvii/lib/R$id;->request_edit:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/widget/EditText;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 33
    .line 34
    sget p1, Lcom/narvii/lib/R$id;->request_text_count_left:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget v1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/util/dialog/RequestDialog$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/RequestDialog$1;-><init>(Lcom/narvii/util/dialog/RequestDialog;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 1
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

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_gray:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_blue:I

    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_divider:I

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public getRequestEdit()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getRequestText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public setCountShow()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public setEdtHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEdtHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .locals 3

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    return-void
.end method

.method public setRequestProgressVisible(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog;->editText:Landroid/widget/EditText;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, v2

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method
