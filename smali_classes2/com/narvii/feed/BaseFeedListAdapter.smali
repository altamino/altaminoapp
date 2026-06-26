.class public abstract Lcom/narvii/feed/BaseFeedListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BaseFeedListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/NVActivity$DispatchTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/Feed;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/list/NVPagedAdapter<",
        "TT;TE;>;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/app/NVActivity$DispatchTouchEventListener;"
    }
.end annotation


# static fields
.field private static final EXTERNAL_POST_IMAGE_THRESHOLD:I = 0x2

.field private static final TYPE_BLOG:I = 0x0

.field private static final TYPE_DISABLE:I = 0xc

.field private static final TYPE_DISABLE_REF_OBJECT:I = 0x17

.field private static final TYPE_EXTERNAL_POST_LESS_IMAGE:I = 0x10

.field private static final TYPE_EXTERNAL_POST_NORMAL:I = 0x11

.field private static final TYPE_EXTERNAL_POST_NO_IMAGE:I = 0xf

.field private static final TYPE_EXTERNAL_POST_PROMOTED:I = 0xe

.field private static final TYPE_IMAGE:I = 0xd

.field private static final TYPE_ITEM:I = 0x1

.field private static final TYPE_LINK:I = 0x2

.field private static final TYPE_POLL:I = 0x5

.field private static final TYPE_QUIZ:I = 0x4

.field private static final TYPE_REPOST_BLOG:I = 0x6

.field private static final TYPE_REPOST_EXTERNAL:I = 0x12

.field private static final TYPE_REPOST_IMAGE:I = 0x13

.field private static final TYPE_REPOST_ITEM:I = 0x7

.field private static final TYPE_REPOST_NULL:I = 0xb

.field private static final TYPE_REPOST_POLL:I = 0xa

.field private static final TYPE_REPOST_QUIZ:I = 0x9

.field private static final TYPE_REPOST_STORY:I = 0x15

.field private static final TYPE_REPOST_TOPIC:I = 0x8

.field private static final TYPE_STORY:I = 0x14

.field private static final TYPE_TOPIC:I = 0x3

.field private static final TYPE_UNKNOWN:I = 0x16


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field private apiRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apiRequestTimeStamp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curUser:Lcom/narvii/model/User;

.field isLoadingQuiz:Z

.field loadingQuizView:Landroid/view/View;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field private pageTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected progressList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private responseSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public shareSource:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

.field voteCallback:Lcom/narvii/util/Callback;

.field protected voteIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 142
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    const-string v0, "Feed"

    .line 122
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 132
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/BaseFeedListAdapter$1;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    .line 169
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/feed/BaseFeedListAdapter$2;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    const-string v0, "account"

    .line 143
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 144
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->curUser:Lcom/narvii/model/User;

    .line 145
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, p0}, Lcom/narvii/app/NVActivity;->addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    if-eqz v0, :cond_1

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;->getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    if-eqz v1, :cond_1

    .line 151
    check-cast v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setVideoViewClickListener(Lcom/narvii/nvplayerview/listener/VideoViewClickListener;)V

    .line 154
    :cond_1
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private resetStartQuizView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090a92

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090a95

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090a94

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setLoadingQuizView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 506
    iput-boolean p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    goto :goto_0

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    const/4 p1, 0x1

    .line 510
    iput-boolean p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected allowShowDisable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public comment(Lcom/narvii/model/Feed;)V
    .locals 1

    const/4 v0, -0x1

    .line 947
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;I)V

    return-void
.end method

.method public comment(Lcom/narvii/model/Feed;I)V
    .locals 1

    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;IZ)V

    return-void
.end method

