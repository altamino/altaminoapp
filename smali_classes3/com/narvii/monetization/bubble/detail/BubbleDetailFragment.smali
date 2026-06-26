.class public Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "BubbleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;,
        Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;
    }
.end annotation


# static fields
.field static final DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final KEY_DETAIL_REQUEST_FINISHED:Ljava/lang/String; = "detail_finished"


# instance fields
.field private adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

.field private allChatBubbleId:Ljava/lang/String;

.field private header:Lcom/narvii/list/overlay/OverlayLayout;

.field private isDetailRequestFinished:Z

.field recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

.field statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x1

    const-string v2, "detail.bubble.header"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 54
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.bubble.detail"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 55
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.bubble.fitBottom"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-object p1
.end method

.method private updateHeader()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-nez v1, :cond_1

    return-void

    .line 201
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 212
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v3, 0x7f09034a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/bubble/detail/HeaderLayout;

    .line 213
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->setHeight1(I)V

    .line 214
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->setBubble(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 137
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 138
    new-instance v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 139
    new-instance v0, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 140
    new-instance v1, Lcom/narvii/monetization/store/StoreRecommendAdapter;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat-bubble"

    const/16 v4, 0x74

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 141
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v6, v0

    .line 147
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, v0

    move-object v2, p0

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 148
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 149
    new-instance v1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;-><init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 186
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoreChatBubbleDetailPage"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_0

    const-string v0, "detail_finished"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 87
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 88
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0485

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 79
    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setFooterPadding(I)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-eq v0, v1, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 99
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .line 181
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    const-string v1, "detail_finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09080a

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 172
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 173
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->updateHeader()V

    .line 174
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    :cond_0
    return-void
.end method
