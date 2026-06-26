.class public Lcom/narvii/prompt/ReputationPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "ReputationPromptHelper.java"


# static fields
.field public static final REPUTATION_GAINED_SHOW_DURATION:I = 0x514


# instance fields
.field public isPopUpHold:Z

.field public isRankingTitleAnimEnd:Z

.field public reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prompt/ReputationPromptHelper;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/prompt/ReputationPromptHelper;->showReputationGainedView(I)V

    return-void
.end method

.method private showReputationGainedView(I)V
    .locals 13

    .line 65
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f090962

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 74
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0b05eb

    invoke-virtual {v3, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f010029

    .line 77
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    const v5, 0x7f01002a

    .line 78
    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v3, 0x7f090912

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/narvii/widget/RankingTitleView;

    .line 82
    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v7, "account"

    invoke-interface {v3, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 85
    iget-object v7, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v8, "ranking"

    invoke-interface {v7, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/util/ranking/RankingService;

    const v8, 0x7f090b9a

    .line 86
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 88
    new-instance v12, Lcom/narvii/prompt/ReputationPromptHelper$2;

    invoke-direct {v12, p0, v2, v5, v1}, Lcom/narvii/prompt/ReputationPromptHelper$2;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    .line 98
    iput-boolean v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 99
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    iget-object v9, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v10, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    invoke-virtual {v10}, Lcom/narvii/achievements/ReputationGainedHelper;->getLastRP()I

    move-result v10

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/User;->reputation:I

    new-instance v11, Lcom/narvii/prompt/ReputationPromptHelper$3;

    invoke-direct {v11, p0, v8, v7, v12}, Lcom/narvii/prompt/ReputationPromptHelper$3;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/widget/TextView;Lcom/narvii/util/ranking/RankingService;Ljava/lang/Runnable;)V

    move-object v7, v5

    move-object v8, v9

    move v9, v10

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 114
    iget-object v3, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    invoke-virtual {v3}, Lcom/narvii/achievements/ReputationGainedHelper;->show()V

    const v3, 0x7f09098f

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " REP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090961

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-le p1, v4, :cond_2

    const v5, 0x7f0f0ee6

    new-array v4, v4, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0ee7

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0906b2

    .line 122
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 123
    new-instance v0, Lcom/narvii/prompt/ReputationPromptHelper$4;

    invoke-direct {v0, p0, v12}, Lcom/narvii/prompt/ReputationPromptHelper$4;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 3

    .line 43
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    new-instance v1, Lcom/narvii/achievements/ReputationGainedHelper;

    iget-object v2, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/achievements/ReputationGainedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 45
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    invoke-virtual {v0}, Lcom/narvii/achievements/ReputationGainedHelper;->canShowNow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    invoke-virtual {v0}, Lcom/narvii/achievements/ReputationGainedHelper;->getGainedRP()I

    move-result v0

    if-lez v0, :cond_1

    .line 49
    new-instance v1, Lcom/narvii/prompt/ReputationPromptHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/prompt/ReputationPromptHelper$1;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;I)V

    invoke-virtual {p0, v1}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_1
    return-void
.end method
