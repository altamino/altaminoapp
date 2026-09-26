.class public abstract Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.super Lcom/narvii/feed/BaseFeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/feed/BaseFeedListAdapter<",
        "Lcom/narvii/model/Feed;",
        "Lcom/narvii/headlines/HeadlineListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_THRESHOLD:I = 0x2

.field private static final PRE_LOAD_MIDDLE_THRESHOLD:I = 0xa

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_LARGE_IAMGE:I = 0x2

.field public static final TYPE_LARGE_IMAGE_VIDEO:I = 0x8

.field public static final TYPE_LAST_READ_POINT:I = 0x7

.field public static final TYPE_MULTI_IAMGES:I = 0x3

.field public static final TYPE_NO_IAMGE:I = 0x4

.field public static final TYPE_POLL:I = 0x6

.field public static final TYPE_QUIZ:I = 0x5

.field public static final TYPE_SMALL_IMAGE_VIDEO:I = 0x9

.field public static final TYPE_SMLALL_IAMGE:I = 0x1

.field public static final TYPE_UNKNOWN_TYPE:I = 0xa


# instance fields
.field protected final REQ_TAG_QUERY_START_TIME:Lcom/narvii/util/Tag;

.field private accountService:Lcom/narvii/account/AccountService;

.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field communityTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private curLastPointFeedPosition:I

.field private curUser:Lcom/narvii/model/User;

.field public currentHsid:Ljava/lang/String;

.field feedRelatedCommunityList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public fixedFeatureMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isMiddlePageRequesting:Z

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private final lastPointFeed:Lcom/narvii/model/Blog;

.field private lastReadFeedId:Ljava/lang/String;

.field private launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

.field logging:Lcom/narvii/util/logging/LoggingService;

.field private middlePageToken:Ljava/lang/String;

.field userProgfileMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field youtubeService:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/Tag;

    .line 6
    .line 7
    const-string v1, "reqTime"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->REQ_TAG_QUERY_START_TIME:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/model/Blog;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 48
    .line 49
    const-string v0, "Headlines"

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 56
    .line 57
    const-string v0, "account"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 66
    .line 67
    const-string v0, "affiliations"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getStoredLastTimeFeedId()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    .line 82
    .line 83
    const-string v0, "logging"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curUser:Lcom/narvii/model/User;

    .line 100
    .line 101
    const-string v0, "youtube"

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 110
    const/4 p1, 0x1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string v0, "connectivity"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;

    .line 130
    .line 131
    const-class v0, Lcom/narvii/model/Feed;

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0a0652

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Ljava/lang/Class;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 141
    return-void
.end method

.method private gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "icon"

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "prefetch"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string p1, "Source"

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    sget-object p1, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string v1, "eventOrigin"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p1, "loggingObjectId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method private handleOtherCommunityFeed(Lcom/narvii/model/Feed;Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/model/Feed;->getDeepLink(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "android.intent.action.VIEW"

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string p1, "clearTask"

    .line 44
    const/4 v0, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p1, "customFinishAnimIn"

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    const-string p1, "customFinishAnimOut"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_0
    new-instance p1, Lcom/narvii/master/MasterHelper;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 77
    .line 78
    if-nez p2, :cond_1

    .line 79
    const/4 p2, 0x0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_1
    iget-object p2, p2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    .line 86
    :goto_1
    return-void
.end method

