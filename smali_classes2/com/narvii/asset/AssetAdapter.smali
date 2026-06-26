.class public Lcom/narvii/asset/AssetAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "AssetAdapter.java"

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

    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method

.method private applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p1, p2}, Lcom/narvii/asset/OnAssetSelectListener;->onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->failed_to_load_asset:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 206
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 210
    :cond_0
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getDownloadStatusInfo(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    if-nez v0, :cond_0

    .line 102
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 104
    :cond_0
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    invoke-interface {v0, p1}, Lcom/narvii/asset/IAssetDownloader;->getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object p1

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

    .line 164
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/narvii/asset/EmptyAssetHost;

    invoke-direct {v0}, Lcom/narvii/asset/EmptyAssetHost;-><init>()V

    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->emptyAssetHost:Lcom/narvii/asset/EmptyAssetHost;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->supportDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->getEmptyAssetHost()Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 157
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1

    .line 159
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/asset/AssetAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/narvii/asset/AssetAdapter;->supportDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 113
    instance-of v0, p1, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    if-eqz v0, :cond_4

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    .line 115
    invoke-virtual {p0, p2}, Lcom/narvii/asset/AssetAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v1

    .line 116
    instance-of v2, v1, Lcom/narvii/asset/IAssetHost;

    if-eqz v2, :cond_4

    .line 117
    check-cast v1, Lcom/narvii/asset/IAssetHost;

    invoke-interface {v1}, Lcom/narvii/asset/IAssetHost;->getIAsset()Lcom/narvii/asset/IAsset;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 119
    invoke-direct {p0, v1}, Lcom/narvii/asset/AssetAdapter;->getDownloadStatusInfo(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v2

    .line 120
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->cover:Lcom/narvii/widget/NVImageView;

    invoke-interface {v1}, Lcom/narvii/asset/IAsset;->getCoverImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 121
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloadingLayout:Landroid/view/View;

    iget v4, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget v3, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v3, v1, p0}, Lcom/narvii/asset/IAssetDownloader;->loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V

    .line 125
    :cond_1
    iget-object v3, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloading:Lcom/narvii/widget/CircleProgressBar;

    iget v4, v2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    if-nez p2, :cond_2

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "iasset"

    invoke-static {v3, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-object p2, v0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->notDownloaded:Landroid/widget/ImageView;

    iget v0, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-interface {v1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 132
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 133
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->_asset:I

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$layout;->item_asset:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/narvii/asset/AssetAdapter$StyleHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/asset/AssetAdapter$StyleHolder;-><init>(Lcom/narvii/asset/AssetAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDetach()V
    .locals 1

    .line 230
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onDetach()V

    .line 231
    iget-object v0, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0}, Lcom/narvii/asset/IAssetDownloader;->removeDownloadListenerByTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/narvii/asset/IAsset;Ljava/lang/Exception;)V
    .locals 1

    .line 216
    iget-object p2, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    if-eqz p2, :cond_0

    .line 217
    invoke-interface {p2, p1}, Lcom/narvii/asset/IAssetDownloader;->deleteDownloadedFile(Lcom/narvii/asset/IAsset;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->failed_to_download:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 39
    instance-of v0, p3, Lcom/narvii/asset/IAssetHost;

    if-eqz v0, :cond_3

    .line 41
    move-object v0, p3

    check-cast v0, Lcom/narvii/asset/IAssetHost;

    invoke-interface {v0}, Lcom/narvii/asset/IAssetHost;->getIAsset()Lcom/narvii/asset/IAsset;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->isNone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 45
    invoke-interface {v1, v0, v2}, Lcom/narvii/asset/OnAssetSelectListener;->onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z

    .line 47
    :cond_0
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v1, v0}, Lcom/narvii/asset/IAssetDownloader;->getDownloadState(Lcom/narvii/asset/IAsset;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v1

    .line 52
    iget v1, v1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v1, :cond_2

    const-string v1, "iasset"

    const-string v2, "start download"

    .line 53
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    invoke-interface {v1, v0, p0}, Lcom/narvii/asset/IAssetDownloader;->loadAsset(Lcom/narvii/asset/IAsset;Lcom/narvii/asset/AssetDownloadListener;)V

    .line 55
    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/asset/AssetAdapter;->pendingSelectId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 58
    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    invoke-interface {v1, v0}, Lcom/narvii/asset/IAssetDownloader;->getDownloadedFile(Lcom/narvii/asset/IAsset;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/asset/AssetAdapter;->applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    .line 64
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onPostExecute(Lcom/narvii/asset/IAsset;Ljava/io/File;)V
    .locals 2

    .line 194
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/asset/AssetAdapter;->pendingSelectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/narvii/asset/AssetAdapter;->applyAsset(Lcom/narvii/asset/IAsset;Ljava/io/File;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onProgressUpdate(Lcom/narvii/asset/IAsset;II)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-update"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "iasset"

    invoke-static {p3, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 179
    :goto_0
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 180
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 181
    sget v0, Lcom/narvii/lib/R$id;->_asset:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    instance-of v1, v0, Lcom/narvii/asset/IAsset;

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/narvii/asset/IAsset;

    invoke-interface {v0}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 185
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected pageStatusLayoutId()I
    .locals 1

    .line 69
    sget v0, Lcom/narvii/lib/R$layout;->item_asset_load_state:I

    return v0
.end method

.method public setAssetDownloader(Lcom/narvii/asset/IAssetDownloader;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->assetDownloader:Lcom/narvii/asset/IAssetDownloader;

    return-void
.end method

.method public setOnAssetSelectedListener(Lcom/narvii/asset/OnAssetSelectListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->onAssetSelectListener:Lcom/narvii/asset/OnAssetSelectListener;

    return-void
.end method

.method public setSelectedId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter;->selectedId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected supportDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
