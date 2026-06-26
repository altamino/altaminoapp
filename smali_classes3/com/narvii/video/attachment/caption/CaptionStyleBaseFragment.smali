.class public abstract Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "CaptionStyleBaseFragment.java"

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

    .line 26
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const-string v1, "style"

    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 51
    :cond_0
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;-><init>(Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    const-string v0, "captionStyle"

    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/asset/AssetDownloader;

    .line 53
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/asset/AssetAdapter;->setAssetDownloader(Lcom/narvii/asset/IAssetDownloader;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/asset/AssetAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    invoke-virtual {v0, p0}, Lcom/narvii/asset/AssetAdapter;->setOnAssetSelectedListener(Lcom/narvii/asset/OnAssetSelectListener;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->assetAdapter:Lcom/narvii/asset/AssetAdapter;

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 76
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    invoke-interface {p1}, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;->resetViewsWhenEditing()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    const-string p1, "styleId"

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleId:Ljava/lang/String;

    const-string p1, "styleObjectId"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->styleObjectId:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 103
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_style:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
