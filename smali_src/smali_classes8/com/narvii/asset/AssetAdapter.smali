.class public Lcom/narvii/asset/AssetAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/asset/AssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/asset/AssetAdapter$StyleHolder;
    }
.end annotation


# instance fields
.field assetDownloader:Lcom/narvii/asset/IAssetDownloader;

.field emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

.field onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

.field pendingSelectId:Ljava/lang/String;

.field selectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method

.method private applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/asset/OnAssetSelectListener;->onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget p2, Lcom/narvii/lib/R$string;->failed_to_load_asset:I

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method private getDownloadStatusInfo(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->isNone()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/narvii/asset/IAssetDownloader;->getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getEmptyAssetHost()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/asset/EmptyAssetHost;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/asset/EmptyAssetHost;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    .line 14
    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->supportDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->getEmptyAssetHost()Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->supportDisable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/narvii/asset/AssetAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    instance-of v2, v1, Lcom/narvii/asset/IAssetHost;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/asset/IAssetHost;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/asset/IAssetHost;->getIAsset()Lcom/narvii/asset/IAsset;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/narvii/asset/AssetAdapter;->getDownloadStatusInfo(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->cover:Lcom/narvii/widget/NVImageView;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/asset/IAsset;->getCoverImage()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 37
    .line 38
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloadingLayout:Landroid/view/View;

    .line 39
    .line 40
    iget v4, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x1

    .line 45
    .line 46
    if-ne v4, v7, :cond_0

    .line 47
    move v4, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v4, v5

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget v3, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 55
    .line 56
    if-ne v3, v7, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-interface {v3, v1, p0}, Lcom/narvii/asset/IAssetDownloader;->loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V

    .line 64
    .line 65
    :cond_1
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloading:Lcom/narvii/widget/CircleProgressBar;

    .line 66
    .line 67
    iget v4, v2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 68
    .line 69
    const/high16 v7, 0x42c80000    # 100.0f

    .line 70
    mul-float/2addr v4, v7

    .line 71
    float-to-int v4, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 75
    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    iget v3, v2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 84
    mul-float/2addr v3, v7

    .line 85
    float-to-int v3, v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, ""

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    const-string v3, "iasset"

    .line 100
    .line 101
    .line 102
    invoke-static {v3, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    :cond_2
    iget-object p2, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->notDownloaded:Landroid/widget/ImageView;

    .line 105
    .line 106
    iget v0, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 107
    .line 108
    if-nez v0, :cond_3

    .line 109
    move v5, v6

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result p2

    .line 123
    .line 124
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 128
    .line 129
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 130
    .line 131
    sget p2, Lcom/narvii/lib/R$id;->_asset:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    :cond_4
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget v0, Lcom/narvii/lib/R$layout;->item_asset:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    new-instance p2, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p0, p1}, Lcom/narvii/asset/AssetAdapter$StyleHolder;-><init>(Lcom/narvii/asset/AssetAdapter;Landroid/view/View;)V

    .line 21
    return-object p2
.end method

.method public onDetach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/narvii/asset/IAssetDownloader;->removeDownloadListenerByTag(Ljava/lang/Object;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onError(Lcom/narvii/asset/IAsset;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/narvii/asset/IAssetDownloader;->deleteDownloadedFile(Lcom/narvii/asset/IAsset;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget p2, Lcom/narvii/lib/R$string;->failed_to_download:I

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/asset/IAssetHost;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/asset/IAssetHost;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/asset/IAssetHost;->getIAsset()Lcom/narvii/asset/IAsset;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->isNone()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0, v2}, Lcom/narvii/asset/OnAssetSelectListener;->onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/narvii/asset/IAssetDownloader;->getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iget v1, v1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    const-string v1, "iasset"

    .line 52
    .line 53
    const-string v2, "start download"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v0, p0}, Lcom/narvii/asset/IAssetDownloader;->loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->pendingSelectId:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v2, 0x2

    .line 73
    .line 74
    if-ne v1, v2, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v0}, Lcom/narvii/asset/IAssetDownloader;->getDownloadedFile(Lcom/narvii/asset/IAsset;)Ljava/io/File;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0, v1}, Lcom/narvii/asset/AssetAdapter;->applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 87
    move-result p1

    .line 88
    return p1
.end method

.method public onPostExecute(Lcom/narvii/asset/IAsset;Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->pendingSelectId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/asset/AssetAdapter;->applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    :goto_0
    return-void
.end method

.method public onProgressUpdate(Lcom/narvii/asset/IAsset;II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    mul-int/lit8 p2, p2, 0x64

    .line 8
    div-int/2addr p2, p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "-update"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string p3, "iasset"

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    :goto_0
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result p3

    .line 33
    .line 34
    if-ge p2, p3, :cond_1

    .line 35
    .line 36
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    sget v0, Lcom/narvii/lib/R$id;->_asset:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    instance-of v1, v0, Lcom/narvii/asset/IAsset;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/asset/IAsset;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    return-void
.end method

.method protected pageStatusLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->item_asset_load_state:I

    return v0
.end method

.method public setAssetDownloader(Lcom/narvii/asset/IAssetDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    return-void
.end method

.method public setOnAssetSelectedListener(Lcom/narvii/asset/OnAssetSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    return-void
.end method

.method public setSelectedId(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected supportDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