.method private isJoinedThisCommunity(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    return v1
.end method

.method static bridge synthetic o(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected channelId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public comment(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/model/Community;

    .line 24
    .line 25
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 34
    .line 35
    .line 36
    invoke-super {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 56
    const/4 v1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-super {p0, p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;IZ)V

    .line 60
    :goto_0
    return-void
.end method

.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method protected dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 6
    return-object v0
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/Feed;

    return-object v0
.end method

.method protected enterCommunityDirectly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-eq p2, v1, :cond_2

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/Feed;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-super {p0, v1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method protected getCommunityInfo(I)Lcom/narvii/model/Community;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/model/Community;

    .line 17
    return-object p1
.end method

.method protected getCommunityTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    return-object p1
.end method

.method public getItemType(Ljava/lang/Object;)I
    .locals 12

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curUser:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    const/4 p1, 0x7

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    move v1, v4

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    :goto_0
    if-nez v3, :cond_3

    .line 43
    move v5, v4

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 48
    move-result v5

    .line 49
    .line 50
    :goto_1
    instance-of v6, p1, Lcom/narvii/model/Blog;

    .line 51
    const/4 v7, 0x4

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    move-object v8, p1

    .line 55
    .line 56
    check-cast v8, Lcom/narvii/model/Blog;

    .line 57
    .line 58
    iget v9, v8, Lcom/narvii/model/Blog;->type:I

    .line 59
    .line 60
    if-ne v9, v7, :cond_4

    .line 61
    .line 62
    iget-object v8, v8, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 63
    .line 64
    if-eqz v8, :cond_4

    .line 65
    move v8, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v8, v4

    .line 68
    :goto_2
    const/4 v9, 0x6

    .line 69
    .line 70
    if-eqz v6, :cond_5

    .line 71
    move-object v10, p1

    .line 72
    .line 73
    check-cast v10, Lcom/narvii/model/Blog;

    .line 74
    .line 75
    iget v10, v10, Lcom/narvii/model/Blog;->type:I

    .line 76
    .line 77
    if-ne v10, v9, :cond_5

    .line 78
    move v10, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    move v10, v4

    .line 81
    .line 82
    .line 83
    :goto_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 84
    move-result-object v11

    .line 85
    .line 86
    .line 87
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v11

    .line 89
    .line 90
    if-eqz v8, :cond_6

    .line 91
    return v9

    .line 92
    .line 93
    :cond_6
    if-eqz v10, :cond_7

    .line 94
    const/4 p1, 0x5

    .line 95
    return p1

    .line 96
    .line 97
    :cond_7
    if-eqz v0, :cond_8

    .line 98
    .line 99
    iget v8, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    .line 100
    .line 101
    if-ne v8, v2, :cond_8

    .line 102
    .line 103
    if-lez v1, :cond_8

    .line 104
    return v2

    .line 105
    :cond_8
    const/4 v8, 0x2

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    iget v9, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    .line 110
    .line 111
    if-ne v9, v8, :cond_b

    .line 112
    .line 113
    if-lez v1, :cond_b

    .line 114
    .line 115
    if-lez v5, :cond_a

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    check-cast p1, Lcom/narvii/model/Media;

    .line 122
    .line 123
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    .line 124
    .line 125
    const/16 v0, 0x67

    .line 126
    .line 127
    if-ne p1, v0, :cond_9

    .line 128
    .line 129
    const/16 p1, 0x9

    .line 130
    return p1

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Lcom/narvii/model/Media;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 140
    move-result p1

    .line 141
    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    const/16 p1, 0x8

    .line 145
    return p1

    .line 146
    :cond_a
    return v8

    .line 147
    :cond_b
    const/4 v3, 0x3

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    iget v5, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    .line 152
    .line 153
    if-ne v5, v3, :cond_c

    .line 154
    .line 155
    if-lez v1, :cond_c

    .line 156
    return v3

    .line 157
    .line 158
    :cond_c
    if-eqz v0, :cond_d

    .line 159
    .line 160
    iget v0, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    .line 161
    .line 162
    if-ne v0, v7, :cond_d

    .line 163
    return v7

    .line 164
    .line 165
    .line 166
    :cond_d
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isPromoted()Z

    .line 167
    move-result v0

    .line 168
    .line 169
    if-eqz v0, :cond_e

    .line 170
    return v8

    .line 171
    .line 172
    :cond_e
    if-eqz v6, :cond_f

    .line 173
    move-object v0, p1

    .line 174
    .line 175
    check-cast v0, Lcom/narvii/model/Blog;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isknownType()Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-nez v0, :cond_f

    .line 182
    .line 183
    const/16 p1, 0xa

    .line 184
    return p1

    .line 185
    .line 186
    .line 187
    :cond_f
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    if-eqz p1, :cond_10

    .line 191
    return v8

    .line 192
    .line 193
    :cond_10
    if-nez v1, :cond_11

    .line 194
    return v7

    .line 195
    .line 196
    :cond_11
    if-gt v1, v8, :cond_12

    .line 197
    .line 198
    if-nez v11, :cond_12

    .line 199
    return v2

    .line 200
    .line 201
    :cond_12
    if-le v1, v8, :cond_13

    .line 202
    return v3

    .line 203
    :cond_13
    return v4
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showLastReadTimePoint()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0xb

    .line 12
    :goto_0
    return v0
.end method

.method public getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    check-cast v9, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v9}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 10
    move-result v10

    .line 11
    const/4 v11, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    move-object/from16 v12, p2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v10}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getLayout(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    move-object/from16 v3, p3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v12, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    const v1, 0x7f0a0652

    .line 33
    .line 34
    .line 35
    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    move-object v13, v1

    .line 38
    .line 39
    check-cast v13, Lcom/narvii/feed/FeedListItem;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v13, v9}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 43
    .line 44
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13, v1, v2, v3}, Lcom/narvii/feed/FeedListItem;->setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .line 59
    const/high16 v3, 0x40c00000    # 6.0f

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 71
    move-result v2

    .line 72
    .line 73
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 81
    move-result v2

    .line 82
    .line 83
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 95
    move-result v1

    .line 96
    .line 97
    iget v2, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curLastPointFeedPosition:I

    .line 98
    .line 99
    add-int/lit8 v2, v2, -0xa

    .line 100
    const/4 v14, 0x0

    .line 101
    .line 102
    if-ne v1, v2, :cond_2

    .line 103
    .line 104
    iget-boolean v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 105
    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastTimeReadFeedId()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    iget-object v2, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v2, v14}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 116
    :cond_2
    const/4 v1, 0x7

    .line 117
    .line 118
    .line 119
    const v2, -0xc72764

    .line 120
    .line 121
    if-ne v10, v1, :cond_3

    .line 122
    .line 123
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    const/high16 v3, 0x40800000    # 4.0f

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 139
    move-result v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 143
    .line 144
    .line 145
    const v2, 0x7f0a07b2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-object v12

    .line 154
    .line 155
    :cond_3
    iget v1, v9, Lcom/narvii/model/Feed;->ndcId:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    .line 159
    move-result-object v1

    .line 160
    const/4 v15, 0x1

    .line 161
    .line 162
    if-eqz v1, :cond_4

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/narvii/model/Community;->getCommunityStyle()Lcom/narvii/model/CommunityStyle;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/narvii/model/Community;->getCommunityStyle()Lcom/narvii/model/CommunityStyle;

    .line 172
    move-result-object v4

    .line 173
    .line 174
    iget v4, v4, Lcom/narvii/model/CommunityStyle;->memberCountStyle:I

    .line 175
    .line 176
    if-ne v4, v15, :cond_4

    .line 177
    move v4, v15

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    move v4, v11

    .line 180
    .line 181
    :goto_1
    if-eqz v1, :cond_5

    .line 182
    .line 183
    iget-object v5, v1, Lcom/narvii/model/Community;->communityMembersSummary:Lcom/narvii/model/CommunityMemberSummary;

    .line 184
    .line 185
    if-eqz v5, :cond_5

    .line 186
    .line 187
    iget v5, v5, Lcom/narvii/model/CommunityMemberSummary;->membersCount:I

    .line 188
    goto :goto_2

    .line 189
    :cond_5
    move v5, v11

    .line 190
    .line 191
    :goto_2
    if-eqz v4, :cond_6

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_6
    if-nez v1, :cond_7

    .line 195
    move v5, v11

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_7
    iget v5, v1, Lcom/narvii/model/Community;->membersCount:I

    .line 199
    .line 200
    .line 201
    :goto_3
    const v6, 0x7f0a0948

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v6

    .line 206
    .line 207
    check-cast v6, Landroid/widget/TextView;

    .line 208
    .line 209
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 210
    .line 211
    .line 212
    invoke-static {v7}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 213
    move-result-object v7

    .line 214
    int-to-long v2, v5

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    if-eqz v4, :cond_8

    .line 225
    .line 226
    .line 227
    const v5, 0x7f120c5b

    .line 228
    goto :goto_4

    .line 229
    .line 230
    .line 231
    :cond_8
    const v5, 0x7f121023

    .line 232
    .line 233
    :goto_4
    new-array v7, v15, [Ljava/lang/Object;

    .line 234
    .line 235
    aput-object v2, v7, v11

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    new-instance v5, Landroid/text/SpannableString;

    .line 242
    .line 243
    .line 244
    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 247
    .line 248
    .line 249
    invoke-direct {v3, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 253
    move-result v2

    .line 254
    .line 255
    const/16 v7, 0x21

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v3, v11, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    if-eqz v4, :cond_9

    .line 264
    .line 265
    .line 266
    const v2, -0xc72764

    .line 267
    goto :goto_5

    .line 268
    .line 269
    .line 270
    :cond_9
    const v2, -0x525145

    .line 271
    .line 272
    .line 273
    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    .line 275
    .line 276
    const v2, 0x7f0a0a58

    .line 277
    .line 278
    .line 279
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    move-result-object v2

    .line 281
    .line 282
    check-cast v2, Landroid/widget/ImageView;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 286
    move-result-object v3

    .line 287
    const/4 v5, -0x2

    .line 288
    .line 289
    if-eqz v4, :cond_a

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 293
    move-result-object v6

    .line 294
    .line 295
    const/high16 v7, 0x40c00000    # 6.0f

    .line 296
    .line 297
    .line 298
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 299
    move-result v6

    .line 300
    float-to-int v6, v6

    .line 301
    goto :goto_6

    .line 302
    .line 303
    :cond_a
    const/high16 v7, 0x40c00000    # 6.0f

    .line 304
    move v6, v5

    .line 305
    .line 306
    :goto_6
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    .line 308
    if-eqz v4, :cond_b

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 312
    move-result-object v5

    .line 313
    .line 314
    .line 315
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 316
    move-result v5

    .line 317
    float-to-int v5, v5

    .line 318
    .line 319
    :cond_b
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 320
    .line 321
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 323
    move-result-object v3

    .line 324
    .line 325
    if-eqz v4, :cond_c

    .line 326
    .line 327
    .line 328
    const v4, 0x7f080836

    .line 329
    goto :goto_7

    .line 330
    .line 331
    .line 332
    :cond_c
    const v4, 0x7f0804a3

    .line 333
    .line 334
    .line 335
    :goto_7
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 336
    move-result-object v3

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    .line 341
    .line 342
    const v2, 0x7f0a036c

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    move-result-object v2

    .line 347
    .line 348
    if-eqz v2, :cond_d

    .line 349
    .line 350
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    :cond_d
    const v2, 0x7f0a0588

    .line 357
    .line 358
    .line 359
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    move-result-object v2

    .line 361
    .line 362
    instance-of v3, v2, Lcom/narvii/feed/FeedToolbarLayout;

    .line 363
    .line 364
    if-eqz v3, :cond_e

    .line 365
    .line 366
    check-cast v2, Lcom/narvii/feed/FeedToolbarLayout;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v15}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 370
    .line 371
    .line 372
    :cond_e
    const v2, 0x7f0a058e

    .line 373
    .line 374
    .line 375
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object v2

    .line 377
    .line 378
    if-eqz v2, :cond_f

    .line 379
    .line 380
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 389
    .line 390
    .line 391
    :cond_f
    const v2, 0x7f0a0589

    .line 392
    .line 393
    .line 394
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    move-result-object v2

    .line 396
    .line 397
    if-eqz v2, :cond_10

    .line 398
    .line 399
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    .line 404
    .line 405
    :cond_10
    const v2, 0x7f0a0d88

    .line 406
    .line 407
    .line 408
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 409
    move-result-object v2

    .line 410
    .line 411
    if-eqz v2, :cond_11

    .line 412
    .line 413
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    :cond_11
    const v2, 0x7f0a058c

    .line 420
    .line 421
    .line 422
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 423
    move-result-object v2

    .line 424
    .line 425
    const/16 v8, 0x8

    .line 426
    .line 427
    if-eqz v2, :cond_12

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    :cond_12
    const v2, 0x7f0a0574

    .line 434
    .line 435
    .line 436
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 437
    move-result-object v2

    .line 438
    .line 439
    if-eqz v2, :cond_13

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    :cond_13
    const v2, 0x7f0a0653

    .line 446
    .line 447
    .line 448
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 449
    move-result-object v2

    .line 450
    .line 451
    if-eqz v2, :cond_14

    .line 452
    .line 453
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    :cond_14
    const v2, 0x7f0a0f47

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 463
    move-result-object v2

    .line 464
    .line 465
    if-eqz v2, :cond_16

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showUserHeader()Z

    .line 469
    move-result v3

    .line 470
    .line 471
    if-eqz v3, :cond_15

    .line 472
    move v3, v11

    .line 473
    goto :goto_8

    .line 474
    :cond_15
    move v3, v8

    .line 475
    .line 476
    .line 477
    :goto_8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    :cond_16
    const v2, 0x7f0a0f38

    .line 481
    .line 482
    .line 483
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 484
    move-result-object v2

    .line 485
    .line 486
    if-eqz v2, :cond_17

    .line 487
    .line 488
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    .line 493
    :cond_17
    if-ne v10, v8, :cond_18

    .line 494
    .line 495
    instance-of v2, v9, Lcom/narvii/model/Blog;

    .line 496
    .line 497
    if-eqz v2, :cond_18

    .line 498
    .line 499
    .line 500
    const v2, 0x7f0a06eb

    .line 501
    .line 502
    .line 503
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 504
    move-result-object v2

    .line 505
    .line 506
    if-eqz v2, :cond_18

    .line 507
    .line 508
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    .line 513
    .line 514
    :cond_18
    const v2, 0x7f0a056a

    .line 515
    .line 516
    .line 517
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 518
    move-result-object v2

    .line 519
    .line 520
    check-cast v2, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 524
    move-result-object v3

    .line 525
    .line 526
    if-eqz v2, :cond_1b

    .line 527
    .line 528
    if-eqz v3, :cond_1b

    .line 529
    .line 530
    iget-object v4, v3, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    .line 531
    .line 532
    if-eqz v4, :cond_19

    .line 533
    move v4, v11

    .line 534
    goto :goto_9

    .line 535
    :cond_19
    move v4, v8

    .line 536
    .line 537
    .line 538
    :goto_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 544
    move-result-object v5

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 548
    move-result v4

    .line 549
    .line 550
    if-eqz v4, :cond_1a

    .line 551
    .line 552
    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 556
    move-result-object v5

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    move-result-object v4

    .line 561
    .line 562
    check-cast v4, Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 566
    move-result v4

    .line 567
    goto :goto_a

    .line 568
    :cond_1a
    move v4, v11

    .line 569
    .line 570
    :goto_a
    iget-object v3, v3, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, v3, v4}, Lcom/narvii/headlines/HeadlineFeatureLabel;->setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V

    .line 574
    .line 575
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    .line 580
    .line 581
    :cond_1b
    const v2, 0x7f0a0370

    .line 582
    .line 583
    .line 584
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 585
    move-result-object v2

    .line 586
    .line 587
    check-cast v2, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;

    .line 588
    .line 589
    if-eqz v2, :cond_1d

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v1, v9, v14}, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->setCommunity(Lcom/narvii/model/Community;Lcom/narvii/model/Feed;Landroid/graphics/Typeface;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showUserHeader()Z

    .line 596
    move-result v1

    .line 597
    .line 598
    if-eqz v1, :cond_1c

    .line 599
    move v1, v8

    .line 600
    goto :goto_b

    .line 601
    :cond_1c
    move v1, v11

    .line 602
    .line 603
    .line 604
    :goto_b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :cond_1d
    const/4 v7, 0x4

    .line 606
    const/4 v6, -0x1

    .line 607
    .line 608
    if-ne v10, v7, :cond_1e

    .line 609
    const/4 v1, 0x3

    .line 610
    .line 611
    move/from16 v16, v1

    .line 612
    goto :goto_c

    .line 613
    .line 614
    :cond_1e
    move/from16 v16, v6

    .line 615
    .line 616
    .line 617
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showPromote()Z

    .line 618
    move-result v3

    .line 619
    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showSortedImage()Z

    .line 622
    move-result v4

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->hideCaption()Z

    .line 626
    move-result v5

    .line 627
    move-object v1, v13

    .line 628
    move-object v2, v9

    .line 629
    move v14, v6

    .line 630
    .line 631
    move/from16 v6, v16

    .line 632
    .line 633
    move/from16 v7, v16

    .line 634
    .line 635
    move/from16 v8, v16

    .line 636
    .line 637
    .line 638
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;ZZZIII)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v13, v15, v14}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 642
    .line 643
    .line 644
    const v1, 0x7f0a0e9e

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 648
    move-result-object v1

    .line 649
    .line 650
    check-cast v1, Landroid/widget/TextView;

    .line 651
    .line 652
    if-eqz v1, :cond_1f

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    .line 657
    .line 658
    :cond_1f
    const v1, 0x7f0a0408

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 662
    move-result-object v1

    .line 663
    .line 664
    instance-of v2, v1, Landroid/widget/TextView;

    .line 665
    .line 666
    if-eqz v2, :cond_20

    .line 667
    .line 668
    check-cast v1, Landroid/widget/TextView;

    .line 669
    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 672
    move-result-object v2

    .line 673
    .line 674
    .line 675
    invoke-static {v2}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 676
    move-result-object v2

    .line 677
    .line 678
    iget-object v3, v9, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2, v3}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    .line 682
    move-result-object v2

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    .line 687
    .line 688
    :cond_20
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 689
    move-result-object v1

    .line 690
    .line 691
    if-eqz v1, :cond_21

    .line 692
    .line 693
    .line 694
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 695
    move-result-object v1

    .line 696
    .line 697
    .line 698
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 699
    move-result v1

    .line 700
    .line 701
    if-lez v1, :cond_21

    .line 702
    .line 703
    .line 704
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 705
    move-result-object v1

    .line 706
    .line 707
    .line 708
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 709
    move-result-object v1

    .line 710
    .line 711
    check-cast v1, Lcom/narvii/model/Media;

    .line 712
    move-object v4, v1

    .line 713
    .line 714
    const/16 v1, 0x8

    .line 715
    goto :goto_d

    .line 716
    .line 717
    :cond_21
    const/16 v1, 0x8

    .line 718
    const/4 v4, 0x0

    .line 719
    .line 720
    :goto_d
    if-eq v10, v1, :cond_22

    .line 721
    .line 722
    const/16 v1, 0x9

    .line 723
    .line 724
    if-ne v10, v1, :cond_24

    .line 725
    .line 726
    .line 727
    :cond_22
    const v2, 0x7f0a06eb

    .line 728
    .line 729
    .line 730
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 731
    move-result v1

    .line 732
    .line 733
    if-eqz v1, :cond_23

    .line 734
    .line 735
    .line 736
    invoke-virtual {v9, v15}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 737
    move-result-object v1

    .line 738
    :goto_e
    move-object v3, v1

    .line 739
    goto :goto_f

    .line 740
    .line 741
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    .line 742
    .line 743
    .line 744
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 745
    goto :goto_e

    .line 746
    :goto_f
    const/4 v6, 0x0

    .line 747
    const/4 v7, 0x1

    .line 748
    move-object v1, v12

    .line 749
    move-object v5, v9

    .line 750
    .line 751
    .line 752
    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 753
    .line 754
    :cond_24
    instance-of v1, v9, Lcom/narvii/model/Blog;

    .line 755
    .line 756
    if-eqz v1, :cond_26

    .line 757
    move-object v1, v9

    .line 758
    .line 759
    check-cast v1, Lcom/narvii/model/Blog;

    .line 760
    .line 761
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 762
    const/4 v2, 0x4

    .line 763
    .line 764
    if-ne v1, v2, :cond_26

    .line 765
    .line 766
    .line 767
    const v1, 0x7f0a0b17

    .line 768
    .line 769
    .line 770
    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 771
    move-result-object v1

    .line 772
    .line 773
    instance-of v2, v1, Lcom/narvii/poll/PollOptionListLayout;

    .line 774
    .line 775
    if-eqz v2, :cond_26

    .line 776
    .line 777
    iget v2, v9, Lcom/narvii/model/Feed;->ndcId:I

    .line 778
    .line 779
    .line 780
    invoke-direct {v0, v2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    .line 781
    move-result v2

    .line 782
    .line 783
    check-cast v1, Lcom/narvii/poll/PollOptionListLayout;

    .line 784
    .line 785
    xor-int/lit8 v3, v2, 0x1

    .line 786
    .line 787
    iput-boolean v3, v1, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 788
    .line 789
    if-eqz v2, :cond_25

    .line 790
    const/4 v14, 0x0

    .line 791
    goto :goto_10

    .line 792
    .line 793
    :cond_25
    new-instance v14, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;

    .line 794
    .line 795
    .line 796
    invoke-direct {v14, v0, v9}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Feed;)V

    .line 797
    .line 798
    .line 799
    :goto_10
    invoke-virtual {v1, v14}, Lcom/narvii/poll/PollOptionListLayout;->setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V

    .line 800
    .line 801
    :cond_26
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 802
    .line 803
    if-eqz v1, :cond_27

    .line 804
    .line 805
    .line 806
    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 807
    move-result-object v2

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 811
    move-result v1

    .line 812
    .line 813
    if-eqz v1, :cond_27

    .line 814
    move v11, v15

    .line 815
    .line 816
    .line 817
    :cond_27
    invoke-virtual {v13, v11}, Lcom/narvii/feed/FeedListItem;->setProgress(Z)V

    .line 818
    return-object v12
