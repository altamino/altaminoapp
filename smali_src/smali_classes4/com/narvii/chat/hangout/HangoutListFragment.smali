.class public Lcom/narvii/chat/hangout/HangoutListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;,
        Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;,
        Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterIndex:I

    .line 9
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method private getFitlerType()Ljava/lang/String;
    .locals 3

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

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->showFilterDialog(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->showFilterDialog(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$showFilterDialog$2(ILandroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterIndex:I

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    const p2, 0x7f120fc5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x1

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    const p2, 0x7f120ea5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p2, 0x2

    .line 27
    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f120b6c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    :cond_2
    :goto_0
    const-string p1, "ChatFilter"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string p2, "filterType"

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->getFitlerType()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 71
    const/4 p2, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 87
    .line 88
    const/16 p2, 0x200

    .line 89
    const/4 v0, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 93
    :cond_3
    return-void
.end method

.method private showFilterDialog(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/hangout/HangoutFilterDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/chat/hangout/HangoutFilterDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/chat/hangout/c;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/c;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog;->setOnItemClickListener(Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 24
    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/hangout/HangoutListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->lambda$onCreateOptionsMenu$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/hangout/HangoutListFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/hangout/HangoutListFragment;->lambda$showFilterDialog$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/hangout/HangoutListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/hangout/HangoutListFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterProgress:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/hangout/HangoutListFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/hangout/HangoutListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->getFitlerType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const/high16 v0, 0x41700000    # 15.0f

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    .line 20
    new-instance v6, Lcom/narvii/list/DivideColumnAdapter;

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, v6

    .line 24
    move-object v1, p0

    .line 25
    move v2, p1

    .line 26
    move v4, p1

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->chatListAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$OpenChatAdapter;

    .line 32
    const/4 v7, 0x2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v0, v7}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$3;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$3;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 43
    const/4 v8, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v6, v8}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 57
    move-result v0

    .line 58
    const/4 v6, 0x0

    .line 59
    .line 60
    .line 61
    const v9, 0x7f120cce

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0, v1, v6}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v8}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_0
    new-instance v10, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;

    .line 85
    .line 86
    .line 87
    invoke-direct {v10, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 100
    .line 101
    new-instance v11, Lcom/narvii/list/DivideColumnAdapter;

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    move-object v0, v11

    .line 105
    move-object v1, p0

    .line 106
    move v2, p1

    .line 107
    move v4, p1

    .line 108
    .line 109
    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, p1, v7}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 116
    .line 117
    new-instance p1, Lcom/narvii/chat/hangout/HangoutListFragment$4;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$4;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v10}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0, v1, v6}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0, v8}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v11}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "chat_public_room"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 6
    move-result v0

    .line 7
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "liveLayer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 12
    .line 13
    const-string v1, "public-chats"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 31
    .line 32
    const-string v0, "filter"

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 39
    move-result v0

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 49
    :goto_0
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 53
    .line 54
    const-string v1, "title"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_1
    const v1, 0x7f120e4c

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 79
    .line 80
    :goto_1
    if-nez p1, :cond_2

    .line 81
    .line 82
    const-string p1, "statistics"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 89
    .line 90
    const-string v1, "Public Chats Page Opened"

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    const-string v1, "Source"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    const-string v1, "Public Chats Page Opened Total"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 116
    .line 117
    const-string p1, "config"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 127
    move-result p1

    .line 128
    .line 129
    if-nez p1, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 133
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d002d

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a05a3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a05a2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/chat/hangout/b;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/chat/hangout/b;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    const v2, 0x7f12043a

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x2

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d035e

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d0213

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/chat/hangout/HangoutListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$2;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x200

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/ProxyAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "filter"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filter:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a05a3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    .line 23
    const p2, 0x7f0a05a2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterText:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 43
    move-result-object p2

    .line 44
    const/4 v0, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 48
    .line 49
    const-string p2, "config"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0a04e9

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/chat/hangout/HangoutListFragment$1;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/narvii/chat/hangout/HangoutListFragment$1;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    instance-of p1, p1, Lcom/narvii/widget/NVListView;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 87
    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 96
    move-result p2

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment;->filterView:Landroid/view/View;

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    new-instance p2, Lcom/narvii/chat/hangout/a;

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, p0}, Lcom/narvii/chat/hangout/a;-><init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_4
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a04eb

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListFragment;->isDarkTheme()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    const v2, 0x7f060114

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    const v1, -0x7f000001

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateThemeUI()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "config"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 26
    .line 27
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    :cond_1
    return-void
.end method
