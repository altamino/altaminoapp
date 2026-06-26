.class Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "DrawerRightHost.java"


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

    .line 1174
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const-string p1, "Right Side Panel"

    .line 1175
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V
    .locals 0

    .line 1167
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method static synthetic access$101(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V
    .locals 0

    .line 1167
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method private launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 1210
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 1213
    iget v4, v3, Lcom/narvii/model/Community;->id:I

    if-ne v4, p1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 1215
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v4, v4, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

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

    .line 1224
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v6

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

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

    .line 1229
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 1231
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 1232
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1233
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 1234
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1236
    :cond_0
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 1237
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1238
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 1240
    :cond_1
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2

    .line 1195
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 1196
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 1197
    iput-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x64

    .line 1199
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1200
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 1201
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->recent:Z

    .line 1203
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V
    .locals 1

    .line 1186
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 1187
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 p2, 0x0

    .line 1188
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->recent:Z

    .line 1191
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 1245
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1249
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 1250
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    new-instance v3, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper$1;

    invoke-direct {v3, p0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper$1;-><init>(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 1261
    :cond_1
    invoke-static {p0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->access$101(Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;)V

    .line 1262
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1180
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1181
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
