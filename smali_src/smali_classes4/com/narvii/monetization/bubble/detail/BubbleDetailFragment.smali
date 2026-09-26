.class public Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;,
        Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.bubble.header"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    const-string v1, "detail.bubble.detail"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    const-string v1, "detail.bubble.fitBottom"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-void
.end method

.method private updateHeader()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f0700a1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 46
    .line 47
    .line 48
    const v3, 0x7f0d0081

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 54
    .line 55
    .line 56
    const v3, 0x7f0a042d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/monetization/bubble/detail/HeaderLayout;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->setHeight1(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/bubble/detail/HeaderLayout;->setBubble(Lcom/narvii/model/ChatBubble;)V

    .line 69
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->updateHeader()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 20
    .line 21
    const/16 v2, 0x74

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    const-string v4, "chat-bubble"

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const/high16 v1, 0x41000000    # 8.0f

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 53
    move-result v0

    .line 54
    float-to-int v6, v0

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 57
    move-object v1, v0

    .line 58
    move-object v2, p0

    .line 59
    move v3, v6

    .line 60
    move v4, v6

    .line 61
    move v5, v6

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 67
    const/4 v2, 0x3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;-><init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "StoreChatBubbleDetailPage"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v0, "detail_finished"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    .line 22
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04b4

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onDestroy()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    const/high16 v0, 0x42a00000    # 80.0f

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setFooterPadding(I)V

    .line 19
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->adapter:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 34
    return v0
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
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
    const-string v0, "detail_finished"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->isDetailRequestFinished:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->updateHeader()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 44
    move-result v0

    .line 45
    add-int/2addr p2, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 49
    :cond_0
    return-void
.end method
