.class public Lcom/narvii/influencer/FansOnlyHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a01bb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnBecomeFans:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0a0666

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0a0321

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnClose:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public static showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/influencer/FansOnlyHintDialog;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object p1, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 12
    .line 13
    iput-object p2, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->source:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "account"

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencerUid()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    .line 39
    move-result p0

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    .line 46
    :goto_1
    iput-boolean p0, v0, Lcom/narvii/influencer/FansOnlyHintDialog;->isFansBefore:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->show()V

    .line 50
    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d01b0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a01bb

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0321

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    const v0, 0x7f1211ab

    .line 52
    const/4 v1, 0x1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 60
    return-void

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyContent;->influencerUid()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->source:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void
.end method

.method public show()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->btnBecomeFans:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->isFansBefore:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f120fed

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v1, 0x7f1201a1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    const v1, 0x7f120743

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->tvHint:Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Lcom/narvii/influencer/FansOnlyContent;->HintTextId()I

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x1

    .line 55
    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 59
    .line 60
    .line 61
    invoke-interface {v4}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    const-string v4, ""

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_3
    iget-object v4, p0, Lcom/narvii/influencer/FansOnlyHintDialog;->fansOnlyContent:Lcom/narvii/influencer/FansOnlyContent;

    .line 70
    .line 71
    .line 72
    invoke-interface {v4}, Lcom/narvii/influencer/FansOnlyContent;->influencer()Lcom/narvii/model/User;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    :goto_1
    const/4 v5, 0x0

    .line 79
    .line 80
    aput-object v4, v3, v5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 91
    return-void
.end method
