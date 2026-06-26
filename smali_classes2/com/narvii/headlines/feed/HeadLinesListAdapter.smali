.class public abstract Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.super Lcom/narvii/feed/BaseFeedListAdapter;
.source "HeadLinesListAdapter.java"


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

    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 100
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqTime"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->REQ_TAG_QUERY_START_TIME:Lcom/narvii/util/Tag;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    .line 118
    new-instance v0, Lcom/narvii/model/Blog;

    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    const-string v0, "Headlines"

    .line 142
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v0, "account"

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "affiliations"

    .line 145
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 146
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getStoredLastTimeFeedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    const-string v0, "logging"

    .line 147
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 148
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curUser:Lcom/narvii/model/User;

    const-string/jumbo v0, "youtube"

    .line 149
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 152
    new-instance p1, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;

    const-class v0, Lcom/narvii/model/Feed;

    const v1, 0x7f0904fd

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$1;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Ljava/lang/Class;I)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V

    return-void
.end method

.method private gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V
    .locals 3

    .line 393
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 394
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    sget-object p1, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eventOrigin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "loggingObjectId"

    .line 399
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleOtherCommunityFeed(Lcom/narvii/model/Feed;Lcom/narvii/model/Community;)V
    .locals 2

    .line 509
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/Feed;->getDeepLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 513
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clearTask"

    const/4 v0, 0x1

    .line 515
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "customFinishAnimIn"

    const/4 v0, 0x0

    .line 516
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "customFinishAnimOut"

    .line 517
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_0
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 525
    :cond_1
    iget-object p2, p2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 526
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private isJoinedThisCommunity(I)Z
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    return p1

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method protected channelId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public comment(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 356
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 357
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-direct {p0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-super {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 359
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-eqz v0, :cond_1

    .line 360
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;IZ)V

    :goto_0
    return-void
.end method

.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 0

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

    .line 192
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

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

    .line 186
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

    .line 266
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eqz v0, :cond_2

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 270
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    .line 272
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    :cond_1
    invoke-super {p0, v1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 278
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getCommunityInfo(I)Lcom/narvii/model/Community;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 546
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method protected getCommunityTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 553
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemType(Ljava/lang/Object;)I
    .locals 12

    .line 211
    check-cast p1, Lcom/narvii/model/Feed;

    .line 212
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curUser:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    return p1

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 221
    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-nez v3, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 223
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 224
    :goto_1
    instance-of v6, p1, Lcom/narvii/model/Blog;

    const/4 v7, 0x4

    if-eqz v6, :cond_4

    move-object v8, p1

    check-cast v8, Lcom/narvii/model/Blog;

    iget v9, v8, Lcom/narvii/model/Blog;->type:I

    if-ne v9, v7, :cond_4

    iget-object v8, v8, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x6

    if-eqz v6, :cond_5

    .line 225
    move-object v10, p1

    check-cast v10, Lcom/narvii/model/Blog;

    iget v10, v10, Lcom/narvii/model/Blog;->type:I

    if-ne v10, v9, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 226
    :goto_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v8, :cond_6

    return v9

    :cond_6
    if-eqz v10, :cond_7

    const/4 p1, 0x5

    return p1

    :cond_7
    if-eqz v0, :cond_8

    .line 231
    iget v8, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    if-ne v8, v2, :cond_8

    if-lez v1, :cond_8

    return v2

    :cond_8
    const/4 v8, 0x2

    if-eqz v0, :cond_b

    .line 233
    iget v9, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    if-ne v9, v8, :cond_b

    if-lez v1, :cond_b

    if-lez v5, :cond_a

    .line 235
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v0, 0x67

    if-ne p1, v0, :cond_9

    const/16 p1, 0x9

    return p1

    .line 237
    :cond_9
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x8

    return p1

    :cond_a
    return v8

    :cond_b
    const/4 v3, 0x3

    if-eqz v0, :cond_c

    .line 242
    iget v5, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    if-ne v5, v3, :cond_c

    if-lez v1, :cond_c

    return v3

    :cond_c
    if-eqz v0, :cond_d

    .line 244
    iget v0, v0, Lcom/narvii/model/HeadlineStyle;->layout:I

    if-ne v0, v7, :cond_d

    return v7

    .line 246
    :cond_d
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_e

    return v8

    :cond_e
    if-eqz v6, :cond_f

    .line 248
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isknownType()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 p1, 0xa

    return p1

    .line 250
    :cond_f
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_10

    return v8

    :cond_10
    if-nez v1, :cond_11

    return v7

    :cond_11
    if-gt v1, v8, :cond_12

    if-nez v11, :cond_12

    return v2

    :cond_12
    if-le v1, v8, :cond_13

    return v3

    :cond_13
    return v4
.end method

.method protected getItemTypeCount()I
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showLastReadTimePoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    return v0
.end method

.method public getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    .line 589
    move-object/from16 v9, p1

    check-cast v9, Lcom/narvii/model/Feed;

    .line 590
    invoke-virtual {v0, v9}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v12, p2

    goto :goto_0

    .line 596
    :cond_0
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v10}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getLayout(I)I

    move-result v2

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    :goto_0
    const v1, 0x7f0904fd

    .line 598
    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/narvii/feed/FeedListItem;

    .line 599
    invoke-virtual {v0, v13, v9}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 600
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v3, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v13, v1, v2, v3}, Lcom/narvii/feed/FeedListItem;->setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    .line 601
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 602
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x40c00000    # 6.0f

    if-eqz v2, :cond_1

    .line 603
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 606
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    .line 607
    iget v2, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curLastPointFeedPosition:I

    add-int/lit8 v2, v2, -0xa

    const/4 v14, 0x0

    if-ne v1, v2, :cond_2

    .line 608
    iget-boolean v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    if-nez v1, :cond_2

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastTimeReadFeedId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v14}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_2
    const/4 v1, 0x7

    const v2, -0xc72764

    if-ne v10, v1, :cond_3

    .line 613
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 614
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, 0x7f090631

    .line 616
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v12

    .line 621
    :cond_3
    iget v1, v9, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v1

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    .line 622
    invoke-virtual {v1}, Lcom/narvii/model/Community;->getCommunityStyle()Lcom/narvii/model/CommunityStyle;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/narvii/model/Community;->getCommunityStyle()Lcom/narvii/model/CommunityStyle;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/CommunityStyle;->memberCountStyle:I

    if-ne v4, v15, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 623
    iget-object v5, v1, Lcom/narvii/model/Community;->communityMembersSummary:Lcom/narvii/model/CommunityMemberSummary;

    if-eqz v5, :cond_5

    iget v5, v5, Lcom/narvii/model/CommunityMemberSummary;->membersCount:I

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    .line 624
    :cond_7
    iget v5, v1, Lcom/narvii/model/Community;->membersCount:I

    :goto_3
    const v6, 0x7f0906e7

    .line 626
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 627
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    int-to-long v2, v5

    invoke-virtual {v7, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v4, :cond_8

    const v5, 0x7f0f0b57

    goto :goto_4

    :cond_8
    const v5, 0x7f0f0f0c

    :goto_4
    new-array v7, v15, [Ljava/lang/Object;

    aput-object v2, v7, v11

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 629
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 630
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v11, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 631
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_9

    const v2, -0xc72764

    goto :goto_5

    :cond_9
    const v2, -0x525145

    .line 632
    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0907b4

    .line 634
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 635
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, -0x2

    if-eqz v4, :cond_a

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    goto :goto_6

    :cond_a
    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v6, -0x2

    :goto_6
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v4, :cond_b

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    :cond_b
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v4, :cond_c

    const v4, 0x7f08063f

    goto :goto_7

    :cond_c
    const v4, 0x7f08038a

    :goto_7
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0902a5

    .line 641
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 643
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const v2, 0x7f090451

    .line 646
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 647
    instance-of v3, v2, Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v3, :cond_e

    .line 648
    check-cast v2, Lcom/narvii/feed/FeedToolbarLayout;

    invoke-virtual {v2, v15}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    :cond_e
    const v2, 0x7f090457

    .line 651
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 653
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_f
    const v2, 0x7f090452

    .line 657
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 659
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v2, 0x7f090a91

    .line 662
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 664
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v2, 0x7f090455

    .line 667
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    if-eqz v2, :cond_12

    .line 669
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    const v2, 0x7f09043d

    .line 672
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 674
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    const v2, 0x7f0904fe

    .line 677
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 679
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v2, 0x7f090c23

    .line 682
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showUserHeader()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    goto :goto_8

    :cond_15
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    const v2, 0x7f090c12

    .line 687
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 689
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const/16 v7, 0x9

    if-ne v10, v8, :cond_18

    .line 693
    instance-of v2, v9, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_18

    move-object v2, v9

    check-cast v2, Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    if-ne v2, v7, :cond_18

    const v2, 0x7f090571

    .line 694
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 696
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    const v2, 0x7f090433

    .line 700
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/headlines/HeadlineFeatureLabel;

    .line 701
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object v3

    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1b

    .line 703
    iget-object v4, v3, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    goto :goto_9

    :cond_19
    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 704
    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_a

    :cond_1a
    const/4 v4, 0x0

    .line 705
    :goto_a
    iget-object v3, v3, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    invoke-virtual {v2, v3, v4}, Lcom/narvii/headlines/HeadlineFeatureLabel;->setFeatureTag(Lcom/narvii/model/FeaturedTag;I)V

    .line 706
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    const v2, 0x7f0902a9

    .line 709
    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;

    if-eqz v2, :cond_1d

    .line 711
    invoke-virtual {v2, v1, v9, v14}, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->setCommunity(Lcom/narvii/model/Community;Lcom/narvii/model/Feed;Landroid/graphics/Typeface;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showUserHeader()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x8

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1d
    const/4 v6, 0x4

    const/4 v5, -0x1

    if-ne v10, v6, :cond_1e

    const/4 v1, 0x3

    const/16 v16, 0x3

    goto :goto_c

    :cond_1e
    const/16 v16, -0x1

    .line 717
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showPromote()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showSortedImage()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->hideCaption()Z

    move-result v17

    move-object v1, v13

    move-object v2, v9

    const/4 v14, -0x1

    move/from16 v5, v17

    move/from16 v6, v16

    move/from16 v7, v16

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;ZZZIII)V

    .line 718
    invoke-virtual {v13, v15, v14}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    const v1, 0x7f090b9a

    .line 719
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    .line 721
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    const v1, 0x7f09032e

    .line 723
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 724
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_20

    .line 725
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v2

    iget-object v3, v9, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :cond_20
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    move-object v4, v1

    const/16 v1, 0x8

    goto :goto_d

    :cond_21
    const/16 v1, 0x8

    const/4 v4, 0x0

    :goto_d
    if-eq v10, v1, :cond_22

    const/16 v1, 0x9

    if-ne v10, v1, :cond_24

    :cond_22
    const v2, 0x7f090571

    .line 734
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v9, v15}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_e

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    move-object v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v12

    move-object v5, v9

    .line 732
    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 740
    :cond_24
    instance-of v1, v9, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_26

    move-object v1, v9

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    const v1, 0x7f09085d

    .line 741
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 742
    instance-of v2, v1, Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v2, :cond_26

    .line 743
    iget v2, v9, Lcom/narvii/model/Feed;->ndcId:I

    invoke-direct {v0, v2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    move-result v2

    .line 744
    check-cast v1, Lcom/narvii/poll/PollOptionListLayout;

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, v1, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    if-eqz v2, :cond_25

    const/4 v14, 0x0

    goto :goto_f

    .line 745
    :cond_25
    new-instance v14, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;

    invoke-direct {v14, v0, v9}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$3;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Feed;)V

    :goto_f
    invoke-virtual {v1, v14}, Lcom/narvii/poll/PollOptionListLayout;->setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V

    .line 753
    :cond_26
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-eqz v1, :cond_27

    invoke-virtual {v9}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_10

    :cond_27
    const/4 v15, 0x0

    :goto_10
    invoke-virtual {v13, v15}, Lcom/narvii/feed/FeedListItem;->setProgress(Z)V

    return-object v12
.end method

.method public getLayout(I)I
    .locals 2

    const v0, 0x7f0b03c6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const v0, 0x7f0b03cb

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const v0, 0x7f0b03c8

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const v0, 0x7f0b03c4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    const v0, 0x7f0b03c9

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    const v0, 0x7f0b03c7

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    const v0, 0x7f0b03ca

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    const v0, 0x7f0b03c3

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    const v0, 0x7f0b03c5

    goto :goto_0

    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_9

    const v0, 0x7f0b03cc

    :cond_9
    :goto_0
    return v0
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

    .line 283
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    return-object v0
.end method

.method protected launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/narvii/headlines/HeadlineLaunchHelper;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper:Lcom/narvii/headlines/HeadlineLaunchHelper;

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

    .line 320
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

    .line 768
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    .line 769
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    return-void
.end method

.method protected longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 1

    .line 368
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-direct {p0, v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V

    goto :goto_0

    .line 371
    :cond_0
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showJoinCommunityDialog(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 296
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 302
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    .line 303
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->showLastReadTimePoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    .line 305
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastTimeReadFeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->curLastPointFeedPosition:I

    .line 307
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    iget-object v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 v0, 0x0

    .line 851
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 853
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    return-void
.end method

.method protected onFeedQuizStarted(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 344
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onFeedQuizStarted(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 406
    iget-object v3, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastPointFeed:Lcom/narvii/model/Blog;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v1, v3, :cond_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onLastReadPointClicked()V

    return v4

    .line 411
    :cond_0
    instance-of v3, v1, Lcom/narvii/model/Feed;

    if-eqz v3, :cond_12

    .line 412
    new-instance v3, Lcom/narvii/util/PackageUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 413
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v3

    .line 414
    move-object v6, v1

    check-cast v6, Lcom/narvii/model/Feed;

    iget v7, v6, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v7}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v10

    .line 415
    sget v7, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v8, 0x65

    const v9, 0x7f090433

    if-ne v7, v8, :cond_2

    iget v7, v6, Lcom/narvii/model/Feed;->ndcId:I

    if-eq v3, v7, :cond_2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v3

    const v7, 0x7f090457

    if-eq v3, v7, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v9, :cond_2

    .line 418
    :cond_1
    invoke-direct {v0, v6, v10}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->handleOtherCommunityFeed(Lcom/narvii/model/Feed;Lcom/narvii/model/Community;)V

    return v4

    :cond_2
    if-nez v2, :cond_3

    .line 422
    invoke-virtual {v0, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v3

    const/16 v7, 0xa

    if-ne v3, v7, :cond_3

    .line 423
    new-instance v1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const v3, 0x7f0f0120

    invoke-direct {v1, v2, v3}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 424
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return v4

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 427
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0902a5

    if-ne v7, v8, :cond_9

    if-nez v10, :cond_4

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headline : empty community info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v4

    .line 432
    :cond_4
    iget v5, v10, Lcom/narvii/model/Community;->id:I

    invoke-direct {v0, v5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isJoinedThisCommunity(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 433
    sget-object v5, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1, v5}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 435
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v5, v1, Lcom/narvii/app/NVFragment;

    if-eqz v5, :cond_5

    .line 436
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    goto :goto_0

    .line 437
    :cond_5
    instance-of v5, v1, Lcom/narvii/app/NVActivity;

    if-eqz v5, :cond_6

    .line 438
    check-cast v1, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_6
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_7

    .line 441
    new-instance v5, Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    iget-object v6, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object v7, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    const v1, 0x7f0902a3

    .line 442
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v5, v10, v1, v3}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    goto :goto_1

    .line 444
    :cond_7
    new-instance v8, Lcom/narvii/community/CommunityLaunchHelper;

    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 445
    iget v9, v6, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v9}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityTimestamp(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_1

    .line 448
    :cond_8
    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 449
    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->gotoCommunityDetail(Lcom/narvii/model/Community;Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_9
    if-eqz v2, :cond_c

    .line 453
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f090c12

    if-ne v7, v8, :cond_c

    .line 454
    new-instance v1, Lcom/narvii/community/CommunityHelper;

    iget-object v2, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 455
    iget v2, v6, Lcom/narvii/model/Feed;->ndcId:I

    if-eqz v2, :cond_a

    invoke-virtual {v1, v2, v3}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 456
    :cond_a
    iget-object v1, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object v2, v6, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v1

    .line 457
    iget v2, v6, Lcom/narvii/model/Feed;->ndcId:I

    const-string v3, "__communityId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_b
    return v4

    :cond_c
    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 462
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v9, :cond_10

    .line 463
    instance-of v1, v2, Lcom/narvii/headlines/HeadlineFeatureLabel;

    if-eqz v1, :cond_f

    .line 464
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 465
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_d

    .line 467
    move-object v1, v2

    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->expand()V

    .line 468
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 470
    :cond_d
    move-object v1, v2

    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->collapse()V

    .line 471
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 474
    :cond_e
    move-object v1, v2

    check-cast v1, Lcom/narvii/headlines/HeadlineFeatureLabel;

    invoke-virtual {v1}, Lcom/narvii/headlines/HeadlineFeatureLabel;->expand()V

    .line 475
    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_2
    return v4

    :cond_10
    const/16 v5, 0x9

    if-eqz v2, :cond_11

    .line 480
    instance-of v7, v1, Lcom/narvii/model/Blog;

    if-eqz v7, :cond_11

    move-object v7, v1

    check-cast v7, Lcom/narvii/model/Blog;

    iget v8, v7, Lcom/narvii/model/Blog;->type:I

    if-ne v8, v5, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f090571

    if-ne v8, v9, :cond_11

    .line 481
    new-instance v1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v1, v7}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 482
    invoke-virtual {v1, v4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    const-string v3, "global-search-player"

    .line 483
    invoke-virtual {v1, v3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 487
    new-instance v3, Lcom/narvii/story/StoryHelper;

    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v3, v5}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, v2, v1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    .line 488
    invoke-virtual {v0, v7}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return v4

    :cond_11
    if-nez v2, :cond_12

    .line 491
    instance-of v7, v1, Lcom/narvii/model/Blog;

    if-eqz v7, :cond_12

    move-object v7, v1

    check-cast v7, Lcom/narvii/model/Blog;

    iget v8, v7, Lcom/narvii/model/Blog;->type:I

    if-ne v8, v5, :cond_12

    iget v5, v6, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v5, :cond_12

    .line 492
    new-instance v1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v1, v7}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 493
    invoke-virtual {v1, v3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 496
    invoke-virtual {v0, v7}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return v4

    .line 500
    :cond_12
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method protected onLastReadPointClicked()V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_2

    .line 787
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "start0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 799
    iput-boolean v2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    .line 800
    iget-object v3, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    goto :goto_3

    .line 788
    :cond_2
    :goto_1
    iget-object v3, p2, Lcom/narvii/headlines/HeadlineListResponse;->headlinePostList:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 789
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 790
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    .line 791
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    .line 792
    iget-object v3, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->middlePageToken:Ljava/lang/String;

    .line 793
    iput-boolean v2, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->isMiddlePageRequesting:Z

    goto :goto_3

    .line 796
    :cond_4
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->lastReadFeedId:Ljava/lang/String;

    .line 803
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 804
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->hsid:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->currentHsid:Ljava/lang/String;

    .line 805
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 806
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

    .line 807
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->communityTimestamps:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 811
    :cond_6
    iget-object p1, p2, Lcom/narvii/headlines/HeadlineListResponse;->userProfileMapping:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 812
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

    .line 813
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 820
    :cond_7
    :try_start_0
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 821
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :catch_0
    nop

    :goto_6
    if-eqz v1, :cond_b

    .line 825
    invoke-virtual {p2}, Lcom/narvii/headlines/HeadlineListResponse;->list()Ljava/util/List;

    move-result-object p1

    .line 826
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 827
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_b

    .line 829
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 830
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 831
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 832
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    if-eqz v3, :cond_9

    .line 833
    iget v4, v3, Lcom/narvii/model/Media;->type:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_9

    .line 834
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 835
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
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

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/narvii/youtube/YoutubeLoggingStub;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, v3, v10}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 841
    :cond_a
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p1, p3, v0}, Lcom/narvii/youtube/YoutubeService;->preload(Ljava/util/List;Landroid/support/v4/util/ArrayMap;)V

    .line 845
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/headlines/HeadlineLaunchHelper;->onPageResponse(Lcom/narvii/headlines/HeadlineListResponse;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 97
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected onVoteSuccess(Lcom/narvii/model/Feed;I)V
    .locals 0

    .line 377
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onVoteSuccess(Lcom/narvii/model/Feed;I)V

    return-void
.end method

.method protected openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 7

    .line 329
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->channelId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->currentHsid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->enterCommunityDirectly()Z

    move-result v6

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/narvii/headlines/HeadlineLaunchHelper;->launchFeed(ILcom/narvii/model/Feed;Ljava/lang/String;ILjava/lang/String;Z)V

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

    .line 197
    const-class v0, Lcom/narvii/headlines/HeadlineListResponse;

    return-object v0
.end method

.method public setFeedRelatedCommunityList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->feedRelatedCommunityList:Ljava/util/HashMap;

    return-void
.end method

.method public setUserProgfileMapping(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->userProgfileMapping:Ljava/util/HashMap;

    return-void
.end method

.method protected shouldShowDownloadMasterDialog(I)Z
    .locals 2

    .line 531
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Lcom/narvii/master/MasterHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 534
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 536
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected showJoinCommunityDialog(ILjava/lang/String;)V
    .locals 2

    .line 381
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 382
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter$2;-><init>(Lcom/narvii/headlines/feed/HeadLinesListAdapter;Lcom/narvii/model/Community;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

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

    .line 349
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->prepareEnterCommunity(I)V

    .line 350
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    return-void
.end method
