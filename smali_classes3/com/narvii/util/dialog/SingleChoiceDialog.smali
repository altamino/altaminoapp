.class public Lcom/narvii/util/dialog/SingleChoiceDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SingleChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;,
        Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;
    }
.end annotation


# instance fields
.field private itemLayoutId:I

.field private showIndicator:Z

.field singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 30
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/SingleChoiceDialog$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/SingleChoiceDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public addItems([I)V
    .locals 7

    if-eqz p1, :cond_5

    .line 61
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    sget v1, Lcom/narvii/lib/R$id;->dialog_item_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 64
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 72
    :cond_2
    sget v5, Lcom/narvii/lib/R$id;->choice_name:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 73
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 74
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_3
    sget v5, Lcom/narvii/lib/R$id;->choice_indicator:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 77
    iget-boolean v6, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->showIndicator:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 78
    aget v5, p1, v2

    .line 79
    new-instance v6, Lcom/narvii/util/dialog/SingleChoiceDialog$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/narvii/util/dialog/SingleChoiceDialog$1;-><init>(Lcom/narvii/util/dialog/SingleChoiceDialog;ILjava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 49
    sget p1, Lcom/narvii/lib/R$layout;->dialog_single_choice_default_layout:I

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 36
    sget p1, Lcom/narvii/lib/R$layout;->item_choice_layout:I

    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    return-void

    .line 39
    :cond_0
    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->showIndicator:Z

    return-void
.end method

.method public setSingleChoiceDialogCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    return-void
.end method