.method public comment(Lcom/narvii/model/Feed;IZ)V
    .locals 8

    .line 956
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    instance-of v3, p1, Lcom/narvii/model/Item;

    if-eqz v3, :cond_1

    .line 957
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v3, "__interactionScope"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    .line 961
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 962
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v6

    const-string v7, "parentType"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    const-string v7, "parentId"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 965
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const-string v6, "parentSubType"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 967
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "feed"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eq p2, v4, :cond_3

    .line 969
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    const-string v0, "__communityId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    invoke-static {p0, p1, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "stat_parent_type"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_4

    .line 974
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez p2, :cond_5

    move-object p2, v5

    goto :goto_0

    .line 975
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "loggingSource"

    .line 974
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string p2, "loggingOrigin"

    invoke-virtual {v2, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "autoJoin"

    .line 977
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 978
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    const-string p2, "isAnnouncement"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 980
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    goto :goto_4

    .line 982
    :cond_7
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    if-eq p2, v4, :cond_8

    .line 984
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->communityId(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 986
    :cond_8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 987
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 988
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 989
    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    if-eqz p3, :cond_9

    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    .line 990
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v0, :cond_a

    move-object v0, v5

    goto :goto_2

    .line 991
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 990
    :goto_2
    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->loggingSource(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v0, :cond_b

    goto :goto_3

    .line 992
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {p2, v5}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->loggingOrigin(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 993
    invoke-virtual {p2, p3}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->autoJoin(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 994
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->isAnnouncement(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 995
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 996
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected fromQuizFeedList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "FeedsList"

    return-object v0
.end method

.method protected getFeedBlogLayout()I
    .locals 1

    const v0, 0x7f0b0214

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 203
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 204
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 206
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 10

    .line 234
    check-cast p1, Lcom/narvii/model/Feed;

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    return v1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->allowShowDisable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 241
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const/16 v1, 0x16

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 242
    check-cast p1, Lcom/narvii/model/Blog;

    .line 243
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    return v3

    :cond_2
    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    const/16 p1, 0x14

    return p1

    :cond_3
    if-ne v0, v2, :cond_4

    .line 250
    iget-object v0, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of v0, v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_4

    return v2

    .line 253
    :cond_4
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne v0, v9, :cond_e

    .line 254
    iget-object p1, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_c

    .line 255
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 256
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x17

    return p1

    .line 259
    :cond_5
    iget p1, v0, Lcom/narvii/model/Blog;->type:I

    if-ne p1, v8, :cond_6

    return v2

    :cond_6
    if-ne p1, v5, :cond_7

    return v4

    :cond_7
    if-ne p1, v7, :cond_8

    const/16 p1, 0xa

    return p1

    :cond_8
    if-ne p1, v2, :cond_9

    const/16 p1, 0x12

    return p1

    :cond_9
    if-ne p1, v6, :cond_a

    const/16 p1, 0x13

    return p1

    :cond_a
    if-ne p1, v4, :cond_b

    const/16 p1, 0x15

    return p1

    :cond_b
    return v5

    .line 274
    :cond_c
    instance-of p1, p1, Lcom/narvii/model/Item;

    if-eqz p1, :cond_d

    return v6

    :cond_d
    const/16 p1, 0xb

    return p1

    :cond_e
    if-ne v0, v8, :cond_f

    return v8

    :cond_f
    const/4 v4, 0x5

    if-ne v0, v7, :cond_10

    return v4

    :cond_10
    if-ne v0, v4, :cond_12

    .line 287
    iget-object p1, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_11

    return v9

    :cond_11
    return v3

    :cond_12
    if-ne v0, v5, :cond_13

    return v7

    :cond_13
    if-ne v0, v6, :cond_14

    const/16 p1, 0xd

    return p1

    :cond_14
    if-ne v0, v2, :cond_17

    .line 301
    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 302
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez v0, :cond_15

    const/16 p1, 0xf

    return p1

    :cond_15
    if-gt v0, v9, :cond_16

    if-nez p1, :cond_16

    const/16 p1, 0x10

    return p1

    :cond_16
    const/16 p1, 0x11

    return p1

    :cond_17
    return v1

    .line 312
    :cond_18
    instance-of p1, p1, Lcom/narvii/model/Item;

    if-eqz p1, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 324
    move-object v7, p1

    check-cast v7, Lcom/narvii/model/Feed;

    .line 326
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const v0, 0x7f090571

    const v1, 0x7f090a91

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_1

    .line 328
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    if-eqz p3, :cond_0

    .line 329
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    goto/16 :goto_1

    :cond_0
    return-object p2

    :cond_1
    packed-switch p1, :pswitch_data_0

    const-string p1, "ERR"

    .line 409
    invoke-virtual {p0, p3, v2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_0
    const p2, 0x7f0b021d

    goto/16 :goto_0

    :pswitch_1
    const p2, 0x7f0b0215

    goto/16 :goto_0

    :pswitch_2
    const p2, 0x7f0b024b

    goto :goto_0

    :pswitch_3
    const p2, 0x7f0b024d

    goto :goto_0

    :pswitch_4
    const p2, 0x7f0b0246

    goto :goto_0

    :pswitch_5
    const p2, 0x7f0b0245

    goto :goto_0

    :pswitch_6
    const p2, 0x7f0b0212

    goto :goto_0

    :pswitch_7
    const p2, 0x7f0b0210

    goto :goto_0

    :pswitch_8
    const p2, 0x7f0b0211

    goto :goto_0

    :pswitch_9
    const p2, 0x7f0b0213

    goto :goto_0

    :pswitch_a
    const p2, 0x7f0b0225

    goto :goto_0

    :pswitch_b
    const p2, 0x7f0b0226

    goto :goto_0

    :pswitch_c
    const p2, 0x7f0b0248

    goto :goto_0

    :pswitch_d
    const p2, 0x7f0b0249

    goto :goto_0

    :pswitch_e
    const p2, 0x7f0b024a

    goto :goto_0

    :pswitch_f
    const p2, 0x7f0b024c

    goto :goto_0

    :pswitch_10
    const p2, 0x7f0b0247

    goto :goto_0

    :pswitch_11
    const p2, 0x7f0b0244

    goto :goto_0

    :pswitch_12
    const p2, 0x7f0b0231

    goto :goto_0

    :pswitch_13
    const p2, 0x7f0b0237

    goto :goto_0

    :pswitch_14
    const p2, 0x7f0b0253

    goto :goto_0

    :pswitch_15
    const p2, 0x7f0b022b

    goto :goto_0

    :pswitch_16
    const p2, 0x7f0b0228

    goto :goto_0

    .line 337
    :pswitch_17
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->getFeedBlogLayout()I

    move-result p2

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 412
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v4, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {p2, p3, v3, v4}, Lcom/narvii/feed/FeedListItem;->setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    const p3, 0x7f090c12

    .line 413
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 415
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p3, 0x7f090457

    .line 417
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 419
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    const p3, 0x7f090452

    .line 422
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p3, 0x7f090455

    .line 426
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 428
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p3, 0x7f09043d

    .line 430
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 432
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    :cond_6
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 436
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/16 p3, 0x14

    if-ne p1, p3, :cond_8

    .line 439
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 441
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :cond_8
    :goto_1
    iget-object p3, p2, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p3, :cond_9

    .line 448
    iget-object v3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p3, v3}, Lcom/narvii/poll/PollOptionListLayout;->setVoteCallback(Lcom/narvii/util/Callback;)V

    .line 451
    :cond_9
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 453
    invoke-direct {p0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    :cond_a
    const/16 p3, 0x16

    if-ne p1, p3, :cond_b

    .line 456
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setUnknownFeed(Lcom/narvii/model/Feed;)V

    goto :goto_2

    :cond_b
    const/16 p3, 0xc

    if-ne p1, p3, :cond_c

    .line 458
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    goto :goto_2

    .line 460
    :cond_c
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    :goto_2
    const/4 p3, 0x5

    if-eq p1, p3, :cond_e

    const/4 p3, 0x4

    if-ne p1, p3, :cond_d

    goto :goto_3

    :cond_d
    const v1, 0x7f090571

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v1, 0x0

    .line 468
    :goto_4
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p1

    .line 469
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p3

    const/4 v9, 0x1

    if-eqz p3, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v9, :cond_f

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_10

    .line 470
    invoke-virtual {v7, v8}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p3

    goto :goto_6

    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 471
    :goto_6
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_11

    if-eqz p1, :cond_11

    .line 473
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v0, 0x67

    if-ne p1, v0, :cond_11

    .line 475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_11
    move-object p1, p3

    .line 478
    :goto_7
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_12

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_12

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Media;

    move-object v3, p3

    goto :goto_8

    :cond_12
    move-object v3, v2

    :goto_8
    const/4 v5, 0x0

    .line 479
    instance-of p3, v7, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_14

    move-object v0, v7

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_13

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v6, 0x1

    :goto_a
    move-object v0, p2

    move-object v2, p1

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 487
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-eqz p1, :cond_15

    invoke-virtual {v7}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_b

    :cond_15
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedListItem;->setProgress(Z)V

    if-eqz p3, :cond_16

    .line 489
    check-cast v7, Lcom/narvii/model/Blog;

    iget p1, v7, Lcom/narvii/model/Blog;->type:I

    const/16 p3, 0x8

    if-ne p1, p3, :cond_16

    const/4 v8, 0x1

    .line 490
    :cond_16
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget p3, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    invoke-virtual {p2, p1, v8, p3}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZZI)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 655
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string p1, "community-player"

    .line 656
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 657
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showCommentBarInStoryDetail()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 659
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected ignoreExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    .line 1003
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    return v0
.end method

.method protected logFeedClickEvent(Lcom/narvii/model/Feed;)V
    .locals 1

    .line 674
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method protected longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    .line 682
    new-instance v0, Lcom/narvii/feed/vote/VotePopupDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 683
    invoke-virtual {v0, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 684
    invoke-virtual {v0, p2}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 686
    new-instance v1, Lcom/narvii/feed/BaseFeedListAdapter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/feed/BaseFeedListAdapter$6;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;Lcom/narvii/model/Feed;)V

    invoke-virtual {v0, v1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 696
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 160
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->useDefaultImpressionCollector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Feed;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    :cond_0
    return-void
.end method

.method public onDispatchTouchEvent()V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onFeedQuizStarted(Lcom/narvii/model/Blog;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 517
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_15

    .line 518
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    if-nez p5, :cond_5

    const-string p1, "account"

    .line 520
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 522
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 523
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const p4, 0x7f0b021c

    invoke-virtual {p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09002c

    .line 524
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 525
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$3;

    invoke-direct {p4, p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$3;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 533
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 534
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const/16 p3, 0x16

    if-eq p1, p3, :cond_4

    instance-of p1, v0, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isknownType()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 538
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    .line 539
    invoke-virtual {p0, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

    goto :goto_2

    .line 535
    :cond_4
    :goto_1
    new-instance p1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const p3, 0x7f0f0120

    invoke-direct {p1, p2, p3}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 536
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_2
    return v1

    .line 542
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090c12

    const-string v4, "Feed"

    const/16 v5, 0x8

    if-ne v2, v3, :cond_9

    .line 543
    instance-of p1, v0, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_7

    move-object p1, v0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p2, p1, Lcom/narvii/model/Blog;->type:I

    if-ne p2, v5, :cond_7

    iget-object p1, p1, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz p1, :cond_7

    .line 545
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->isNotAvaileable()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 546
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 547
    invoke-virtual {p1}, Lcom/narvii/feed/FeedHelper;->showExternalSourceNotAvailable()V

    return v1

    .line 550
    :cond_6
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    .line 551
    const-class p2, Lcom/narvii/feed/ExternalPostListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 552
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "KEY_EXTERNAL_SOURCE"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    const-string p3, "KEY_EXTERNAL_SOURCE_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 557
    :cond_7
    iget-object p1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-string p2, "Source"

    .line 559
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 563
    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090457

    if-ne v2, v3, :cond_a

    const p1, 0x7f090459

    .line 564
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    .line 565
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "vote"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "feed"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v1

    .line 569
    :cond_a
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090452

    if-ne v2, v3, :cond_c

    .line 570
    iget-boolean p1, v0, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz p1, :cond_b

    .line 571
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v1

    .line 574
    :cond_b
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 575
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;)V

    return v1

    .line 577
    :cond_c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090455

    if-ne v2, v3, :cond_d

    .line 578
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 579
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->share(Lcom/narvii/model/Feed;)V

    return v1

    .line 581
    :cond_d
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09043d

    if-ne v2, v3, :cond_e

    .line 582
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;)V

    return v1

    .line 584
    :cond_e
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090a91

    if-ne v2, v3, :cond_13

    .line 586
    check-cast v0, Lcom/narvii/model/Blog;

    .line 587
    iget-object p1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of p3, p1, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_f

    .line 588
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 591
    :cond_f
    sget-object p1, Lcom/narvii/logging/ActSemantic;->quizStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 593
    new-instance p1, Lcom/narvii/influencer/InfluencerHelper;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p3}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 594
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    .line 597
    :cond_10
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 598
    invoke-virtual {p1, v4}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    const/4 p3, 0x0

    .line 599
    iput-boolean p3, p1, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    .line 600
    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$4;

    invoke-direct {p4, p0}, Lcom/narvii/feed/BaseFeedListAdapter$4;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    iput-object p4, p1, Lcom/narvii/feed/FeedHelper;->startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

    .line 606
    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$5;

    invoke-direct {p4, p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter$5;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Blog;)V

    iput-object p4, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 621
    invoke-virtual {p0, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    move-result-object p2

    .line 622
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->fromQuizFeedList()Z

    move-result p4

    if-eqz p4, :cond_11

    const-string p4, "fromQuizFeedList"

    .line 623
    invoke-virtual {p2, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    :cond_11
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    move-result p4

    if-eqz p4, :cond_12

    const p4, 0x7f090a92

    .line 627
    invoke-virtual {p5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 628
    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    const p4, 0x7f090a94

    .line 629
    invoke-virtual {p5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 630
    invoke-direct {p0, p5}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    .line 632
    :cond_12
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object p3, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 633
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object p3, p1, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 634
    invoke-virtual {p1, v0, p2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    return v1

    .line 638
    :cond_13
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_15

    move-object v2, v0

    check-cast v2, Lcom/narvii/model/Blog;

    iget v3, v2, Lcom/narvii/model/Blog;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_15

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090571

    if-ne v3, v4, :cond_15

    .line 639
    iget-boolean p1, v0, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz p1, :cond_14

    .line 640
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v1

    .line 643
    :cond_14
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    .line 644
    invoke-virtual {p0, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object p1

    .line 645
    new-instance p2, Lcom/narvii/story/StoryHelper;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p3}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p5, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return v1

    .line 650
    :cond_15
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "feed"

    .line 719
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 720
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    const-string/jumbo v0, "voteValue"

    .line 721
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 722
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 723
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    :goto_0
    return-void

    .line 729
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 705
    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p5, :cond_1

    .line 706
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090457

    if-ne v0, v1, :cond_1

    const p1, 0x7f090459

    .line 707
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 709
    check-cast p3, Lcom/narvii/model/Feed;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 713
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    .line 743
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Feed;

    const-string/jumbo v2, "update"

    const-string v3, "delete"

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 744
    check-cast v0, Lcom/narvii/model/Feed;

    .line 745
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 746
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Feed;

    .line 750
    instance-of v6, v5, Lcom/narvii/model/Blog;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/narvii/model/Blog;

    iget-object v6, v6, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v6, :cond_0

    .line 752
    invoke-static {v6, v0}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 753
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 754
    iput-object v0, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 755
    iget v5, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 756
    invoke-static {v1}, Lcom/narvii/model/Blog;->deserilizeStory(Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;

    move-result-object v1

    .line 757
    iget v5, v1, Lcom/narvii/model/Blog;->publishToGlobal:I

    if-nez v5, :cond_1

    .line 758
    iput-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 761
    :cond_1
    new-instance v5, Lcom/narvii/notification/Notification;

    iget-object v6, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 762
    iget-object v1, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iput-object v1, v5, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 763
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iput-object p1, v5, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    move-object p1, v5

    .line 769
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Feed;

    .line 771
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 772
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    .line 773
    iget v1, v5, Lcom/narvii/model/Feed;->ndcId:I

    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 774
    new-instance v1, Lcom/narvii/notification/Notification;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    move-object p1, v1

    .line 782
    :cond_4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_5

    if-ne v0, v3, :cond_7

    .line 788
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->ignoreExtension()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v2, :cond_6

    .line 789
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Feed;

    .line 790
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 792
    iget-object v5, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    .line 793
    iget-object v1, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 796
    :cond_6
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 800
    :cond_7
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v5, "new"

    if-eq v0, v5, :cond_8

    if-ne v0, v3, :cond_d

    .line 802
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 803
    iget-object v6, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 804
    instance-of v6, v5, Lcom/narvii/model/Blog;

    if-nez v6, :cond_a

    instance-of v6, v5, Lcom/narvii/model/Item;

    if-eqz v6, :cond_b

    .line 805
    :cond_a
    move-object v3, v5

    check-cast v3, Lcom/narvii/model/Feed;

    iget-object v6, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/narvii/model/Comment;

    iget-object v7, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    const/4 v3, 0x1

    .line 810
    :cond_b
    instance-of v6, v5, Lcom/narvii/model/Blog;

    if-eqz v6, :cond_9

    check-cast v5, Lcom/narvii/model/Blog;

    iget-object v5, v5, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v5, :cond_9

    iget-object v6, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 811
    instance-of v6, v5, Lcom/narvii/model/Item;

    if-eqz v6, :cond_9

    .line 812
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/Comment;

    iget-object v6, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    const/4 v3, 0x1

    goto :goto_0

    :cond_c
    if-eqz v3, :cond_d

    .line 818
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 821
    :cond_d
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_11

    .line 823
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_e
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 824
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/narvii/influencer/FanClub;

    iget-object v7, v7, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 825
    instance-of v3, v5, Lcom/narvii/model/Feed;

    if-eqz v3, :cond_f

    .line 826
    check-cast v5, Lcom/narvii/model/Feed;

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/influencer/FanClub;

    invoke-virtual {v3}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v3

    xor-int/2addr v3, v1

    iput-boolean v3, v5, Lcom/narvii/model/Feed;->needHidden:Z

    :cond_f
    const/4 v3, 0x1

    goto :goto_1

    :cond_10
    if-eqz v3, :cond_11

    .line 832
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 835
    :cond_11
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 837
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    .line 838
    instance-of v3, v2, Lcom/narvii/model/Feed;

    if-eqz v3, :cond_12

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/User;

    check-cast v2, Lcom/narvii/model/Feed;

    iget-object v5, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v3, v5}, Lcom/narvii/model/User;->isSameUser(Lcom/narvii/model/User;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 839
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/User;

    iput-object v3, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v4, 0x1

    goto :goto_2

    :cond_13
    if-eqz v4, :cond_14

    .line 844
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;I)V"
        }
    .end annotation

    .line 1047
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 1049
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 1057
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 1059
    iget-object p1, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1060
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    iget-object p2, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onVoteSuccess(Lcom/narvii/model/Feed;I)V
    .locals 0

    return-void
.end method

.method protected openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 1

    .line 850
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    move-result-object p1

    .line 851
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->fromQuizFeedList()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const-string v0, "fromQuizFeedList"

    .line 852
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 8

    .line 858
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 859
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->pageSize()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    iget-object v5, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    iget-object v6, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    iget-object v7, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/narvii/feed/FeedHelper;->getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected pageSize()I
    .locals 1

    .line 734
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v0

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1067
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1068
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1069
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1070
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1071
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public share(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1019
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1020
    new-instance p1, Lcom/narvii/share/ShareDarkRoomHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 1021
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    new-instance v1, Lcom/narvii/feed/BaseFeedListAdapter$9;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BaseFeedListAdapter$9;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showRepostOnShare()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$10;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/feed/BaseFeedListAdapter$10;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 1037
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected shouldFilterFeatureFeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showAllLike()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showCommentBarInStoryDetail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showMore(Lcom/narvii/model/Feed;)V
    .locals 1

    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method public showMore(Lcom/narvii/model/Feed;Z)V
    .locals 2

    .line 1011
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Feed"

    .line 1012
    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 1013
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1014
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 1015
    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedHelper;->showShareFeedDialog(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method protected showRepostOnShare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showSearchBarInStoryDetail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected useDefaultImpressionCollector()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 874
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/narvii/model/Item;

    if-nez v0, :cond_2

    return-void

    .line 877
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    .line 879
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1105

    .line 880
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 881
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showAllLike()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f029c

    const/4 v1, 0x0

    .line 882
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 884
    :cond_3
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$7;

    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$7;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 896
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 900
    sget-object p2, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_5
    sget-object p2, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 911
    new-instance p2, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p2, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 912
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object v1, p2, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 913
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v1, p2, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 914
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/narvii/feed/BaseFeedListAdapter$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter$8;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;I)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 932
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 934
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-nez p2, :cond_6

    .line 935
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 937
    :cond_6
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
