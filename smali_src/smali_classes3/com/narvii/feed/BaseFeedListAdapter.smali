.class public abstract Lcom/narvii/feed/BaseFeedListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

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

.field private static final TYPE_ADS:I = 0x18

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

.field private static final TYPE_REPOST_TOPIC:I = 0x8

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

.field voteCallback:Lcom/narvii/util/Callback;

.field protected voteIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    .line 32
    .line 33
    const-string v0, "Feed"

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/feed/BaseFeedListAdapter$1;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    const-string v0, "account"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->curUser:Lcom/narvii/model/User;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/narvii/app/NVActivity;->addDispatchTouchEventListener(Lcom/narvii/app/NVActivity$DispatchTouchEventListener;)V

    .line 80
    .line 81
    :cond_0
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static bridge synthetic m(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    return-void
.end method

.method private resetStartQuizView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    const v0, 0x7f0a0d89

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0d8c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0d8b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
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

.method private setLoadingQuizView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    const/4 p1, 0x1

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

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;I)V

    return-void
.end method

.method public comment(Lcom/narvii/model/Feed;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;IZ)V

    return-void
.end method

.method public comment(Lcom/narvii/model/Feed;IZ)V
    .locals 6

    .line 3
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const-string v1, "__interactionScope"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_6

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v4

    const-string v5, "parentType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "parentId"

    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    instance-of v4, p1, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_1

    .line 9
    move-object v4, p1

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const-string v5, "parentSubType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v4, "feed"

    .line 10
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eq p2, v2, :cond_2

    const-string p2, "__communityId"

    .line 11
    iget v2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 13
    invoke-static {p0, p1, p2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "stat_parent_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 15
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez p2, :cond_4

    move-object p2, v3

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v1, "loggingSource"

    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p2, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string p2, "loggingOrigin"

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "autoJoin"

    .line 19
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isAnnouncement"

    .line 20
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    invoke-static {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 22
    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    goto :goto_4

    .line 23
    :cond_6
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    if-eq p2, v2, :cond_7

    .line 24
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->communityId(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 25
    :cond_7
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    if-eqz p3, :cond_8

    .line 29
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v0, :cond_9

    move-object v0, v3

    goto :goto_2

    .line 30
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_2
    invoke-virtual {p2, v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->loggingSource(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v0, :cond_a

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p2, v3}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->loggingOrigin(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p3}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->autoJoin(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p2

    .line 34
    invoke-static {p1}, Lcom/narvii/model/extension/FeedExtensionKt;->isAnnouncement(Lcom/narvii/model/Feed;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->isAnnouncement(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-static {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

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

    const v0, 0x7f0d0242

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move-object v0, p1

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    return-object v0

    .line 22
    :cond_0
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 10

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/Feed;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->allowShowDisable()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    return v1

    .line 26
    .line 27
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 28
    .line 29
    const/16 v1, 0x16

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-eqz v0, :cond_17

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    return v3

    .line 41
    .line 42
    :cond_2
    if-ne v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v4, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 45
    .line 46
    instance-of v4, v4, Lcom/narvii/model/Item;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    return v2

    .line 50
    .line 51
    :cond_3
    const/16 v2, 0xb

    .line 52
    const/4 v4, 0x7

    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x6

    .line 55
    .line 56
    const/16 v7, 0x8

    .line 57
    const/4 v8, 0x3

    .line 58
    const/4 v9, 0x2

    .line 59
    .line 60
    if-ne v0, v9, :cond_c

    .line 61
    .line 62
    iget-object p1, p1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 63
    .line 64
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 65
    .line 66
    if-eqz v0, :cond_a

    .line 67
    move-object v0, p1

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/Blog;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    const/16 p1, 0x17

    .line 78
    return p1

    .line 79
    .line 80
    :cond_4
    iget p1, v0, Lcom/narvii/model/Blog;->type:I

    .line 81
    .line 82
    if-ne p1, v8, :cond_5

    .line 83
    return v7

    .line 84
    .line 85
    :cond_5
    if-ne p1, v6, :cond_6

    .line 86
    .line 87
    const/16 p1, 0x9

    .line 88
    return p1

    .line 89
    .line 90
    :cond_6
    if-ne p1, v5, :cond_7

    .line 91
    .line 92
    const/16 p1, 0xa

    .line 93
    return p1

    .line 94
    .line 95
    :cond_7
    if-ne p1, v7, :cond_8

    .line 96
    .line 97
    const/16 p1, 0x12

    .line 98
    return p1

    .line 99
    .line 100
    :cond_8
    if-ne p1, v4, :cond_9

    .line 101
    .line 102
    const/16 p1, 0x13

    .line 103
    return p1

    .line 104
    :cond_9
    return v6

    .line 105
    .line 106
    :cond_a
    instance-of p1, p1, Lcom/narvii/model/Item;

    .line 107
    .line 108
    if-eqz p1, :cond_b

    .line 109
    return v4

    .line 110
    :cond_b
    return v2

    .line 111
    .line 112
    :cond_c
    if-ne v0, v8, :cond_d

    .line 113
    return v8

    .line 114
    :cond_d
    const/4 v8, 0x5

    .line 115
    .line 116
    if-ne v0, v5, :cond_e

    .line 117
    return v8

    .line 118
    .line 119
    :cond_e
    if-ne v0, v8, :cond_10

    .line 120
    .line 121
    iget-object p1, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    .line 123
    if-eqz p1, :cond_f

    .line 124
    return v9

    .line 125
    :cond_f
    return v3

    .line 126
    .line 127
    :cond_10
    if-ne v0, v6, :cond_11

    .line 128
    return v5

    .line 129
    .line 130
    :cond_11
    if-ne v0, v4, :cond_12

    .line 131
    .line 132
    const/16 p1, 0xd

    .line 133
    return p1

    .line 134
    .line 135
    :cond_12
    if-ne v0, v7, :cond_15

    .line 136
    .line 137
    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 141
    move-result v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    move-result p1

    .line 150
    .line 151
    if-nez v0, :cond_13

    .line 152
    .line 153
    const/16 p1, 0xf

    .line 154
    return p1

    .line 155
    .line 156
    :cond_13
    if-gt v0, v9, :cond_14

    .line 157
    .line 158
    if-nez p1, :cond_14

    .line 159
    .line 160
    const/16 p1, 0x10

    .line 161
    return p1

    .line 162
    .line 163
    :cond_14
    const/16 p1, 0x11

    .line 164
    return p1

    .line 165
    .line 166
    :cond_15
    if-ne v0, v2, :cond_16

    .line 167
    .line 168
    const/16 p1, 0x18

    .line 169
    return p1

    .line 170
    :cond_16
    return v1

    .line 171
    .line 172
    :cond_17
    instance-of p1, p1, Lcom/narvii/model/Item;

    .line 173
    .line 174
    if-eqz p1, :cond_18

    .line 175
    return v2

    .line 176
    :cond_18
    return v1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    .line 3
    check-cast v7, Lcom/narvii/model/Feed;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a0d88

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    :cond_0
    return-object p2

    .line 24
    .line 25
    .line 26
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 27
    .line 28
    :pswitch_0
    const-string p1, "ERR"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3, v1, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :pswitch_1
    const p2, 0x7f0d003f

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    .line 41
    :pswitch_2
    const p2, 0x7f0d024b

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :pswitch_3
    const p2, 0x7f0d0243

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :pswitch_4
    const p2, 0x7f0d0272

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :pswitch_5
    const p2, 0x7f0d0271

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :pswitch_6
    const p2, 0x7f0d0240

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :pswitch_7
    const p2, 0x7f0d023e

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :pswitch_8
    const p2, 0x7f0d023f

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :pswitch_9
    const p2, 0x7f0d0241

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :pswitch_a
    const p2, 0x7f0d0252

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :pswitch_b
    const p2, 0x7f0d0253

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :pswitch_c
    const p2, 0x7f0d0274

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :pswitch_d
    const p2, 0x7f0d0275

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :pswitch_e
    const p2, 0x7f0d0276

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :pswitch_f
    const p2, 0x7f0d0277

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :pswitch_10
    const p2, 0x7f0d0273

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :pswitch_11
    const p2, 0x7f0d0270

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :pswitch_12
    const p2, 0x7f0d025e

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :pswitch_13
    const p2, 0x7f0d0264

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :pswitch_14
    const p2, 0x7f0d027d

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :pswitch_15
    const p2, 0x7f0d0258

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :pswitch_16
    const p2, 0x7f0d0255

    .line 122
    goto :goto_0

    .line 123
    .line 124
    .line 125
    :pswitch_17
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->getFeedBlogLayout()I

    .line 126
    move-result p2

    .line 127
    .line 128
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 135
    .line 136
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3, v2, v3}, Lcom/narvii/feed/FeedListItem;->setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    .line 144
    .line 145
    .line 146
    const p3, 0x7f0a0f38

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p3

    .line 151
    .line 152
    if-eqz p3, :cond_2

    .line 153
    .line 154
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    const p3, 0x7f0a058e

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    if-eqz p3, :cond_3

    .line 167
    .line 168
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    const p3, 0x7f0a0589

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p3

    .line 184
    .line 185
    if-eqz p3, :cond_4

    .line 186
    .line 187
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    const p3, 0x7f0a058c

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object p3

    .line 198
    .line 199
    if-eqz p3, :cond_5

    .line 200
    .line 201
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    const p3, 0x7f0a0574

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object p3

    .line 212
    .line 213
    if-eqz p3, :cond_6

    .line 214
    .line 215
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object p3

    .line 223
    .line 224
    if-eqz p3, :cond_7

    .line 225
    .line 226
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    :cond_7
    :goto_1
    iget-object p3, p2, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    .line 232
    .line 233
    if-eqz p3, :cond_8

    .line 234
    .line 235
    iget-object v2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteCallback:Lcom/narvii/util/Callback;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p3, v2}, Lcom/narvii/poll/PollOptionListLayout;->setVoteCallback(Lcom/narvii/util/Callback;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object p3

    .line 243
    .line 244
    if-eqz p3, :cond_9

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    .line 248
    .line 249
    :cond_9
    const/16 p3, 0x16

    .line 250
    .line 251
    if-ne p1, p3, :cond_a

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setUnknownFeed(Lcom/narvii/model/Feed;)V

    .line 255
    goto :goto_2

    .line 256
    .line 257
    :cond_a
    const/16 p3, 0xc

    .line 258
    .line 259
    if-ne p1, p3, :cond_b

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    .line 263
    goto :goto_2

    .line 264
    .line 265
    .line 266
    :cond_b
    invoke-virtual {p2, v7}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 267
    :goto_2
    const/4 p3, 0x5

    .line 268
    .line 269
    if-eq p1, p3, :cond_d

    .line 270
    const/4 p3, 0x4

    .line 271
    .line 272
    if-ne p1, p3, :cond_c

    .line 273
    goto :goto_3

    .line 274
    .line 275
    .line 276
    :cond_c
    const p1, 0x7f0a06eb

    .line 277
    goto :goto_4

    .line 278
    :cond_d
    :goto_3
    move p1, v8

    .line 279
    .line 280
    .line 281
    :goto_4
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 282
    move-result-object p3

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 286
    move-result v0

    .line 287
    const/4 v9, 0x1

    .line 288
    .line 289
    if-eqz v0, :cond_e

    .line 290
    .line 291
    if-eqz p3, :cond_e

    .line 292
    .line 293
    .line 294
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 295
    move-result p3

    .line 296
    .line 297
    if-ne p3, v9, :cond_e

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v8}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 301
    move-result-object p3

    .line 302
    :goto_5
    move-object v2, p3

    .line 303
    goto :goto_6

    .line 304
    .line 305
    .line 306
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 307
    move-result-object p3

    .line 308
    goto :goto_5

    .line 309
    .line 310
    .line 311
    :goto_6
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 312
    move-result-object p3

    .line 313
    .line 314
    if-eqz p3, :cond_f

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 318
    move-result-object p3

    .line 319
    .line 320
    .line 321
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 322
    move-result p3

    .line 323
    .line 324
    if-lez p3, :cond_f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 328
    move-result-object p3

    .line 329
    .line 330
    .line 331
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    move-result-object p3

    .line 333
    .line 334
    check-cast p3, Lcom/narvii/model/Media;

    .line 335
    move-object v3, p3

    .line 336
    goto :goto_7

    .line 337
    :cond_f
    move-object v3, v1

    .line 338
    :goto_7
    const/4 v5, 0x0

    .line 339
    const/4 v6, 0x1

    .line 340
    move-object v0, p2

    .line 341
    move v1, p1

    .line 342
    move-object v4, v7

    .line 343
    .line 344
    .line 345
    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 346
    .line 347
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 348
    .line 349
    if-eqz p1, :cond_10

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 353
    move-result-object p3

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 357
    move-result p1

    .line 358
    .line 359
    if-eqz p1, :cond_10

    .line 360
    move p1, v9

    .line 361
    goto :goto_8

    .line 362
    :cond_10
    move p1, v8

    .line 363
    .line 364
    .line 365
    :goto_8
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedListItem;->setProgress(Z)V

    .line 366
    .line 367
    instance-of p1, v7, Lcom/narvii/model/Blog;

    .line 368
    .line 369
    if-eqz p1, :cond_11

    .line 370
    .line 371
    check-cast v7, Lcom/narvii/model/Blog;

    .line 372
    .line 373
    iget p1, v7, Lcom/narvii/model/Blog;->type:I

    .line 374
    .line 375
    const/16 p3, 0x8

    .line 376
    .line 377
    if-ne p1, p3, :cond_11

    .line 378
    move v8, v9

    .line 379
    .line 380
    :cond_11
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 381
    .line 382
    iget p3, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, p1, v8, p3}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZZI)V

    .line 386
    return-object p2

    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected ignoreExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected logFeedClickEvent(Lcom/narvii/model/Feed;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 6
    return-void
.end method

.method protected longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/vote/VotePopupDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/feed/BaseFeedListAdapter$5;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/feed/BaseFeedListAdapter$5;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;Lcom/narvii/model/Feed;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 27
    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->useDefaultImpressionCollector()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 12
    .line 13
    const-class v1, Lcom/narvii/model/Feed;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onDispatchTouchEvent()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->resetStartQuizView(Landroid/view/View;)V

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    .line 16
    :cond_1
    return-void
.end method

.method protected onFeedQuizStarted(Lcom/narvii/model/Blog;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_13

    .line 2
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    const/4 v1, 0x1

    if-nez p5, :cond_5

    const-string p1, "account"

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const p4, 0x7f0d024a

    .line 6
    invoke-virtual {p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0059

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$2;

    invoke-direct {p4, p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$2;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 11
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

    .line 12
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    .line 13
    invoke-virtual {p0, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    new-instance p1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const p3, 0x7f120157

    invoke-direct {p1, p2, p3}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_2
    return v1

    .line 16
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0f38

    const-string v4, "Feed"

    const/16 v5, 0x8

    if-ne v2, v3, :cond_9

    .line 17
    instance-of p1, v0, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_7

    move-object p1, v0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p2, p1, Lcom/narvii/model/Blog;->type:I

    if-ne p2, v5, :cond_7

    iget-object p1, p1, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->isNotAvaileable()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 19
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    invoke-virtual {p1}, Lcom/narvii/feed/FeedHelper;->showExternalSourceNotAvailable()V

    return v1

    .line 21
    :cond_6
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    const-class p2, Lcom/narvii/feed/ExternalPostListFragment;

    .line 22
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "KEY_EXTERNAL_SOURCE"

    .line 23
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "KEY_EXTERNAL_SOURCE_ID"

    .line 24
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {p0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v1

    .line 26
    :cond_7
    iget-object p1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-string p2, "Source"

    .line 27
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v1

    .line 29
    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a058e

    if-ne v2, v3, :cond_a

    const p1, 0x7f0a0590

    .line 30
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    .line 31
    new-instance p1, Landroid/content/Intent;

    const-string p2, "vote"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "feed"

    .line 32
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v1

    .line 34
    :cond_a
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0589

    if-ne v2, v3, :cond_c

    .line 35
    iget-boolean p1, v0, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 36
    invoke-static {p1, v0, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v1

    .line 37
    :cond_b
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->comment(Lcom/narvii/model/Feed;)V

    return v1

    .line 39
    :cond_c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a058c

    if-ne v2, v3, :cond_d

    .line 40
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->share(Lcom/narvii/model/Feed;)V

    return v1

    .line 42
    :cond_d
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0574

    if-ne v2, v3, :cond_e

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;)V

    return v1

    .line 44
    :cond_e
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0d88

    if-ne v2, v3, :cond_13

    .line 45
    check-cast v0, Lcom/narvii/model/Blog;

    .line 46
    iget-object p1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    instance-of p3, p1, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_f

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 48
    :cond_f
    sget-object p1, Lcom/narvii/logging/ActSemantic;->quizStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 49
    new-instance p1, Lcom/narvii/influencer/InfluencerHelper;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p3}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v0, p3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    .line 51
    :cond_10
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    invoke-virtual {p1, v4}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    .line 53
    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$3;

    invoke-direct {p4, p0}, Lcom/narvii/feed/BaseFeedListAdapter$3;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    iput-object p4, p1, Lcom/narvii/feed/FeedHelper;->startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

    .line 54
    new-instance p4, Lcom/narvii/feed/BaseFeedListAdapter$4;

    invoke-direct {p4, p0, v0}, Lcom/narvii/feed/BaseFeedListAdapter$4;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Blog;)V

    iput-object p4, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 55
    invoke-virtual {p0, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    move-result-object p2

    .line 56
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->fromQuizFeedList()Z

    move-result p4

    if-eqz p4, :cond_11

    const-string p4, "fromQuizFeedList"

    .line 57
    invoke-virtual {p2, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    :cond_11
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    move-result p4

    if-eqz p4, :cond_12

    const p4, 0x7f0a0d89

    .line 59
    invoke-virtual {p5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 60
    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    const p4, 0x7f0a0d8b

    .line 61
    invoke-virtual {p5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-direct {p0, p5}, Lcom/narvii/feed/BaseFeedListAdapter;->setLoadingQuizView(Landroid/view/View;)V

    :cond_12
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object p3, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object p3, p1, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 63
    invoke-virtual {p1, v0, p2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p2, "statistics"

    .line 64
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Start Quiz"

    .line 65
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Start Quiz Total"

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    return v1

    .line 66
    :cond_13
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "vote"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p1, "feed"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/Feed;

    .line 32
    .line 33
    const-string v0, "voteValue"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 57
    :goto_0
    return-void

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p3, Lcom/narvii/model/Item;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :cond_0
    if-eqz p5, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a058e

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a0590

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p3, Lcom/narvii/model/Feed;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->longClickToVote(Lcom/narvii/model/Feed;Landroid/view/View;)V

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Feed;

    .line 5
    .line 6
    const-string v2, "delete"

    .line 7
    .line 8
    const-string v3, "update"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/model/Feed;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    check-cast v5, Lcom/narvii/model/Feed;

    .line 40
    .line 41
    instance-of v6, v5, Lcom/narvii/model/Blog;

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    move-object v6, v5

    .line 45
    .line 46
    check-cast v6, Lcom/narvii/model/Blog;

    .line 47
    .line 48
    iget-object v6, v6, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 49
    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v0}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    .line 54
    move-result v6

    .line 55
    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Lcom/narvii/model/Blog;

    .line 63
    .line 64
    iput-object v0, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 65
    .line 66
    new-instance v5, Lcom/narvii/notification/Notification;

    .line 67
    .line 68
    iget-object v6, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, v6, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 72
    .line 73
    iget-object v1, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v1, v5, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p1, v5, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 80
    move-object p1, v5

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v5

    .line 93
    .line 94
    if-eqz v5, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    check-cast v5, Lcom/narvii/model/Feed;

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    .line 104
    move-result v6

    .line 105
    .line 106
    if-eqz v6, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/model/Feed;

    .line 113
    .line 114
    iget v1, v5, Lcom/narvii/model/Feed;->ndcId:I

    .line 115
    .line 116
    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 117
    .line 118
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, p1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 124
    move-object p1, v1

    .line 125
    .line 126
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 127
    .line 128
    const-string v1, "edit"

    .line 129
    .line 130
    if-eq v0, v1, :cond_4

    .line 131
    .line 132
    if-eq v0, v3, :cond_4

    .line 133
    .line 134
    if-ne v0, v2, :cond_6

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->ignoreExtension()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 143
    .line 144
    if-ne v0, v3, :cond_5

    .line 145
    .line 146
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lcom/narvii/model/Feed;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 158
    move-result v1

    .line 159
    .line 160
    if-ltz v1, :cond_5

    .line 161
    .line 162
    iget-object v5, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    check-cast v1, Lcom/narvii/model/Feed;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 171
    .line 172
    iput-object v1, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 173
    .line 174
    .line 175
    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 176
    .line 177
    :cond_6
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 178
    .line 179
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 180
    const/4 v1, 0x1

    .line 181
    .line 182
    if-eqz v0, :cond_c

    .line 183
    .line 184
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 185
    .line 186
    const-string v5, "new"

    .line 187
    .line 188
    if-eq v0, v5, :cond_7

    .line 189
    .line 190
    if-ne v0, v2, :cond_c

    .line 191
    .line 192
    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object v0

    .line 199
    move v2, v4

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    move-result v5

    .line 204
    .line 205
    if-eqz v5, :cond_b

    .line 206
    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    move-result-object v5

    .line 210
    .line 211
    check-cast v5, Lcom/narvii/model/NVObject;

    .line 212
    .line 213
    iget-object v6, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 217
    move-result-object v7

    .line 218
    .line 219
    .line 220
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    move-result v6

    .line 222
    .line 223
    if-eqz v6, :cond_a

    .line 224
    .line 225
    instance-of v6, v5, Lcom/narvii/model/Blog;

    .line 226
    .line 227
    if-nez v6, :cond_9

    .line 228
    .line 229
    instance-of v6, v5, Lcom/narvii/model/Item;

    .line 230
    .line 231
    if-eqz v6, :cond_a

    .line 232
    :cond_9
    move-object v2, v5

    .line 233
    .line 234
    check-cast v2, Lcom/narvii/model/Feed;

    .line 235
    .line 236
    iget-object v6, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v6, Lcom/narvii/model/Comment;

    .line 239
    .line 240
    iget-object v7, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v6, v7}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 244
    move v2, v1

    .line 245
    .line 246
    :cond_a
    instance-of v6, v5, Lcom/narvii/model/Blog;

    .line 247
    .line 248
    if-eqz v6, :cond_8

    .line 249
    .line 250
    check-cast v5, Lcom/narvii/model/Blog;

    .line 251
    .line 252
    iget-object v5, v5, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 253
    .line 254
    if-eqz v5, :cond_8

    .line 255
    .line 256
    iget-object v6, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 260
    move-result-object v7

    .line 261
    .line 262
    .line 263
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    move-result v6

    .line 265
    .line 266
    if-eqz v6, :cond_8

    .line 267
    .line 268
    instance-of v6, v5, Lcom/narvii/model/Item;

    .line 269
    .line 270
    if-eqz v6, :cond_8

    .line 271
    .line 272
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v2, Lcom/narvii/model/Comment;

    .line 275
    .line 276
    iget-object v6, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-static {v5, v2, v6}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 280
    move v2, v1

    .line 281
    goto :goto_0

    .line 282
    .line 283
    :cond_b
    if-eqz v2, :cond_c

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 287
    .line 288
    :cond_c
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 289
    .line 290
    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    .line 291
    .line 292
    if-eqz v0, :cond_10

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    move-result-object v0

    .line 301
    move v2, v4

    .line 302
    .line 303
    .line 304
    :cond_d
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    move-result v5

    .line 306
    .line 307
    if-eqz v5, :cond_f

    .line 308
    .line 309
    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    move-result-object v5

    .line 312
    .line 313
    check-cast v5, Lcom/narvii/model/NVObject;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 317
    move-result-object v6

    .line 318
    .line 319
    iget-object v7, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v7, Lcom/narvii/influencer/FanClub;

    .line 322
    .line 323
    iget-object v7, v7, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    move-result v6

    .line 328
    .line 329
    if-eqz v6, :cond_d

    .line 330
    .line 331
    instance-of v2, v5, Lcom/narvii/model/Feed;

    .line 332
    .line 333
    if-eqz v2, :cond_e

    .line 334
    .line 335
    check-cast v5, Lcom/narvii/model/Feed;

    .line 336
    .line 337
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 343
    move-result v2

    .line 344
    xor-int/2addr v2, v1

    .line 345
    .line 346
    iput-boolean v2, v5, Lcom/narvii/model/Feed;->needHidden:Z

    .line 347
    :cond_e
    move v2, v1

    .line 348
    goto :goto_1

    .line 349
    .line 350
    :cond_f
    if-eqz v2, :cond_10

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 354
    .line 355
    :cond_10
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 356
    .line 357
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 358
    .line 359
    if-eqz v0, :cond_13

    .line 360
    .line 361
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    move-result v0

    .line 366
    .line 367
    if-eqz v0, :cond_13

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 371
    move-result-object v0

    .line 372
    .line 373
    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 375
    move-result-object v0

    .line 376
    .line 377
    .line 378
    :cond_11
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    move-result v2

    .line 380
    .line 381
    if-eqz v2, :cond_12

    .line 382
    .line 383
    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    move-result-object v2

    .line 386
    .line 387
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 388
    .line 389
    instance-of v3, v2, Lcom/narvii/model/Feed;

    .line 390
    .line 391
    if-eqz v3, :cond_11

    .line 392
    .line 393
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v3, Lcom/narvii/model/User;

    .line 396
    .line 397
    check-cast v2, Lcom/narvii/model/Feed;

    .line 398
    .line 399
    iget-object v5, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3, v5}, Lcom/narvii/model/User;->isSameUser(Lcom/narvii/model/User;)Z

    .line 403
    move-result v3

    .line 404
    .line 405
    if-eqz v3, :cond_11

    .line 406
    .line 407
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v3, Lcom/narvii/model/User;

    .line 410
    .line 411
    iput-object v3, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 412
    move v4, v1

    .line 413
    goto :goto_2

    .line 414
    .line 415
    :cond_12
    if-eqz v4, :cond_13

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 419
    :cond_13
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    const/4 p3, 0x0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    move-result p3

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 50
    const/4 p3, 0x1

    .line 51
    .line 52
    if-ne p1, p3, :cond_1

    .line 53
    .line 54
    iget-object p1, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    return-void
.end method

.method protected onVoteSuccess(Lcom/narvii/model/Feed;I)V
    .locals 0

    return-void
.end method

.method protected openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->fromQuizFeedList()Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string p2, "fromQuizFeedList"

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->pageSize()I

    .line 13
    move-result v3

    .line 14
    .line 15
    iget-object v4, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 22
    move-object v1, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/feed/FeedHelper;->getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method protected pageSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 4
    move-result v0

    .line 5
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->pageTokenList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->responseSizeList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->apiRequestList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 24
    return-void
.end method

.method public share(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 10
    const/4 v2, 0x6

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/feed/BaseFeedListAdapter$8;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/narvii/feed/BaseFeedListAdapter$8;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showRepostOnShare()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$9;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/feed/BaseFeedListAdapter$9;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 72
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

.method public showMore(Lcom/narvii/model/Feed;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method public showMore(Lcom/narvii/model/Feed;Z)V
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Feed"

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedHelper;->showShareFeedDialog(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method protected showRepostOnShare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useDefaultImpressionCollector()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    if-nez p2, :cond_4

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f12120e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showAllLike()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    .line 64
    const v0, 0x7f1202e7

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 69
    .line 70
    :cond_3
    new-instance v0, Lcom/narvii/feed/BaseFeedListAdapter$6;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter$6;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 80
    return-void

    .line 81
    .line 82
    :cond_4
    if-nez v0, :cond_5

    .line 83
    .line 84
    sget-object p2, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_5
    sget-object p2, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    const-string p2, "statistics"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    const-string v2, "Like Post"

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    const-string v2, "Likes Total"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    const-string v2, "post_type"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 131
    .line 132
    .line 133
    invoke-static {v1, p2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 134
    .line 135
    :cond_6
    new-instance p2, Lcom/narvii/story/detail/VoteHelper;

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 141
    .line 142
    iput-object v1, p2, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 145
    .line 146
    iput-object v1, p2, Lcom/narvii/story/detail/VoteHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    new-instance v2, Lcom/narvii/feed/BaseFeedListAdapter$7;

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter$7;-><init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1, v1, v2}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-static {p2, p1, v0}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 166
    .line 167
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 168
    .line 169
    if-nez p2, :cond_7

    .line 170
    .line 171
    new-instance p2, Ljava/util/HashSet;

    .line 172
    .line 173
    .line 174
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 175
    .line 176
    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 177
    .line 178
    :cond_7
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
