.class public Lcom/narvii/chat/hangout/HangoutListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "HangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;,
        Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;,
        Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;
    }
.end annotation


# static fields
.field public static final FILTER_ALL:I = 0x1

.field public static final FILTER_OPEN:I


# instance fields
.field private chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

.field filter:I

.field private filterHelper:Lcom/narvii/util/FilterHelper;

.field private filterIndex:I

.field private filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

.field private filterText:Landroid/widget/TextView;

.field private filterView:Landroid/view/View;

.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private volatile runningTaskCount:I

.field searchBar:Lcom/narvii/widget/SearchBar;

.field public searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

.field switchAdapter:Lcom/narvii/list/SwitchAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 80
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/hangout/HangoutListFragment;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->getFitlerType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/hangout/HangoutListFragment;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    return-object p0
.end method

.method private getFitlerType()Ljava/lang/String;
    .locals 3

    .line 274
    iget v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterIndex:I

    const-string v1, "recommended"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "popular"

    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "latest"

    return-object v0

    :cond_2
    return-object v1
.end method

.method private showFilterDialog(Landroid/view/View;)V
    .locals 2

    .line 241
    new-instance v0, Lcom/narvii/chat/hangout/HangoutFilterDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/hangout/HangoutFilterDialog;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 243
    new-instance p1, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$xO_VotberQXONt3KID8IN6O0i-o;

    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$xO_VotberQXONt3KID8IN6O0i-o;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    invoke-virtual {v0, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog;->setOnItemClickListener(Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;)V

    .line 265
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 13

    .line 302
    new-instance p1, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 304
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 305
    new-instance v6, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 306
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    const/4 v7, 0x2

    invoke-virtual {v6, v0, v7}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 307
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$3;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 313
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 315
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    invoke-virtual {v0, v1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 316
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    const/4 v6, 0x0

    const v9, 0x7f0f0104

    const v10, 0x7f0f0bc8

    if-eqz v0, :cond_0

    .line 317
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {p1, v0, v8}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1

    .line 321
    :cond_0
    new-instance v11, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;

    invoke-direct {v11, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 322
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    .line 323
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 324
    new-instance v12, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 325
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    invoke-virtual {v12, p1, v7}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 326
    new-instance p1, Lcom/narvii/chat/hangout/HangoutListFragment$4;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$4;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V

    .line 337
    invoke-virtual {p1, v11}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {p1, v0, v8}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 339
    invoke-virtual {p1, v12}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "PublicChatroom"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/16 v0, 0x10

    .line 270
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    return v0
.end method

.method protected getSwipeRefreshFlag()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPageBackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$HangoutListFragment(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->showFilterDialog(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$HangoutListFragment(Landroid/view/View;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->showFilterDialog(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showFilterDialog$2$HangoutListFragment(ILandroid/view/View;)V
    .locals 1

    .line 244
    iput p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterIndex:I

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    const p2, 0x7f0f0ea3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 248
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    const p2, 0x7f0f0d79

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 250
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    const p2, 0x7f0f0ab9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    const-string p1, "ChatFilter"

    .line 253
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 254
    invoke-direct {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->getFitlerType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "filterType"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 257
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    if-eqz p1, :cond_3

    .line 258
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 259
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 261
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 262
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    const/16 p2, 0x200

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_3
    return-void
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayer"

    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const-string v1, "public-chats"

    .line 195
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 105
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    const-string v0, "filter"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    :goto_0
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v1, "title"

    .line 112
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0d27

    .line 115
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    const-string p1, "config"

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 127
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09046b

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    const v1, 0x7f09046a

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$vnYyYhGis8XKao0U6UfMfh5450g;

    invoke-direct {v2, p0}, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$vnYyYhGis8XKao0U6UfMfh5450g;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f03cf

    const/4 v2, 0x0

    .line 147
    invoke-interface {p1, v2, v1, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 148
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 149
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b032c

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b01f4

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 287
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$2;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 295
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    if-eqz v1, :cond_0

    const/16 v2, 0x200

    .line 296
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/ProxyAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    iget v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    const-string v1, "filter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 200
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    if-nez p2, :cond_0

    const p2, 0x7f09046b

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 204
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const p2, 0x7f09046a

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const-string p2, "config"

    .line 210
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    const v0, 0x7f0903ea

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 213
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$1;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 230
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 234
    new-instance p2, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$3oenyMG5yb5WKaz3OcMn0sKDrcg;

    invoke-direct {p2, p0}, Lcom/narvii/chat/hangout/-$$Lambda$HangoutListFragment$3oenyMG5yb5WKaz3OcMn0sKDrcg;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0903ed

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 94
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const v1, -0x7f000001

    .line 94
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object p1
.end method

.method public shouldShowPageBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateThemeUI()V
    .locals 3

    .line 536
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateThemeUI()V

    .line 537
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 538
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 539
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 540
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
