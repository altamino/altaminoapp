.class public Lcom/narvii/master/BottomDrawerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/master/BottomDrawerHelper;->curStatus:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v0, "prefs"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/content/SharedPreferences;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->prefs:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v0, "config"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    const-string v0, "versionPrefs"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/content/SharedPreferences;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 41
    .line 42
    new-instance p2, Lcom/narvii/util/PreferencesHelper;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 48
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/master/BottomDrawerHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/BottomDrawerHelper;->isRunning:Z

    return-void
.end method

.method private enoughIntervalFromLast()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->lastShowTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const/16 v2, 0x1e

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper;->isOverMins(JI)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private isAnnouncementStatusOk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isGlobalStatusOk()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->enoughIntervalFromLast()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private isOverDate(JI)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 9
    move-result-wide v0

    .line 10
    sub-long/2addr v0, p1

    .line 11
    .line 12
    .line 13
    const p1, 0x5265c00

    .line 14
    mul-int/2addr p3, p1

    .line 15
    int-to-long p1, p3

    .line 16
    .line 17
    cmp-long p1, v0, p1

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private isOverMins(JI)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 9
    move-result-wide v0

    .line 10
    sub-long/2addr v0, p1

    .line 11
    .line 12
    .line 13
    const p1, 0xea60

    .line 14
    mul-int/2addr p3, p1

    .line 15
    int-to-long p1, p3

    .line 16
    .line 17
    cmp-long p1, v0, p1

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private isSuggestCommunityStatusOk()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getLastSuggestCommunityShowTime()J

    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper;->isOverDate(JI)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v3, "account"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    const-string v4, "bottom_drawer_check"

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const-string v0, "sg: do not show sg, as is a curator"

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v1

    .line 55
    :cond_0
    return v2

    .line 56
    .line 57
    :cond_1
    const-string v0, "sg : no user for master"

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    return v1
.end method

.method private lastShowTime()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "bottom_drawer_last_showtime"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private requestAnnouncement()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-wide v2, Lcom/narvii/master/BottomDrawerHelper;->lastAnnouncementPromptRequestTime:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v4, v2, v4

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    sub-long/2addr v0, v2

    .line 14
    .line 15
    .line 16
    const-wide/32 v2, 0x927c0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 30
    :cond_0
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "/announcement"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-string v2, "language"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v2, "start"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const/16 v1, 0x14

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    const-string v2, "size"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    const-string v2, "api"

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 94
    .line 95
    new-instance v2, Lcom/narvii/master/BottomDrawerHelper$1;

    .line 96
    .line 97
    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/BottomDrawerHelper$1;-><init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 104
    return-void
.end method

.method private requestSuggestCommunity()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-wide v2, Lcom/narvii/master/BottomDrawerHelper;->lastSuggestPromptRequestTime:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v4, v2, v4

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    sub-long v2, v0, v2

    .line 15
    .line 16
    .line 17
    const-wide/32 v4, 0x927c0

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, -0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 31
    :cond_0
    return-void

    .line 32
    .line 33
    :cond_1
    sput-wide v0, Lcom/narvii/master/BottomDrawerHelper;->lastSuggestPromptRequestTime:J

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    const-string v1, "content_language"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string v2, "/community/suggested"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-string v2, "language"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->context:Lcom/narvii/app/NVContext;

    .line 74
    .line 75
    const-string v2, "api"

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 82
    .line 83
    new-instance v2, Lcom/narvii/master/BottomDrawerHelper$2;

    .line 84
    .line 85
    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/BottomDrawerHelper$2;-><init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public beginToCheckSuggestCommunity()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "begin to check suggest community"

    .line 3
    .line 4
    const-string v1, "bottom_drawer_check"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->isSuggestCommunityStatusOk()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->requestSuggestCommunity()V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/master/BottomDrawerHelper;->isRunning:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2, v3}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 30
    .line 31
    :cond_1
    const-string v0, "sg factor fail"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void
.end method

.method public checkAnnouncement()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->isAnnouncementStatusOk()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerHelper;->requestAnnouncement()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusChangeListener(Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper;->listener:Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    return-void
.end method

.method public shouldShowAnnouncement(Lcom/narvii/model/Blog;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime()J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 31
    move-result-wide v5

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-ltz v1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    move v1, v2

    .line 40
    .line 41
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v4, "an showcase #2: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    xor-int/lit8 v4, v1, 0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    const-string v4, "bottom_drawer_check"

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/narvii/util/PreferencesHelper;->getAnnouncementLastReadTime()J

    .line 69
    move-result-wide v5

    .line 70
    .line 71
    iget-object p1, p1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 75
    move-result-wide v7

    .line 76
    .line 77
    cmp-long p1, v5, v7

    .line 78
    .line 79
    if-gez p1, :cond_3

    .line 80
    move p1, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move p1, v0

    .line 83
    .line 84
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v5, "an showcase #3: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    return v2

    .line 108
    :cond_4
    return v0
.end method
