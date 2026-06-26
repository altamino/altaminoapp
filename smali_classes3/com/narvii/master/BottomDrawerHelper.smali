.class public Lcom/narvii/master/BottomDrawerHelper;
.super Ljava/lang/Object;
.source "BottomDrawerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;
    }
.end annotation


# static fields
.field public static final ANNOUNCEMENT_CREATE_TIME_WITHIN:I = 0x7

.field public static final ANNOUNCEMENT_REQUEST_INTERVAL:J = 0x927c0L

.field private static final FORCE_SHOW:I = 0x0

.field public static final GLOBAL_INTERVAL_BETWEEN_PRE_WORK:I = 0x1388

.field private static final GLOBAL_SHOW_TIME_INTERVAL:I = 0x1e

.field public static final KEY_LAST_ANNOUNCEMENT_ID:Ljava/lang/String; = "bottom_drawer_last_an_id"

.field public static final KEY_LAST_ANNOUNCEMENT_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_an_showtime"

.field public static final KEY_LAST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_showtime"

.field public static final KEY_LAST_SUGGEST_SHOW_TIME:Ljava/lang/String; = "bottom_drawer_last_sg_showtime"

.field public static final KEY_PRE_SHOW_DONE:Ljava/lang/String; = "bottom_drawer_pre_show_down"

.field public static final STATUS_ANNOUNCEMENT:I = 0x1

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_NO:I = 0x0

.field public static final STATUS_SUGGEST_COMMUNITY:I = 0x2

.field public static final SUGGESTCOMMUNITY_SHOW_INTERVAL:I = 0x1

.field public static final SUGGEST_REQUEST_INTERVAL:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "bottom_drawer_check"

.field public static lastAnnouncementPromptRequestTime:J

.field public static lastSuggestPromptRequestTime:J


# instance fields
.field configService:Lcom/narvii/config/ConfigService;

.field context:Lcom/narvii/app/NVContext;

.field private curStatus:I

.field private isRunning:Z

.field private listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

.field prefs:Landroid/content/SharedPreferences;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

.field versionPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/narvii/master/BottomDrawerHelper;->curStatus:I

    .line 75
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 76
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "config"

    .line 77
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "versionPrefs"

    .line 78
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 79
    iput-object p2, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 80
    new-instance p2, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {p2, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/master/BottomDrawerHelper;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/master/BottomDrawerHelper;->isRunning:Z

    return p1
.end method

.method private enoughIntervalFromLast()Z
    .locals 3

    .line 286
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->lastShowTime()J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper;->isOverMins(JI)Z

    move-result v0

    return v0
.end method

.method private isAnnouncementStatusOk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isGlobalStatusOk()Z
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->enoughIntervalFromLast()Z

    move-result v0

    return v0
.end method

.method private isOverDate(JI)Z
    .locals 2

    .line 302
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    mul-int/lit8 p3, p3, 0x18

    mul-int/lit8 p3, p3, 0x3c

    mul-int/lit8 p3, p3, 0x3c

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p1, p3

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOverMins(JI)Z
    .locals 2

    .line 298
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    mul-int/lit8 p3, p3, 0x3c

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p1, p3

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSuggestCommunityStatusOk()Z
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getLastSuggestCommunityShowTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper;->isOverDate(JI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 215
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    const-string v4, "bottom_drawer_check"

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sg: do not show sg, as is a curator"

    .line 217
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v2

    .line 223
    :cond_1
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    const-string v0, "sg : no user for master"

    .line 226
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private lastShowTime()J
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bottom_drawer_last_showtime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private requestAnnouncement()V
    .locals 7

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 111
    sget-wide v2, Lcom/narvii/master/BottomDrawerHelper;->lastAnnouncementPromptRequestTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 112
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/announcement"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 118
    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/16 v1, 0x14

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 122
    new-instance v2, Lcom/narvii/master/BottomDrawerHelper$1;

    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/BottomDrawerHelper$1;-><init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private requestSuggestCommunity()V
    .locals 7

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 237
    sget-wide v2, Lcom/narvii/master/BottomDrawerHelper;->lastSuggestPromptRequestTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 238
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 239
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 243
    :cond_1
    sput-wide v0, Lcom/narvii/master/BottomDrawerHelper;->lastSuggestPromptRequestTime:J

    .line 244
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "content_language"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 245
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/suggested"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v2, "language"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 247
    new-instance v2, Lcom/narvii/master/BottomDrawerHelper$2;

    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/BottomDrawerHelper$2;-><init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public beginToCheckSuggestCommunity()V
    .locals 4

    const-string v0, "bottom_drawer_check"

    const-string v1, "begin to check suggest community"

    .line 199
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->isSuggestCommunityStatusOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->requestSuggestCommunity()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/narvii/master/BottomDrawerHelper;->isRunning:Z

    .line 204
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 205
    invoke-interface {v1, v2, v3}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_1
    const-string v1, "sg factor fail"

    .line 207
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkAnnouncement()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->isAnnouncementStatusOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->requestAnnouncement()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusChangeListener(Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    return-void
.end method

.method public shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 177
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v2}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 178
    invoke-virtual {v1}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime()J

    move-result-wide v3

    iget-object v1, p1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 181
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "an showcase #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bottom_drawer_check"

    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v3}, Lcom/narvii/util/PreferencesHelper;->getAnnouncementLastReadTime()J

    move-result-wide v5

    iget-object p1, p1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 186
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "an showcase #3: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method
