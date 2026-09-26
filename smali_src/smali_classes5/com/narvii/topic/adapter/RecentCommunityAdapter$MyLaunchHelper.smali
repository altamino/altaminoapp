.class public final Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyLaunchHelper"
.end annotation


# instance fields
.field private community:Lcom/narvii/model/Community;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageView:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private launchActivity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final myCommunityListService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressBar:Lcom/narvii/widget/SmoothProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recent:Z

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/RecentCommunityAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    .line 8
    .line 9
    const-string p1, "Right Side Panel"

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->myCommunityListService$delegate:Lw7/m;

    .line 24
    return-void
.end method

.method public static synthetic k(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->onFinish$lambda$0(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final launchCid(ILandroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    .line 4
    move-result-object v0

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
    .line 34
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    .line 43
    move-result-object v4

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
    goto :goto_0

    .line 54
    :cond_1
    move-object v0, v2

    .line 55
    :goto_0
    move-object v5, v4

    .line 56
    move-object v4, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v4, v2

    .line 59
    move-object v5, v4

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x2

    .line 78
    move-object v0, p0

    .line 79
    move v1, p1

    .line 80
    move-object v3, v5

    .line 81
    move-object v10, p2

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "this$1"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    sget-object p2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    .line 34
    :cond_0
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
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    const/4 v2, 0x4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    :cond_0
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 38
    .line 39
    :cond_1
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method public final getCommunity()Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public final getImageView()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getLaunchActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->myCommunityListService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 9
    return-object v0
.end method

.method public final getProgressBar()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getRecent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    return v0
.end method

.method public final launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 2
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/SmoothProgressBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "imageView"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "progressBar"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    .line 36
    .line 37
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public final launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "imageView"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchCid(ILandroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$getActivity(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    .line 26
    .line 27
    new-instance v4, Lcom/narvii/topic/adapter/w;

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, p0, v3}, Lcom/narvii/topic/adapter/w;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2, v4}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    const/16 v0, 0x64

    .line 10
    int-to-float v0, v0

    .line 11
    mul-float/2addr v0, p2

    .line 12
    float-to-int p2, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 16
    :cond_0
    return-void
.end method

.method public final setCommunity(Lcom/narvii/model/Community;)V
    .locals 0
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    return-void
.end method

.method public final setImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->imageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setLaunchActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchActivity:Landroid/app/Activity;

    return-void
.end method

.method public final setProgressBar(Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/SmoothProgressBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    return-void
.end method

.method public final setRecent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->recent:Z

    return-void
.end method
