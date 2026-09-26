.class public Lcom/narvii/community/CommunityLaunchHelperWithIcon;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    iput-object p3, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    const-string p2, "myCommunityList"

    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method

.method private launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/narvii/model/Community;

    .line 26
    .line 27
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    .line 28
    .line 29
    if-ne v4, p1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    move-object v2, v3

    .line 47
    move-object v5, v4

    .line 48
    move-object v4, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v5, v4

    .line 51
    move-object v4, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v4, v2

    .line 54
    move-object v5, v4

    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->communityListService:Lcom/narvii/community/MyCommunityListService;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x2

    .line 69
    move-object v0, p0

    .line 70
    move v1, p1

    .line 71
    move-object v3, v5

    .line 72
    move-object v10, p2

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 19
    const/4 v2, 0x4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :cond_0
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 32
    .line 33
    :cond_1
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method public launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 21
    .line 22
    :cond_0
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->imageView:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchActivity:Landroid/app/Activity;

    .line 16
    .line 17
    new-instance v3, Lcom/narvii/community/CommunityLaunchHelperWithIcon$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/narvii/community/CommunityLaunchHelperWithIcon$1;-><init>(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v0, v1, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->access$101(Lcom/narvii/community/CommunityLaunchHelperWithIcon;)V

    .line 28
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    mul-float/2addr p2, v0

    .line 8
    float-to-int p2, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 12
    :cond_0
    return-void
.end method
