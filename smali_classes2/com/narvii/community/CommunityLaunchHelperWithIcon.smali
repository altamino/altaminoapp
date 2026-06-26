.class public Lcom/narvii/community/CommunityLaunchHelperWithIcon;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "CommunityLaunchHelperWithIcon.java"


# instance fields
.field community:Lcom/narvii/model/Community;

.field communityListService:Lcom/narvii/community/MyCommunityListService;

.field imageView:Lcom/narvii/widget/NVImageView;

.field launchActivity:Landroid/app/Activity;

.field progressBar:Lcom/narvii/widget/SmoothProgressBar;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    .line 41
    iput-object p3, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    const-string p2, "myCommunityList"

    .line 42
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method static synthetic access$101(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method private launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 69
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 72
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    if-ne v4, p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 74
    iget-object v4, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v4, p1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    move-object v2, v3

    move-object v5, v4

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-object v4, v2

    goto :goto_0

    :cond_2
    move-object v4, v2

    move-object v5, v4

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v6

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move-object v3, v5

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    .line 91
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    .line 92
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 94
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :cond_0
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 97
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 98
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 100
    :cond_1
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    .line 55
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    .line 56
    iput-object p3, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x64

    .line 59
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 60
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 62
    :cond_0
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    new-instance v3, Lcom/narvii/community/CommunityLaunchHelperWithIcon$1;

    invoke-direct {v3, p0}, Lcom/narvii/community/CommunityLaunchHelperWithIcon$1;-><init>(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V

    invoke-static {v2, v0, v1, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p0}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->access$101(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V

    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 49
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
