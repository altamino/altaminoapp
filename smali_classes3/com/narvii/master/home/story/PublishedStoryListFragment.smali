.class public final Lcom/narvii/master/home/story/PublishedStoryListFragment;
.super Lcom/narvii/story/SubTypeStoryBaseListFragment;
.source "PublishedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;,
        Lcom/narvii/master/home/story/PublishedStoryListFragment$MyDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublishedStoryListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublishedStoryListFragment.kt\ncom/narvii/master/home/story/PublishedStoryListFragment\n*L\n1#1,253:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isMe:Z

.field private isUserBlock:Z

.field private showHeaderView:Z

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getShowHeaderView$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->showHeaderView:Z

    return p0
.end method

.method public static final synthetic access$isUserBlock$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isUserBlock:Z

    return p0
.end method

.method public static final synthetic access$setShowHeaderView$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->showHeaderView:Z

    return-void
.end method

.method public static final synthetic access$setUserBlock$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isUserBlock:Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 4

    .line 91
    new-instance v0, Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V

    .line 100
    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 101
    new-instance v2, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/home/story/PublishedStoryListFragment$Adapter;-><init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 103
    new-instance v1, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;

    iget-object v2, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->uid:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isUserBlock:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/master/home/profile/UserBlockHintRecyclerAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 83
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/narvii/master/home/story/PublishedStoryListFragment$MyDataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/story/PublishedStoryListFragment$MyDataSource;-><init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Story"

    return-object v0
.end method

.method public final isMe()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isMe:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "id"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->uid:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isMe:Z

    const-string p1, "block"

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    .line 69
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isUserBlock:Z

    .line 70
    iget-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isMe:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->uid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->showHeaderView:Z

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onHeaderViewClicked(Landroid/view/View;)V
    .locals 3

    .line 212
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createStory:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NewStory"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 213
    invoke-virtual {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 219
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "draft"

    .line 225
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"draft\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/post/DraftManager;

    const-string v0, "story"

    .line 226
    invoke-virtual {p1, v0}, Lcom/narvii/post/DraftManager;->hasDraft(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    new-instance p1, Lcom/narvii/story/dialog/StoryCreationDialog;

    invoke-direct {p1, p0}, Lcom/narvii/story/dialog/StoryCreationDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 228
    new-instance v0, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;-><init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/story/dialog/StoryCreationDialog;->setOnClickListener(Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;)V

    .line 243
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 245
    :cond_2
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v0, 0x9

    .line 246
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 220
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f013c

    .line 221
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    .line 222
    new-instance v1, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$1;

    invoke-direct {v1, p1}, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 223
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b0496

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    const p1, 0x7f0b049a

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalErrorView(I)Landroid/view/View;

    const p1, 0x7f0b049b

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalLoadingView(I)Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_0

    const-wide v0, 0xffd7d3d3L

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    return-void
.end method

.method public final setMe(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment;->isMe:Z

    return-void
.end method
