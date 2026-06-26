.class public Lcom/narvii/community/CommunityLaunchHelper;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"


# static fields
.field public static final FAIL_JOIN_COMMUNITY:I = 0x3

.field public static final FAIL_NOT_JOINED:I = 0x1

.field public static final FAIL_THEME_DOWNLOAD:I = 0x2

.field public static final LAUNCH_IMAGE_ICON:I = 0x2

.field public static final LAUNCH_IMAGE_NONE:I = 0x0

.field public static final LAUNCH_IMAGE_NORMAL:I = 0x1

.field public static final STEP_DONE:I = 0x5

.field public static final STEP_DOWNLOAD_LAUNCH_IMAGE:I = 0x4

.field public static final STEP_DOWNLOAD_THEME:I = 0x3

.field public static final STEP_JOIN:I = 0x1

.field public static final STEP_NONE:I = 0x0

.field public static final STEP_UPDATING:I = 0x2


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private allowJoinCommunity:Z

.field private cid:I

.field private community:Lcom/narvii/community/CommunityService;

.field private communityHelper:Lcom/narvii/master/CommunityHelper;

.field private context:Lcom/narvii/app/NVContext;

.field private dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

.field protected error:Ljava/lang/String;

.field protected errorType:I

.field public failAtThemeDownload:Z

.field private fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

.field protected fullInfoCalled:Z

.field private final gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field private gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

.field private final imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field intentAfterLaunchCommunity:Landroid/content/Intent;

.field protected isFinished:Z

.field private launchImage:I

.field private launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field protected launchImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected launchImageError:Ljava/lang/Object;

.field public launchImageTimeout:J

.field private final launchImageTimeoutRunnable:Ljava/lang/Runnable;

.field private launchImageUrl:Ljava/lang/String;

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field public needUpdateCommunity:Z

.field private origCommunity:Lcom/narvii/model/Community;

.field protected paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

.field pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field private preVerify:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field public source:Ljava/lang/String;

.field private startTime:J

.field private step:I

.field strategyInfo:Ljava/lang/String;

.field private themePack:Lcom/narvii/theme/ThemePackService;

.field public themePackDownloadAsync:Z

.field private final updateListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final updateOnlyListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;"
        }
    .end annotation
.end field

.field private updateRequest:Lcom/narvii/util/http/ApiRequest;

.field protected updatedCommunity:Lcom/narvii/model/Community;

.field public useThemeColorFallback:Z

