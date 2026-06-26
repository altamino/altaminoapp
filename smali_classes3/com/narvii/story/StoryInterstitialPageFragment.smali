.class public final Lcom/narvii/story/StoryInterstitialPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoryInterstitialPageFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/story/widgets/IDispatchEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;,
        Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;,
        Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;,
        Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;,
        Lcom/narvii/story/StoryInterstitialPageFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/story/StoryInterstitialPageFragment$Companion;

.field public static final LOG_AREA:Ljava/lang/String; = "StoryEnd"

.field private static final TAG:Ljava/lang/String; = "StoryInterstitialPage"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private account:Lcom/narvii/account/AccountService;

.field private autoLoadNextPage:Z

.field private blog:Lcom/narvii/model/Blog;

.field private bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

.field private community:Lcom/narvii/model/Community;

.field private countDownEnable:Z

.field private hoverView:Landroid/view/View;

.field private interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

.field private offsetRect:Landroid/graphics/Rect;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

.field private replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

.field private storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

.field private tippingHelper:Lcom/narvii/tipping/TippingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/StoryInterstitialPageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryInterstitialPageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/StoryInterstitialPageFragment;->Companion:Lcom/narvii/story/StoryInterstitialPageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->countDownEnable:Z

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->offsetRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "account"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "blog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCommunity$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Community;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    return-object p0
.end method

.method public static final synthetic access$getHoverView$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "hoverView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOffsetRect$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/graphics/Rect;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->offsetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pushNotificationHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getStoryDownloadHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/story/StoryDownloadHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "storyDownloadHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTippingHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/tipping/TippingHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "tippingHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$openCommentPage(Lcom/narvii/story/StoryInterstitialPageFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/story/StoryInterstitialPageFragment;->openCommentPage()V

    return-void
.end method

.method public static final synthetic access$setAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$setBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    return-void
.end method

.method public static final synthetic access$setCommunity$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    return-void
.end method

.method public static final synthetic access$setHoverView$p(Lcom/narvii/story/StoryInterstitialPageFragment;Landroid/view/View;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setOffsetRect$p(Lcom/narvii/story/StoryInterstitialPageFragment;Landroid/graphics/Rect;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->offsetRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$setPushNotificationHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public static final synthetic access$setStoryDownloadHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/story/StoryDownloadHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    return-void
.end method

.method public static final synthetic access$setTippingHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/tipping/TippingHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    return-void
.end method

.method private final openCommentPage()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/narvii/comment/CommentHelper;->getCommentPostActivityIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "fromStoryCommentList"

    .line 241
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, "blog"

    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 191
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 192
    new-instance v0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    .line 193
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    new-instance v0, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/StoryInterstitialPageFragment$CommentInputAdapter;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    new-instance v0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    const-string v3, "blog"

    if-eqz v1, :cond_4

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 196
    new-instance v1, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;

    iget-object v4, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v4, :cond_3

    invoke-direct {v1, p0, p0, v4}, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->setHost(Lcom/narvii/list/NVAdapter;)V

    .line 198
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    new-instance v0, Lcom/narvii/comment/CommentListFooterAdapter;

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/comment/CommentListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object p1

    .line 200
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getBottomSheetListener()Lcom/narvii/story/IStoryBottomSheetListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveChanged >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoryInterstitialPage"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->countDownEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->startCountDown()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->pauseCountDown()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "account"

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "blog"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "JacksonUtils.readAs(getS\u2026blog\"), Blog::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    const-string p1, "community"

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    .line 79
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_0

    const-string p1, "__community"

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->community:Lcom/narvii/model/Community;

    :cond_0
    const/4 p1, 0x0

    const-string v0, "autoLoadNextPage"

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->autoLoadNextPage:Z

    const/4 p1, 0x1

    const-string v0, "countDownEnable"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->countDownEnable:Z

    .line 84
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 85
    new-instance p1, Lcom/narvii/tipping/TippingHelper;

    invoke-direct {p1, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 86
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryDownloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02f4

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    .line 96
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/narvii/amino/R$id;->parent_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/DispatchEventFrameLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/narvii/story/widgets/DispatchEventFrameLayout;->setDispatchEventListener(Lcom/narvii/story/widgets/IDispatchEventListener;)V

    .line 97
    sget p2, Lcom/narvii/amino/R$id;->story_replay_next_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/StoryReplayNextView;

    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    invoke-virtual {p2, p3}, Lcom/narvii/story/widgets/StoryReplayNextView;->setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V

    .line 98
    sget p2, Lcom/narvii/amino/R$id;->story_replay_next_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/StoryReplayNextView;

    iget-boolean p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->autoLoadNextPage:Z

    invoke-virtual {p2, p3}, Lcom/narvii/story/widgets/StoryReplayNextView;->setNextEnable(Z)V

    .line 99
    sget p2, Lcom/narvii/amino/R$id;->share:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance p3, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p2, Lcom/narvii/amino/R$id;->story_replay_next_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/widgets/StoryReplayNextView;

    iput-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    .line 108
    sget p2, Lcom/narvii/amino/R$id;->hover_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.hover_layout"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.story.widgets.DispatchEventFrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/story/StoryInterstitialPageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDispatchDownEvent()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->cancelCountDown()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 162
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    .line 164
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_2

    .line 165
    move-object p2, p1

    check-cast p2, Lcom/narvii/widget/NVListView;

    new-instance v0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;Landroid/widget/ListView;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_2
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 7

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "vote_start"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "vote_end"

    const/4 v2, 0x0

    const-string v3, "blog"

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v4, v0, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_5

    const-string v4, "null cannot be cast to non-null type com.narvii.model.Blog"

    if-eqz v0, :cond_4

    .line 212
    check-cast v0, Lcom/narvii/model/Blog;

    .line 213
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 214
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/model/Blog;

    .line 215
    iput-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    .line 216
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->setVoteEnd(Z)V

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 214
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 220
    check-cast p1, Lcom/narvii/model/User;

    .line 221
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, ""

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_7

    iput-object p1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 223
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 222
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.User"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    const-string p2, "hoverView"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const v1, 0x7f0900e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_0
    const-string p1, "account"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    if-eqz p1, :cond_3

    sget v1, Lcom/narvii/amino/R$id;->avatar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$1;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->hoverView:Landroid/view/View;

    if-eqz p1, :cond_2

    sget p2, Lcom/narvii/amino/R$id;->comment_hint_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    return-void
.end method

.method public final setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    return-void
.end method

.method public final setVisibleParam(ZZ)V
    .locals 0

    .line 129
    iput-boolean p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->countDownEnable:Z

    .line 130
    iput-boolean p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->autoLoadNextPage:Z

    .line 131
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->setNextEnable(Z)V

    :cond_0
    return-void
.end method

.method public final updateStory(Lcom/narvii/model/Blog;)V
    .locals 1

    const-string v0, "blog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->blog:Lcom/narvii/model/Blog;

    .line 230
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment;->interstitialTopAdapter:Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
