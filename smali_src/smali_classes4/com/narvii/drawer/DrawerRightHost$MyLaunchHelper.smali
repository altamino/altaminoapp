.class Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLaunchHelper"
.end annotation


# instance fields
.field community:Lcom/narvii/model/Community;

.field imageView:Lcom/narvii/widget/NVImageView;

.field launchActivity:Landroid/app/Activity;

.field progressBar:Lcom/narvii/widget/SmoothProgressBar;

.field recent:Z

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    const-string p1, "Right Side Panel"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method static synthetic access$001(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V
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
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lcom/narvii/model/Community;

    .line 28
    .line 29
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    .line 30
    .line 31
    if-ne v4, p1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    move-object v2, v3

    .line 53
    move-object v5, v4

    .line 54
    move-object v4, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v5, v4

    .line 57
    move-object v4, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v4, v2

    .line 60
    move-object v5, v4

    .line 61
    .line 62
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v9, 0x2

    .line 79
    move-object v0, p0

    .line 80
    move v1, p1

    .line 81
    move-object v3, v5

    .line 82
    move-object v10, p2

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 86
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
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

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
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 19
    const/4 v2, 0x4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :cond_0
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

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
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method public launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->recent:Z

    .line 21
    .line 22
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
    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method public launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->recent:Z

    .line 11
    .line 12
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    .line 16
    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 22
    .line 23
    new-instance v3, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper$1;-><init>(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->access$101(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer()V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

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
