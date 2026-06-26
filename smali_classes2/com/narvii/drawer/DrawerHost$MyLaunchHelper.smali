.class Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
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

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 2666
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    const-string p1, "Left Side Panel"

    .line 2667
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 2668
    iput-wide p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    const/4 p1, 0x0

    .line 2669
    iput-boolean p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->useThemeColorFallback:Z

    return-void
.end method

.method static synthetic access$2001(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V
    .locals 0

    .line 2660
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method static synthetic access$2101(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V
    .locals 0

    .line 2660
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method private launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 2695
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2697
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 2698
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    if-ne v4, p1, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 2700
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v4}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v4

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

    .line 2709
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v6

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v5

    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 2714
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 2715
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 2716
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 2717
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2718
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 2719
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2721
    :cond_0
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 2722
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2723
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 2725
    :cond_1
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    .line 2680
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 2681
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 2682
    iput-object p3, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 2684
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x64

    .line 2685
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2686
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 2688
    :cond_0
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 2730
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2733
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 2734
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 2735
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    new-instance v3, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;

    invoke-direct {v3, p0}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper$1;-><init>(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 2746
    :cond_1
    invoke-static {p0}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->access$2101(Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;)V

    .line 2747
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 2674
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 2675
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
