.class public Lcom/narvii/util/dialog/SingleChoiceDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;,
        Lcom/narvii/util/dialog/SingleChoiceDialog$Builder;
    }
.end annotation


# instance fields
.field private itemLayoutId:I

.field private showIndicator:Z

.field singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/SingleChoiceDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public addItems([I)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    array-length v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$id;->dialog_item_container:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :goto_0
    array-length v3, p1

    .line 28
    .line 29
    if-ge v2, v3, :cond_5

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    iget v4, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    aget v5, p1, v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_2
    sget v5, Lcom/narvii/lib/R$id;->choice_name:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    instance-of v6, v5, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    check-cast v5, Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    :cond_3
    sget v5, Lcom/narvii/lib/R$id;->choice_indicator:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    iget-boolean v6, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->showIndicator:Z

    .line 89
    .line 90
    if-eqz v6, :cond_4

    .line 91
    move v6, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v6, 0x4

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    aget v5, p1, v2

    .line 99
    .line 100
    new-instance v6, Lcom/narvii/util/dialog/SingleChoiceDialog$1;

    .line 101
    .line 102
    .line 103
    invoke-direct {v6, p0, v5, v4}, Lcom/narvii/util/dialog/SingleChoiceDialog$1;-><init>(Lcom/narvii/util/dialog/SingleChoiceDialog;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    .line 111
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    :goto_3
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/narvii/lib/R$layout;->dialog_single_choice_default_layout:I

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 8
    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0

    if-nez p1, :cond_0

    sget p1, Lcom/narvii/lib/R$layout;->item_choice_layout:I

    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    return-void

    :cond_0
    iput p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->itemLayoutId:I

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->showIndicator:Z

    return-void
.end method

.method public setSingleChoiceDialogCallBack(Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/dialog/SingleChoiceDialog;->singleChoiceDialogCallBack:Lcom/narvii/util/dialog/SingleChoiceDialog$SingleChoiceDialogCallBack;

    return-void
.end method
