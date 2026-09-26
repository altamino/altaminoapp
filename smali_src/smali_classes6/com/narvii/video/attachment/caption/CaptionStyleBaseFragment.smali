.class public abstract Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/asset/OnAssetSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;
    }
.end annotation


# instance fields
.field assetAdapter:Lcom/narvii/asset/AssetAdapter;

.field sharedDataSource:Lcom/narvii/paging/source/DataSource;

.field styleId:Ljava/lang/String;

.field styleObjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "style"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;-><init>(Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    .line 33
    .line 34
    const-string v0, "captionStyle"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/asset/AssetDownloader;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/narvii/asset/AssetAdapter;->setAssetDownloader(Lcom/narvii/asset/IAssetDownloader;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleObjectId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/asset/AssetAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/narvii/asset/AssetAdapter;->setOnAssetSelectedListener(Lcom/narvii/asset/OnAssetSelectListener;)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    .line 60
    return-object v0
.end method

.method public createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 11
    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    instance-of p1, p1, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;->resetViewsWhenEditing()V

    .line 23
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 7
    .line 8
    .line 9
    const-string/jumbo p1, "styleId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "styleObjectId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleObjectId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_style:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const/high16 v1, 0x41700000    # 15.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 31
    return-void
.end method
