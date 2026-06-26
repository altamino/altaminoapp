.class public Lcom/narvii/video/attachment/caption/CaptionFontFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "CaptionFontFragment.java"

# interfaces
.implements Lcom/narvii/asset/OnAssetSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;
    }
.end annotation


# instance fields
.field fontObjectId:Ljava/lang/String;

.field fontPath:Ljava/lang/String;

.field sharedDataSource:Lcom/narvii/paging/source/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const-string v1, "font"

    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 73
    :cond_0
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;-><init>(Lcom/narvii/video/attachment/caption/CaptionFontFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    const-string v1, "captionFont"

    .line 74
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/asset/AssetDownloader;

    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/asset/AssetAdapter;->setAssetDownloader(Lcom/narvii/asset/IAssetDownloader;)V

    .line 76
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->fontObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/asset/AssetAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p0}, Lcom/narvii/asset/AssetAdapter;->setOnAssetSelectedListener(Lcom/narvii/asset/OnAssetSelectListener;)V

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 64
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

.method public onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onFontChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    const-string p1, "fontPath"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->fontPath:Ljava/lang/String;

    const-string p1, "fontObjectId"

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->fontObjectId:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 52
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_font:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 59
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