.end method

.method public getLayout(I)I
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const p1, 0x7f0d0401

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const p1, 0x7f0d03fe

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    const v1, 0x7f0d03fc

    if-ne p1, v0, :cond_3

    :cond_2
    move p1, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const p1, 0x7f0d03fa

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const p1, 0x7f0d03ff

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    const p1, 0x7f0d03fd

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    const p1, 0x7f0d0400

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    const p1, 0x7f0d03f9

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const p1, 0x7f0d03fb

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    const p1, 0x7f0d0402

    :goto_0
    return p1
.end method

.method protected getStoredLastTimeFeedId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hideCaption()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ignoreExtension()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isHeadline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected lastTimeReadFeedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    return-object v0
.end method

.method protected launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 16
    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 7
    return-void
.end method

.method protected longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showLastReadTimePoint()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/model/Feed;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastTimeReadFeedId()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 77
    move-result v3

    .line 78
    .line 79
    iput v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curLastPointFeedPosition:I

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    :cond_2
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_3
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 10
    return-void
.end method

.method protected onFeedQuizStarted(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onFeedQuizStarted(Lcom/narvii/model/Blog;)V

    .line 13
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    iget-object v3, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v5

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onLastReadPointClicked()V

    .line 19
    return v4

    .line 20
    .line 21
    :cond_0
    instance-of v3, v1, Lcom/narvii/model/Feed;

    .line 22
    .line 23
    if-eqz v3, :cond_e

    .line 24
    .line 25
    new-instance v3, Lcom/narvii/util/PackageUtils;

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 36
    move-object v3, v1

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/Feed;

    .line 39
    .line 40
    iget v6, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v6}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    .line 44
    move-result-object v9

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 50
    move-result v6

    .line 51
    .line 52
    const/16 v7, 0xa

    .line 53
    .line 54
    if-ne v6, v7, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    .line 61
    const v3, 0x7f120157

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2, v3}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 68
    return v4

    .line 69
    :cond_1
    const/4 v6, 0x0

    .line 70
    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 75
    move-result v7

    .line 76
    .line 77
    .line 78
    const v8, 0x7f0a036c

    .line 79
    .line 80
    if-ne v7, v8, :cond_7

    .line 81
    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v3, "headline : empty community info "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static/range {p3 .. p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 107
    return v4

    .line 108
    .line 109
    :cond_2
    iget v5, v9, Lcom/narvii/model/Community;->id:I

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    .line 113
    move-result v5

    .line 114
    .line 115
    if-eqz v5, :cond_6

    .line 116
    .line 117
    sget-object v5, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v5}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v9}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 131
    .line 132
    instance-of v5, v1, Lcom/narvii/app/NVFragment;

    .line 133
    .line 134
    if-eqz v5, :cond_3

    .line 135
    .line 136
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 140
    move-result-object v1

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_3
    instance-of v5, v1, Lcom/narvii/app/NVActivity;

    .line 144
    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    move-object v1, v6

    .line 150
    .line 151
    :goto_0
    if-eqz v1, :cond_5

    .line 152
    .line 153
    new-instance v3, Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 154
    .line 155
    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 156
    .line 157
    iget-object v7, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v5, v7, v1}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    .line 161
    .line 162
    .line 163
    const v1, 0x7f0a036b

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v9, v1, v6}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    .line 173
    goto :goto_1

    .line 174
    .line 175
    :cond_5
    new-instance v7, Lcom/narvii/community/CommunityLaunchHelper;

    .line 176
    .line 177
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-direct {v7, v0, v1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 181
    .line 182
    iget v8, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v8}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityTimestamp(I)Ljava/lang/String;

    .line 186
    move-result-object v10

    .line 187
    const/4 v11, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    const/4 v14, 0x0

    .line 191
    const/4 v15, 0x0

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {v7 .. v15}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 195
    goto :goto_1

    .line 196
    .line 197
    :cond_6
    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v9}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v9, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V

    .line 216
    :goto_1
    return v4

    .line 217
    .line 218
    :cond_7
    if-eqz v2, :cond_a

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 222
    move-result v7

    .line 223
    .line 224
    .line 225
    const v8, 0x7f0a0f38

    .line 226
    .line 227
    if-ne v7, v8, :cond_a

    .line 228
    .line 229
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    .line 230
    .line 231
    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 232
    .line 233
    .line 234
    invoke-direct {v1, v2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 235
    .line 236
    iget v2, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 237
    .line 238
    if-eqz v2, :cond_8

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2, v6}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    .line 242
    move-result v1

    .line 243
    .line 244
    if-eqz v1, :cond_9

    .line 245
    .line 246
    :cond_8
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 247
    .line 248
    iget-object v2, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    const-string v2, "__communityId"

    .line 255
    .line 256
    iget v3, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 263
    :cond_9
    return v4

    .line 264
    .line 265
    :cond_a
    if-eqz v2, :cond_e

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 269
    move-result v6

    .line 270
    .line 271
    .line 272
    const v7, 0x7f0a056a

    .line 273
    .line 274
    if-ne v6, v7, :cond_e

    .line 275
    .line 276
    instance-of v1, v2, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 277
    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 284
    move-result-object v6

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 288
    move-result v1

    .line 289
    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 296
    move-result-object v6

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-result-object v1

    .line 301
    .line 302
    check-cast v1, Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 306
    move-result v1

    .line 307
    .line 308
    if-nez v1, :cond_b

    .line 309
    move-object v1, v2

    .line 310
    .line 311
    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->expand()V

    .line 315
    .line 316
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 320
    move-result-object v2

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    goto :goto_2

    .line 325
    :cond_b
    move-object v1, v2

    .line 326
    .line 327
    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->collapse()V

    .line 331
    .line 332
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 336
    move-result-object v2

    .line 337
    const/4 v3, 0x0

    .line 338
    .line 339
    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    move-result-object v3

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    goto :goto_2

    .line 346
    :cond_c
    move-object v1, v2

    .line 347
    .line 348
    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->expand()V

    .line 352
    .line 353
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 357
    move-result-object v2

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_d
    :goto_2
    return v4

    .line 362
    .line 363
    .line 364
    :cond_e
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 365
    move-result v1

    .line 366
    return v1