.field public visitorModeCompatible:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 3

    .line 119
    const-class v0, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0xbb8

    .line 90
    iput-wide v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->useThemeColorFallback:Z

    .line 111
    iput-boolean v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 547
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/narvii/community/CommunityLaunchHelper$3;-><init>(Lcom/narvii/community/CommunityLaunchHelper;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 581
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper$4;

    invoke-direct {v1, p0, v0}, Lcom/narvii/community/CommunityLaunchHelper$4;-><init>(Lcom/narvii/community/CommunityLaunchHelper;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateOnlyListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 609
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$5;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$5;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    .line 617
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$6;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$6;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 643
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$7;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$7;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 658
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$8;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$8;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 121
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    const-string p2, "community"

    .line 122
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    const-string p2, "themePack"

    .line 123
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/theme/ThemePackService;

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 124
    new-instance p2, Lcom/narvii/master/CommunityHelper;

    invoke-direct {p2, p1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/model/Community;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->fail(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/community/CommunityLaunchHelper;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDone()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/theme/ThemePackService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    return-object p0
.end method

.method private fail(ILjava/lang/String;)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->errorType:I

    .line 410
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->error:Ljava/lang/String;

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method private launchImageDone()V
    .locals 2

    .line 604
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    :cond_0
    return-void
.end method

.method private step()V
    .locals 10

    .line 239
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isUserProfileReady()Z

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 245
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->allowJoinCommunity:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 246
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    if-ge v2, v3, :cond_1

    .line 247
    iput v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 248
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->tryJoinCommunity()V

    .line 249
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    return-void

    .line 253
    :cond_1
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_e

    .line 254
    iput v5, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 255
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    if-eqz v2, :cond_c

    .line 256
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 258
    iget-object v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    if-nez v6, :cond_2

    move-object v6, v1

    :cond_2
    const/4 v7, 0x0

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 260
    :cond_3
    iget-object v8, v6, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 261
    iget-object v6, v6, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    invoke-virtual {v6}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    move-result-object v6

    .line 262
    iget-object v8, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v8}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 264
    invoke-static {v8}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 266
    :cond_4
    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7, v8, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 268
    :cond_5
    iget-object v8, v6, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 269
    iget-object v6, v6, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Media;

    .line 270
    iget-object v7, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 272
    invoke-static {v7}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 274
    :cond_6
    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v8, "community-launch-image"

    invoke-static {v6, v8, v7, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 276
    :cond_7
    iget-object v8, v6, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 277
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v9, "community-icon"

    invoke-static {v8, v9, v7, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 278
    new-instance v2, Lcom/narvii/widget/InnerIconDrawable;

    invoke-direct {v2}, Lcom/narvii/widget/InnerIconDrawable;-><init>()V

    .line 279
    invoke-virtual {v6}, Lcom/narvii/model/Community;->themeColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 280
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_8
    :goto_1
    iput-object v7, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    if-nez v7, :cond_9

    const-string v2, "No Launch Image"

    .line 284
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    goto :goto_2

    .line 285
    :cond_9
    invoke-static {v7}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Ignore Gif"

    .line 286
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    goto :goto_2

    .line 293
    :cond_a
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-nez v2, :cond_b

    .line 294
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v6, "imageLoader"

    invoke-interface {v2, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/toolbox/ImageLoader;

    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 296
    :cond_b
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    invoke-virtual {v2, v7, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 297
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    invoke-static {v2, v6, v7}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 300
    :cond_c
    :goto_2
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    if-nez v1, :cond_e

    .line 301
    :cond_d
    invoke-direct {p0, v4}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 303
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    return-void

    .line 308
    :cond_e
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v0, v2}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    .line 309
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v6, 0x3

    if-ge v2, v6, :cond_13

    .line 310
    iput v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    if-eqz v0, :cond_f

    .line 311
    iget v2, v0, Lcom/narvii/theme/ThemeInfo;->revision:I

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v7

    if-eq v2, v7, :cond_13

    .line 312
    :cond_f
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v4

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v4, v1}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    if-eqz v0, :cond_10

    .line 314
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    goto :goto_3

    .line 315
    :cond_10
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    move-result v0

    if-ne v0, v3, :cond_12

    .line 316
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 318
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 319
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.THEME_PACK_PROGRESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 321
    :cond_11
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    goto :goto_3

    .line 323
    :cond_12
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    :goto_3
    return-void

    .line 329
    :cond_13
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    if-ne v2, v6, :cond_17

    if-nez v0, :cond_17

    .line 330
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    if-nez v0, :cond_17

    .line 331
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v0, v2}, Lcom/narvii/theme/ThemePackService;->getError(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    iget v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v2, v6}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    if-nez v0, :cond_14

    .line 334
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0677

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_14
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    if-eqz v2, :cond_15

    .line 337
    invoke-direct {p0, v5, v0}, Lcom/narvii/community/CommunityLaunchHelper;->fail(ILjava/lang/String;)V

    goto :goto_4

    .line 339
    :cond_15
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 341
    :goto_4
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    if-nez v0, :cond_16

    .line 342
    invoke-direct {p0, v3}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    .line 343
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 345
    :cond_16
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    if-eqz v0, :cond_17

    return-void

    .line 351
    :cond_17
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1b

    .line 352
    iput v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 354
    iget-wide v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    iget-wide v8, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_18

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    if-nez v0, :cond_18

    return-void

    .line 357
    :cond_18
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1b

    .line 358
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    if-eqz v1, :cond_1b

    .line 359
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->useThemeColorFallback:Z

    if-eqz v0, :cond_1b

    .line 360
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 363
    :cond_19
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    if-eqz v1, :cond_1a

    .line 364
    new-instance v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    check-cast v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v1, v0}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 366
    :cond_1a
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    :cond_1b
    :goto_5
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1d

    .line 373
    iput v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 374
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->readyForFinish()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 375
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->beginFinishWork()V

    goto :goto_6

    .line 377
    :cond_1c
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->isFinished:Z

    .line 378
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    :cond_1d
    :goto_6
    return-void
.end method

.method private tryJoinCommunity()V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->communityHelper:Lcom/narvii/master/CommunityHelper;

    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper$2;

    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityLaunchHelper$2;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    return-void
.end method

.method private updateCommunity(Z)V
    .locals 4

    .line 396
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/info"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 397
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "withInfluencerList"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 399
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "withTopicList"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 400
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    if-eqz p1, :cond_1

    .line 402
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateOnlyListener:Lcom/narvii/util/http/ApiResponseListener;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-nez p1, :cond_2

    .line 404
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    :cond_2
    return-void
.end method


# virtual methods
.method protected beginFinishWork()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 390
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 391
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    .line 134
    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    .line 135
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    const-wide/16 v2, 0x0

    .line 136
    iput-wide v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    .line 137
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->errorType:I

    .line 138
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->error:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 140
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 141
    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 142
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 143
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 146
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 149
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    if-eqz v2, :cond_1

    .line 150
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/drawables/gif/GifLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 152
    :cond_1
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 156
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 158
    :cond_3
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_4

    .line 163
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 169
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    :cond_5
    return-void
.end method

.method public launch(ILcom/narvii/model/Community;)V
    .locals 12

    .line 182
    iget-boolean v8, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 189
    invoke-virtual/range {v0 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 196
    invoke-virtual/range {v0 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    .line 205
    iput p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 206
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    .line 207
    iput-boolean p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    .line 208
    iput p9, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    .line 209
    iput-object p10, p0, Lcom/narvii/community/CommunityLaunchHelper;->fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

    .line 210
    iput-object p11, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    .line 211
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p8

    const-string p9, "account"

    invoke-virtual {p8, p1, p9}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 213
    sget-object p1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 214
    sget-object p1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 216
    iget-boolean p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    if-eqz p8, :cond_0

    .line 217
    iget-object p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    invoke-virtual {p8, p2, p1, p3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 220
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2, p4, p5, p1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p6, :cond_3

    .line 223
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    iget p3, p6, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    invoke-virtual {p2, p3, p7, p1}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 224
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    iget p3, p6, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    invoke-virtual {p2, p3, p7, p1}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    .line 225
    iget-object p2, p6, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    iget-object p3, p6, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    .line 226
    iget-object p3, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p4, p6, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p2, p4, p7, p1}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 229
    :cond_2
    iget-object p2, p6, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-eqz p2, :cond_3

    .line 230
    iget-object p3, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p3, p2, p7, p1}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 234
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    .line 235
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    return-void
.end method

.method protected onFail(ILjava/lang/String;)V
    .locals 1

    .line 451
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 455
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 456
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 461
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 463
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 466
    sget-object v2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-eqz v0, :cond_2

    .line 470
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 471
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 475
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 476
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/narvii/amino/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    const-string v3, "__communityId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "__interactionScope"

    .line 482
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x7f010026

    const-string v4, "customFinishAnimIn"

    .line 483
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f010027

    const-string v4, "customFinishAnimOut"

    .line 484
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "__fromGlobalChat"

    .line 487
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "__hideDrawer"

    .line 488
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    iget-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    const-string v4, "__visitorMode"

    if-eqz v3, :cond_5

    .line 491
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v3, "visitorMode"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/VisitorModeService;

    if-eqz v2, :cond_4

    .line 493
    iget v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 496
    :cond_4
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "affiliations"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/AffiliationsService;

    .line 497
    iget v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 499
    :cond_5
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    :goto_0
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_6

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_6

    const/high16 v2, 0x10000000

    .line 502
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    :cond_6
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 505
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 506
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f010029

    const v2, 0x7f010024

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 517
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 519
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "recentCommunities"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/RecentCommunityHelper;

    .line 520
    invoke-virtual {v1, v0}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    :cond_9
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 432
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-nez p1, :cond_0

    .line 433
    new-instance p1, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 434
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$1;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 441
    :try_start_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 445
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    if-eqz p1, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 446
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(I)V

    :cond_1
    return-void
.end method

.method protected progress()V
    .locals 5

    .line 415
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 418
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    const/4 v3, 0x2

    const v4, 0x3e99999a    # 0.3f

    if-ne v2, v3, :cond_1

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 421
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    add-float v1, v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    const v1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne v2, v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 428
    :cond_4
    :goto_0
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    invoke-virtual {p0, v0, v1}, Lcom/narvii/community/CommunityLaunchHelper;->onProgress(IF)V

    return-void
.end method

.method protected readyForFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAllowJoinCommuntiy(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->allowJoinCommunity:Z

    return-void
.end method

.method protected updateCommunityWhenNotJoined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
