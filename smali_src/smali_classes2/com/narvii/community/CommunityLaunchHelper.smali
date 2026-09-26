.class public Lcom/narvii/community/CommunityLaunchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->useThemeColorFallback:Z

    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 2
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$3;

    const-class v1, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/CommunityLaunchHelper$3;-><init>(Lcom/narvii/community/CommunityLaunchHelper;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$4;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/CommunityLaunchHelper$4;-><init>(Lcom/narvii/community/CommunityLaunchHelper;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateOnlyListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 4
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$5;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$5;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$6;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$6;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 6
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$7;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$7;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 7
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$8;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$8;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    const-string p2, "community"

    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    const-string p2, "themePack"

    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/theme/ThemePackService;

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 10
    new-instance p2, Lcom/narvii/master/CommunityHelper;

    invoke-direct {p2, p1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->communityHelper:Lcom/narvii/master/CommunityHelper;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/community/CommunityLaunchHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/model/Community;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    return-object p0
.end method

.method private fail(ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->errorType:I

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->error:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/theme/ThemePackService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->fail(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDone()V

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    return-void
.end method

.method private launchImageDone()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    .line 9
    :cond_0
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private step()V
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isUserProfileReady()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->allowJoinCommunity:Z

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    iput v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->tryJoinCommunity()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_1
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x2

    .line 42
    .line 43
    if-ge v2, v5, :cond_e

    .line 44
    .line 45
    iput v5, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 46
    .line 47
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    .line 48
    .line 49
    if-eqz v2, :cond_c

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iget-object v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    move-object v6, v1

    .line 69
    :cond_2
    const/4 v7, 0x0

    .line 70
    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_3
    iget-object v8, v6, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 76
    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iget-object v6, v6, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    iget-object v8, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-static {v8}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    if-eqz v8, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-static {v8}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    :goto_0
    move-object v7, v2

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_4
    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 106
    .line 107
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .line 109
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    .line 111
    .line 112
    invoke-static {v6, v7, v8, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_5
    iget-object v8, v6, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 117
    .line 118
    if-eqz v8, :cond_7

    .line 119
    .line 120
    .line 121
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 122
    move-result v8

    .line 123
    .line 124
    if-lez v8, :cond_7

    .line 125
    .line 126
    iget-object v6, v6, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 127
    .line 128
    .line 129
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    check-cast v6, Lcom/narvii/model/Media;

    .line 133
    .line 134
    iget-object v7, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-static {v7}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v7

    .line 139
    .line 140
    if-eqz v7, :cond_6

    .line 141
    .line 142
    .line 143
    invoke-static {v7}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    goto :goto_0

    .line 146
    .line 147
    :cond_6
    iget-object v6, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 148
    .line 149
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    .line 151
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 152
    .line 153
    const-string v8, "community-launch-image"

    .line 154
    .line 155
    .line 156
    invoke-static {v6, v8, v7, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_7
    iget-object v8, v6, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v8, :cond_8

    .line 163
    .line 164
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 165
    .line 166
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 167
    .line 168
    const-string v9, "community-icon"

    .line 169
    .line 170
    .line 171
    invoke-static {v8, v9, v7, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    new-instance v2, Lcom/narvii/widget/InnerIconDrawable;

    .line 175
    .line 176
    .line 177
    invoke-direct {v2}, Lcom/narvii/widget/InnerIconDrawable;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/narvii/model/Community;->themeColor()I

    .line 181
    move-result v6

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 185
    .line 186
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    :cond_8
    :goto_1
    iput-object v7, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    .line 189
    .line 190
    if-nez v7, :cond_9

    .line 191
    .line 192
    const-string v2, "No Launch Image"

    .line 193
    .line 194
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 195
    goto :goto_2

    .line 196
    .line 197
    .line 198
    :cond_9
    invoke-static {v7}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 199
    move-result v2

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    const-string v2, "Ignore Gif"

    .line 204
    .line 205
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :cond_a
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 209
    .line 210
    if-nez v2, :cond_b

    .line 211
    .line 212
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 213
    .line 214
    const-string v6, "imageLoader"

    .line 215
    .line 216
    .line 217
    invoke-interface {v2, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    check-cast v2, Lcom/android/volley/toolbox/ImageLoader;

    .line 221
    .line 222
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 223
    .line 224
    :cond_b
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 225
    .line 226
    iget-object v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v7, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 230
    move-result-object v2

    .line 231
    .line 232
    iput-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 233
    .line 234
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    .line 235
    .line 236
    iget-wide v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v6, v7}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 240
    .line 241
    :cond_c
    :goto_2
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    .line 242
    .line 243
    if-nez v2, :cond_d

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    if-nez v1, :cond_e

    .line 248
    .line 249
    .line 250
    :cond_d
    invoke-direct {p0, v4}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    .line 251
    .line 252
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 256
    return-void

    .line 257
    .line 258
    :cond_e
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 259
    .line 260
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 267
    const/4 v6, 0x3

    .line 268
    .line 269
    if-ge v2, v6, :cond_13

    .line 270
    .line 271
    iput v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 272
    .line 273
    if-eqz v0, :cond_f

    .line 274
    .line 275
    iget v2, v0, Lcom/narvii/theme/ThemeInfo;->revision:I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 279
    move-result v7

    .line 280
    .line 281
    if-eq v2, v7, :cond_13

    .line 282
    .line 283
    :cond_f
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 284
    .line 285
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 289
    move-result v4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2, v4, v1}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 297
    .line 298
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    .line 299
    .line 300
    if-eqz v0, :cond_10

    .line 301
    .line 302
    .line 303
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    .line 304
    goto :goto_3

    .line 305
    .line 306
    :cond_10
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 307
    .line 308
    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    .line 312
    move-result v0

    .line 313
    .line 314
    if-ne v0, v3, :cond_12

    .line 315
    .line 316
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 317
    .line 318
    if-nez v0, :cond_11

    .line 319
    .line 320
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 321
    .line 322
    .line 323
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    .line 327
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 331
    .line 332
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 333
    .line 334
    new-instance v2, Landroid/content/IntentFilter;

    .line 335
    .line 336
    const-string v3, "com.narvii.action.THEME_PACK_CHANGED"

    .line 337
    .line 338
    .line 339
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 343
    .line 344
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 345
    .line 346
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 347
    .line 348
    new-instance v2, Landroid/content/IntentFilter;

    .line 349
    .line 350
    const-string v3, "com.narvii.action.THEME_PACK_PROGRESS"

    .line 351
    .line 352
    .line 353
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 357
    .line 358
    .line 359
    :cond_11
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 360
    goto :goto_3

    .line 361
    .line 362
    .line 363
    :cond_12
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    .line 364
    :goto_3
    return-void

    .line 365
    .line 366
    :cond_13
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 367
    .line 368
    if-ne v2, v6, :cond_17

    .line 369
    .line 370
    if-nez v0, :cond_17

    .line 371
    .line 372
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    .line 373
    .line 374
    if-nez v0, :cond_17

    .line 375
    .line 376
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 377
    .line 378
    iget v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v2}, Lcom/narvii/theme/ThemePackService;->getError(I)Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 385
    .line 386
    iget v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v6}, Lcom/narvii/theme/ThemePackService;->cancel(I)V

    .line 390
    .line 391
    if-nez v0, :cond_14

    .line 392
    .line 393
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 394
    .line 395
    .line 396
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 397
    move-result-object v0

    .line 398
    .line 399
    .line 400
    const v2, 0x7f120724

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 404
    move-result-object v0

    .line 405
    .line 406
    :cond_14
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    .line 407
    .line 408
    if-eqz v2, :cond_15

    .line 409
    .line 410
    .line 411
    invoke-direct {p0, v5, v0}, Lcom/narvii/community/CommunityLaunchHelper;->fail(ILjava/lang/String;)V

    .line 412
    goto :goto_4

    .line 413
    .line 414
    :cond_15
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 415
    .line 416
    .line 417
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 418
    move-result-object v2

    .line 419
    .line 420
    .line 421
    invoke-static {v2, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 422
    move-result-object v0

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 426
    .line 427
    :goto_4
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 428
    .line 429
    if-nez v0, :cond_16

    .line 430
    .line 431
    .line 432
    invoke-direct {p0, v3}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    .line 433
    .line 434
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 435
    .line 436
    :cond_16
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->failAtThemeDownload:Z

    .line 437
    .line 438
    if-eqz v0, :cond_17

    .line 439
    return-void

    .line 440
    .line 441
    :cond_17
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    .line 442
    .line 443
    if-eqz v0, :cond_1b

    .line 444
    .line 445
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 446
    const/4 v2, 0x4

    .line 447
    .line 448
    if-gt v0, v2, :cond_1b

    .line 449
    .line 450
    iput v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 451
    .line 452
    .line 453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 454
    move-result-wide v4

    .line 455
    .line 456
    iget-wide v6, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    .line 457
    .line 458
    iget-wide v8, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeout:J

    .line 459
    add-long/2addr v6, v8

    .line 460
    .line 461
    cmp-long v0, v4, v6

    .line 462
    .line 463
    if-gez v0, :cond_18

    .line 464
    .line 465
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    .line 467
    if-nez v0, :cond_18

    .line 468
    .line 469
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 470
    .line 471
    if-nez v0, :cond_18

    .line 472
    return-void

    .line 473
    .line 474
    :cond_18
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 475
    .line 476
    if-nez v0, :cond_1b

    .line 477
    .line 478
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

    .line 479
    .line 480
    if-nez v0, :cond_19

    .line 481
    .line 482
    if-eqz v1, :cond_1b

    .line 483
    .line 484
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->useThemeColorFallback:Z

    .line 485
    .line 486
    if-eqz v0, :cond_1b

    .line 487
    .line 488
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    .line 492
    move-result v1

    .line 493
    .line 494
    .line 495
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 496
    .line 497
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    goto :goto_5

    .line 499
    .line 500
    :cond_19
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 501
    .line 502
    if-eqz v1, :cond_1a

    .line 503
    .line 504
    new-instance v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 505
    .line 506
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

    .line 507
    .line 508
    check-cast v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 512
    move-result-object v1

    .line 513
    .line 514
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 515
    .line 516
    .line 517
    invoke-direct {v0, v1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 518
    .line 519
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 520
    goto :goto_5

    .line 521
    .line 522
    :cond_1a
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 523
    .line 524
    :cond_1b
    :goto_5
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 525
    const/4 v1, 0x5

    .line 526
    .line 527
    if-ge v0, v1, :cond_1d

    .line 528
    .line 529
    iput v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 530
    .line 531
    .line 532
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->readyForFinish()Z

    .line 533
    move-result v0

    .line 534
    .line 535
    if-eqz v0, :cond_1c

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->beginFinishWork()V

    .line 539
    goto :goto_6

    .line 540
    .line 541
    :cond_1c
    iput-boolean v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->isFinished:Z

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 545
    :cond_1d
    :goto_6
    return-void
.end method

.method private tryJoinCommunity()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->communityHelper:Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 5
    .line 6
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper$2;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityLaunchHelper$2;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    .line 15
    return-void
.end method

.method private updateCommunity(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/community/info"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-string/jumbo v2, "withInfluencerList"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string/jumbo v1, "withTopicList"

    .line 34
    .line 35
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    const-string v2, "api"

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateOnlyListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method protected beginFinishWork()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunity(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    .line 4
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->errorType:I

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->error:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->fullInfoCalled:Z

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    const-string v2, "api"

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updateRequest:Lcom/narvii/util/http/ApiRequest;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/drawables/gif/GifLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 61
    .line 62
    :cond_1
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageUrl:Ljava/lang/String;

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 70
    .line 71
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 72
    .line 73
    :cond_3
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageTimeoutRunnable:Ljava/lang/Runnable;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 92
    .line 93
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 101
    .line 102
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 103
    :cond_5
    return-void
.end method

.method public launch(ILcom/narvii/model/Community;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
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

    .line 2
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

    .line 3
    invoke-virtual/range {v0 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    iput p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    iput-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->origCommunity:Lcom/narvii/model/Community;

    iput-boolean p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->preVerify:Z

    iput p9, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImage:I

    iput-object p10, p0, Lcom/narvii/community/CommunityLaunchHelper;->fallbackLaunchImage:Landroid/graphics/drawable/Drawable;

    iput-object p11, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p8

    const-string p9, "account"

    invoke-virtual {p8, p1, p9}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 6
    sget-object p1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 7
    sget-object p1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iget-boolean p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    if-eqz p8, :cond_0

    iget-object p8, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    .line 8
    invoke-virtual {p8, p2, p1, p3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 9
    invoke-virtual {p2, p4, p5, p1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p6, :cond_3

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 10
    iget p3, p6, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    invoke-virtual {p2, p3, p7, p1}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 11
    iget p3, p6, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    invoke-virtual {p2, p3, p7, p1}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    .line 12
    iget-object p2, p6, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    iget-object p3, p6, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p4, p6, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p2, p4, p7, p1}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 14
    :cond_2
    iget-object p2, p6, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/narvii/community/CommunityLaunchHelper;->account:Lcom/narvii/account/AccountService;

    .line 15
    invoke-virtual {p3, p2, p7, p1}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 16
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->startTime:J

    .line 17
    invoke-direct {p0}, Lcom/narvii/community/CommunityLaunchHelper;->step()V

    return-void
.end method

.method protected onFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    :cond_1
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->strategyInfo:Ljava/lang/String;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    new-instance v1, Landroid/content/Intent;

    .line 44
    .line 45
    const-class v2, Lcom/narvii/amino/MainActivity;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    const-string v2, "__communityId"

    .line 51
    .line 52
    iget v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    const-string v2, "__interactionScope"

    .line 58
    const/4 v3, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    const-string v2, "customFinishAnimIn"

    .line 64
    .line 65
    .line 66
    const v4, 0x7f010034

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    .line 71
    const-string v2, "customFinishAnimOut"

    .line 72
    .line 73
    .line 74
    const v4, 0x7f010035

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    const-string v2, "__fromGlobalChat"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    .line 84
    const-string v2, "__hideDrawer"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    .line 90
    .line 91
    const-string v4, "__visitorMode"

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    const-string v3, "visitorMode"

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    check-cast v2, Lcom/narvii/community/VisitorModeService;

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    iget v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 111
    .line 112
    :cond_4
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 113
    .line 114
    const-string v3, "affiliations"

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    check-cast v2, Lcom/narvii/community/AffiliationsService;

    .line 121
    .line 122
    iget v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 126
    move-result v2

    .line 127
    .line 128
    xor-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    .line 137
    :goto_0
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 138
    .line 139
    instance-of v3, v2, Landroid/app/Activity;

    .line 140
    .line 141
    if-nez v3, :cond_6

    .line 142
    .line 143
    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    .line 144
    .line 145
    if-nez v2, :cond_6

    .line 146
    .line 147
    const/high16 v2, 0x10000000

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    .line 152
    :cond_6
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 153
    .line 154
    .line 155
    invoke-static {v2, v1}, Lcom/narvii/community/CommunityLaunchHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 156
    .line 157
    instance-of v1, v0, Landroid/app/Activity;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast v0, Landroid/app/Activity;

    .line 162
    .line 163
    .line 164
    const v1, 0x7f010037

    .line 165
    .line 166
    .line 167
    const v2, 0x7f010032

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 171
    .line 172
    :cond_7
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->intentAfterLaunchCommunity:Landroid/content/Intent;

    .line 173
    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0}, Lcom/narvii/community/CommunityLaunchHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    :catch_0
    :cond_8
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->community:Lcom/narvii/community/CommunityService;

    .line 182
    .line 183
    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 192
    .line 193
    const-string v2, "recentCommunities"

    .line 194
    .line 195
    .line 196
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    check-cast v1, Lcom/narvii/community/RecentCommunityHelper;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    .line 203
    :cond_9
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    const/4 v0, 0x5

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper$1;-><init>(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/high16 v0, 0x42c80000    # 100.0f

    .line 42
    mul-float/2addr p2, v0

    .line 43
    float-to-int p2, p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(I)V

    .line 47
    :cond_1
    return-void
.end method

.method protected progress()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->cid:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    .line 11
    const v3, 0x3e99999a    # 0.3f

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x3

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper;->themePack:Lcom/narvii/theme/ThemePackService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    const v1, 0x3f333333    # 0.7f

    .line 27
    mul-float/2addr v0, v1

    .line 28
    add-float/2addr v3, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x4

    .line 31
    .line 32
    if-ne v1, v0, :cond_3

    .line 33
    .line 34
    .line 35
    const v3, 0x3f666666    # 0.9f

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 v0, 0x5

    .line 38
    .line 39
    if-ne v1, v0, :cond_4

    .line 40
    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const/4 v3, 0x0

    .line 44
    .line 45
    :goto_0
    iget v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->step:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v3}, Lcom/narvii/community/CommunityLaunchHelper;->onProgress(IF)V

    .line 49
    return-void
.end method

.method protected readyForFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAllowJoinCommuntiy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->allowJoinCommunity:Z

    return-void
.end method

.method protected updateCommunityWhenNotJoined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
