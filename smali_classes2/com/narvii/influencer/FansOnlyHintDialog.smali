.class public Lcom/narvii/influencer/FansOnlyHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "FansOnlyHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnBecomeFans:Landroid/widget/TextView;

.field private btnClose:Landroid/view/View;

.field private fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

.field private isFansBefore:Z

.field private source:Ljava/lang/String;

.field private tvHint:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f090122

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnBecomeFans:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnBecomeFans:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09050e

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    const p1, 0x7f09025e

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnClose:Landroid/view/View;

    .line 42
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/narvii/influencer/FansOnlyHintDialog;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 29
    iput-object p2, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->source:Ljava/lang/String;

    const-string p2, "account"

    .line 30
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/account/AccountService;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencerUid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->isFansBefore:Z

    .line 33
    invoke-virtual {v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->show()V

    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b0191

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090122

    if-eq p1, v0, :cond_1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 70
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyContent;->influencerUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->source:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnBecomeFans:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 48
    iget-boolean v1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->isFansBefore:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0ed4

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0161

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    if-eqz v0, :cond_4

    .line 51
    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    const v1, 0x7f0f0696

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    invoke-interface {v2}, Lcom/narvii/influencer/FansOnlyContent;->HintTextId()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    invoke-interface {v5}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    invoke-interface {v5}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
