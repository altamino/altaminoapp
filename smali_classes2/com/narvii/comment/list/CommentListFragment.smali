.class public Lcom/narvii/comment/list/CommentListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CommentListFragment.java"

# interfaces
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/comment/list/CommentListFragment$Adapter;,
        Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;,
        Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    }
.end annotation


# static fields
.field public static final COMMENT_KEY_AUTO_JOIN:Ljava/lang/String; = "autoJoin"

.field public static final COMMENT_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final COMMENT_KEY_BACKGROUND_TYPE:Ljava/lang/String; = "backgroundType"

.field public static final COMMENT_KEY_BLUR_BACKGROUND:Ljava/lang/String; = "blurBackground"

.field public static final COMMENT_KEY_FEED:Ljava/lang/String; = "feed"

.field public static final COMMENT_KEY_IS_ANNOUNCEMENT:Ljava/lang/String; = "isAnnouncement"

.field public static final COMMENT_KEY_IS_QUESTION:Ljava/lang/String; = "isQuestion"

.field public static final COMMENT_KEY_LOGGING_ORIGIN:Ljava/lang/String; = "loggingOrigin"

.field public static final COMMENT_KEY_LOGGING_SOURCE:Ljava/lang/String; = "loggingSource"

.field public static final COMMENT_KEY_PARENT_ID:Ljava/lang/String; = "parent-id"

.field public static final COMMENT_KEY_PARENT_TYPE:Ljava/lang/String; = "parent-type"

.field public static final COMMENT_KEY_SHOW_EMOJI_ONLY:Ljava/lang/String; = "showEmojiOnly"

.field public static final COMMENT_KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final COMMENT_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final COMMENT_KEY_id:Ljava/lang/String; = "id"

.field private static final votesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarOverlay:Landroid/view/View;

.field adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

.field private autoKeyboardShowed:Z

.field fakeActionBar:Landroid/view/View;

.field private isQuestion:Z

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field parent:Lcom/narvii/model/NVObject;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private requestBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 666
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$4;

    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$4;-><init>()V

    sput-object v0, Lcom/narvii/comment/list/CommentListFragment;->votesComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 202
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$1;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/comment/list/CommentListFragment;->actionBarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/comment/list/CommentListFragment;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/comment/list/CommentListFragment;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->requestBack:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->autoShowKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/comment/list/CommentListFragment;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    return p0
.end method

.method private autoShowKeyboard()V
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->autoKeyboardShowed:Z

    if-eqz v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->requestBack:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->autoKeyboardShowed:Z

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->commentNew(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private supportPermissionSetting()Z
    .locals 4

    .line 363
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 364
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v3, v0, Lcom/narvii/model/Blog;

    if-nez v3, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 368
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isMine()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method commentNew(Ljava/lang/String;)V
    .locals 3

    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    move-result v1

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    .line 500
    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "parentSubType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_1

    .line 503
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->communityId()I

    move-result v1

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stat_parent_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "Comment List"

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loggingSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "loggingOrigin"

    .line 509
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "autoJoin"

    .line 510
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isAnnouncement"

    .line 511
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "showEmojiOnly"

    .line 512
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "stickerCollectionId"

    .line 513
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result p1

    const-string v1, "__interactionScope"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    return-void
.end method

.method communityId()I
    .locals 1

    const-string v0, "__communityId"

    .line 488
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 427
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/comment/list/CommentListFragment$Adapter;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 428
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 429
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 430
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    .line 431
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 432
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    .line 433
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 434
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    :cond_0
    invoke-virtual {p1, v0, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 438
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 439
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListFragment$Adapter;->isQuestionAndAnswer()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0115

    goto :goto_0

    :cond_1
    const v0, 0x7f0f02ac

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 440
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const-string v1, "show_footer"

    .line 441
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v3, v1, Lcom/narvii/model/Feed;

    if-eqz v3, :cond_3

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v1

    if-lez v1, :cond_3

    .line 442
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Feed;

    .line 443
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    if-gez v1, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->communityId()I

    move-result v1

    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v1

    if-lez v1, :cond_4

    .line 447
    new-instance v1, Lcom/narvii/comment/CommentListFooterAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/narvii/comment/CommentListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_3
    new-array v1, v2, [I

    const v2, 0x7f0b04b5

    aput v2, v1, v5

    .line 450
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 451
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentList"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const-string v0, "background"

    .line 278
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_0

    const-string v0, "account"

    .line 331
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 332
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 458
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "config"

    .line 459
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 460
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "liveLayer"

    .line 462
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comment-list?parent-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&parent-id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "collectionId"

    .line 478
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/comment/list/CommentListFragment;->commentNew(Ljava/lang/String;)V

    .line 480
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 234
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v0, "feed"

    .line 236
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 237
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentListFragment$2;-><init>(Lcom/narvii/comment/list/CommentListFragment;)V

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    :cond_0
    const-string v0, "isQuestion"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    .line 273
    :goto_0
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 350
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 351
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->supportPermissionSetting()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0f0e1a

    .line 352
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 353
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080245

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p2

    .line 354
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const p2, 0x7f0f02a7

    .line 357
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 358
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f080188

    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 359
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0290

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 295
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f02a7

    if-ne v0, v1, :cond_4

    .line 374
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "isAnnouncement"

    .line 375
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-nez v0, :cond_1

    const v3, 0x7f0f02aa

    .line 377
    iget-object v4, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    :cond_1
    const v3, 0x7f0f02a8

    .line 379
    iget-object v4, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v3, 0x7f0f02a9

    .line 380
    iget-object v4, p0, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v1, 0x7f0f0ea7

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 382
    new-instance v1, Lcom/narvii/comment/list/CommentListFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/narvii/comment/list/CommentListFragment$3;-><init>(Lcom/narvii/comment/list/CommentListFragment;Z)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 415
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v5

    .line 417
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0e1a

    if-ne v0, v1, :cond_5

    .line 418
    const-class v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 422
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 471
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 472
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentListFragment;->autoShowKeyboard()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 288
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentListFragment;->isQuestion:Z

    const-string v1, "isQuestion"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 300
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090103

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/FullscreenBackgroundView;

    const-string v0, "backgroundType"

    .line 304
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p2, Lcom/narvii/widget/FullscreenBackgroundView;->backgroundView:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 306
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    :cond_0
    const-string v0, "background"

    .line 308
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundMedia(Lcom/narvii/model/Media;)V

    const p2, 0x7f09013c

    .line 310
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "blurBackground"

    .line 312
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p2, 0x7f090416

    .line 314
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    const p2, 0x7f090031

    .line 315
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment;->actionBarOverlay:Landroid/view/View;

    .line 317
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->updateFakeActionBarThemeUI()V

    .line 320
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method parentId()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    const-string v0, "parent-id"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method parentType()I
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    const-string v0, "parent-type"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_2

    const-string v0, "config"

    .line 689
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 690
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment;->fakeActionBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