.end method

.method protected onLastReadPointClicked()V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p3, v0, :cond_2

    const-string v0, "start0"

    .line 2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    iput-boolean v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 3
    iget-object v0, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    goto :goto_3

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    .line 8
    iget-object v0, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    goto :goto_3

    :cond_4
    iput-object v2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    .line 9
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 10
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->hsid:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->currentHsid:Ljava/lang/String;

    .line 11
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    .line 13
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Community;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    .line 14
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 15
    :cond_6
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->userProfileMapping:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    .line 17
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    :try_start_0
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_a

    .line 20
    :catch_0
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object p1

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p1, :cond_a

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 24
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 26
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    if-eqz v2, :cond_8

    .line 27
    iget v4, v2, Lcom/narvii/model/Media;->type:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_8

    .line 28
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v10, Lcom/narvii/youtube/YoutubeLoggingStub;

    iget v5, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v7

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    move-object v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/narvii/youtube/YoutubeLoggingStub;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2, v10}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 32
    invoke-virtual {p1, p3, v0}, Lcom/narvii/youtube/YoutubeService;->preload(Ljava/util/List;Landroidx/collection/ArrayMap;)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/headlines/HeadlineLaunchHelper;->onPageResponse(Lcom/narvii/headlines/HeadlineListResponse;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected onVoteSuccess(Lcom/narvii/model/Feed;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onVoteSuccess(Lcom/narvii/model/Feed;I)V

    .line 4
    return-void
.end method

.method protected openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->channelId()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    iget-object v5, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->currentHsid:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->enterCommunityDirectly()Z

    .line 16
    move-result v6

    .line 17
    move-object v2, p1

    .line 18
    move v4, p2

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/headlines/HeadlineLaunchHelper;->launchFeed(ILcom/narvii/model/Feed;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 22
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/headlines/HeadlineListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/headlines/HeadlineListResponse;

    return-object v0
.end method

.method public setFeedRelatedCommunityList(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    return-void
.end method

.method public setUserProgfileMapping(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    return-void
.end method

.method protected shouldShowDownloadMasterDialog(I)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/master/MasterHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method protected showJoinCommunityDialog(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    .line 17
    return-void
.end method

.method protected showLastReadTimePoint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showPromote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showRepostOnShare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showSortedImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showUserHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected storeLastTimeReadFeedId()V
    .locals 0

    return-void
.end method

.method protected useDefaultImpressionCollector()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 13
    return-void
.end method
