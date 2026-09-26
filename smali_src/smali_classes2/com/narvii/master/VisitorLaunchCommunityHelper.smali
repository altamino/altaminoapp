.class public Lcom/narvii/master/VisitorLaunchCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private communityService:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "community"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 16
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/master/VisitorLaunchCommunityHelper;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method private getLaunchDrawable(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p2, v1

    .line 17
    .line 18
    :goto_0
    if-nez p2, :cond_2

    .line 19
    .line 20
    instance-of v2, p3, Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-ne v2, v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    :cond_1
    if-eqz v1, :cond_2

    .line 47
    .line 48
    new-instance p2, Lcom/narvii/widget/InnerIconDrawable;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2}, Lcom/narvii/widget/InnerIconDrawable;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 55
    move-result p3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 59
    .line 60
    iget-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    const/high16 v0, 0x42c80000    # 100.0f

    .line 67
    .line 68
    .line 69
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 70
    move-result p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Lcom/narvii/widget/InnerIconDrawable;->setIconSize(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Lcom/narvii/widget/InnerIconDrawable;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    iget-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    .line 81
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    const/high16 v0, 0x41700000    # 15.0f

    .line 85
    .line 86
    .line 87
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 88
    move-result p3

    .line 89
    int-to-float p3, p3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Lcom/narvii/widget/InnerIconDrawable;->setIconRadius(F)V

    .line 93
    .line 94
    :cond_2
    if-nez p2, :cond_3

    .line 95
    .line 96
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 100
    move-result p1

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 104
    .line 105
    :cond_3
    instance-of p1, p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 110
    .line 111
    check-cast p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    check-cast p2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 121
    move-object p2, p1

    .line 122
    :cond_4
    return-object p2
.end method

.method private requestCommunityFullInfo(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "/community/info"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string/jumbo v3, "withInfluencerList"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string/jumbo v2, "withTopicList"

    .line 38
    .line 39
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;

    .line 50
    .line 51
    const-class v3, Lcom/narvii/community/FullCommunityResponse;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;-><init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Ljava/lang/Class;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    iget v4, p1, Lcom/narvii/model/Community;->id:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "visitorMode"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/community/VisitorModeService;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/narvii/community/VisitorModeService;->preloadThemePack(Lcom/narvii/model/Community;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0, v4}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->requestCommunityFullInfo(I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    instance-of v0, v0, Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    move-object v0, p2

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1, v0, p3}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->getLaunchDrawable(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 66
    .line 67
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 68
    .line 69
    sget-object v3, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    move-object v6, v0

    .line 77
    .line 78
    check-cast v6, Landroid/app/Activity;

    .line 79
    .line 80
    new-instance v7, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;

    .line 81
    move-object v0, v7

    .line 82
    move-object v1, p0

    .line 83
    move-object v5, p1

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;-><init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Lcom/narvii/logging/PageRefererInfo;Ljava/lang/String;ILcom/narvii/model/Community;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v6, p2, p3, v7}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 90
    :cond_2
    return-void
.end method
