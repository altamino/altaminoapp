.class public Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;
.super Landroid/app/AlertDialog;
.source "ReputationClaimDialog.java"


# instance fields
.field private claimedRep:Landroid/widget/TextView;

.field private data:Lcom/narvii/model/api/ReputationPostResponse;

.field private duration:Landroid/widget/TextView;

.field private loading:Lcom/narvii/widget/SpinningView;

.field private viewers:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->data:Lcom/narvii/model/api/ReputationPostResponse;

    return-void
.end method

.method private setData(Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 13

    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->loading:Lcom/narvii/widget/SpinningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget v0, p1, Lcom/narvii/model/api/ReputationPostResponse;->duration:I

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    const/16 v3, 0xe10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-lt v0, v3, :cond_1

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 82
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 86
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%02d:%02d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->duration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->viewers:Landroid/widget/TextView;

    iget v1, p1, Lcom/narvii/model/api/ReputationPostResponse;->participantCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ee2

    new-array v3, v4, [Ljava/lang/Object;

    iget p1, p1, Lcom/narvii/model/api/ReputationPostResponse;->totalReputation:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 93
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 96
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static show(Lcom/narvii/app/NVContext;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 33
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 36
    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/api/ReputationPostResponse;)V

    .line 40
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const p1, 0x7f0b05e9

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f09095f

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->loading:Lcom/narvii/widget/SpinningView;

    const p1, 0x7f09024b

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    const p1, 0x7f0903b3

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->duration:Landroid/widget/TextView;

    const p1, 0x7f090ca8

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->viewers:Landroid/widget/TextView;

    const p1, 0x7f090188

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 61
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;-><init>(Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->data:Lcom/narvii/model/api/ReputationPostResponse;

    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->setData(Lcom/narvii/model/api/ReputationPostResponse;)V

    return-void
.end method
