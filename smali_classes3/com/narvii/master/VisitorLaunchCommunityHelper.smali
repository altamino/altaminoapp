.class public Lcom/narvii/master/VisitorLaunchCommunityHelper;
.super Ljava/lang/Object;
.source "VisitorLaunchCommunityHelper.java"


# instance fields
.field private communityService:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/VisitorLaunchCommunityHelper;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method private getLaunchDrawable(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    .line 146
    instance-of v2, p3, Lcom/narvii/widget/NVImageView;

    if-eqz v2, :cond_2

    check-cast p3, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 147
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 149
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 150
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 153
    new-instance p2, Lcom/narvii/widget/InnerIconDrawable;

    invoke-direct {p2}, Lcom/narvii/widget/InnerIconDrawable;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 156
    iget-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/InnerIconDrawable;->setIconSize(I)V

    .line 157
    invoke-virtual {p2, v1}, Lcom/narvii/widget/InnerIconDrawable;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/InnerIconDrawable;->setIconRadius(F)V

    :cond_2
    if-nez p2, :cond_3

    .line 163
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 165
    :cond_3
    instance-of p1, p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    if-eqz p1, :cond_4

    .line 166
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    check-cast p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-virtual {p2}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method private requestCommunityFullInfo(I)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 102
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/info"

    .line 103
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "withInfluencerList"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "withTopicList"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;

    const-class v3, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;-><init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Ljava/lang/Class;I)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 55
    iget v4, p1, Lcom/narvii/model/Community;->id:I

    .line 56
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v0, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "visitorMode"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/VisitorModeService;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0, v4}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/narvii/community/VisitorModeService;->preloadThemePack(Lcom/narvii/model/Community;)V

    .line 66
    :cond_1
    invoke-direct {p0, v4}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->requestCommunityFullInfo(I)V

    .line 68
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1, v0, p3}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->getLaunchDrawable(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 70
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 72
    sget-object v2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 73
    sget-object v3, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/VisitorLaunchCommunityHelper$1;-><init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Lcom/narvii/logging/PageRefererInfo;Ljava/lang/String;ILcom/narvii/model/Community;)V

    invoke-static {v6, p2, p3, v7}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method
