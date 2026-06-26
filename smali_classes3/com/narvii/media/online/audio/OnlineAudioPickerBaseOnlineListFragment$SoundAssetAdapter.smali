.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "OnlineAudioPickerBaseOnlineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SoundAssetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/media/online/audio/model/AssetData;",
        "Lcom/narvii/media/online/audio/model/AssetListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private seed:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 201
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected configDefaultRequestParam(Lcom/narvii/util/http/ApiRequest$Builder;Z)V
    .locals 3

    .line 231
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    invoke-static {p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$000(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$000(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    .line 234
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "filterIds"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 240
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    iget p2, p2, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    if-ltz p2, :cond_2

    invoke-static {}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$100()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_2

    .line 241
    invoke-static {}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$100()[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    iget v0, v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    aget-object p2, p2, v0

    const-string v0, "sortBy"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 244
    :cond_2
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v0, "seed"

    .line 245
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_3
    return-void
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/media/online/audio/model/AssetData;",
            ">;"
        }
    .end annotation

    .line 206
    const-class v0, Lcom/narvii/media/online/audio/model/AssetData;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 266
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 268
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/AssetData;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/narvii/media/online/audio/model/AssetData;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 269
    :goto_0
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/Sound;

    if-nez p3, :cond_1

    return-object p2

    .line 272
    :cond_1
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 278
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/AssetData;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/media/online/audio/model/AssetData;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {v1, v0, p4, p5}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 285
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;I)V
    .locals 4

    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 257
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    sget v0, Lcom/narvii/lib/R$string;->filter_results_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    iget-object p1, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->seed:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 197
    check-cast p2, Lcom/narvii/media/online/audio/model/AssetListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    invoke-virtual {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->stopPlayMusic()V

    .line 227
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/media/online/audio/model/AssetListResponse;",
            ">;"
        }
    .end annotation

    .line 211
    const-class v0, Lcom/narvii/media/online/audio/model/AssetListResponse;

    return-object v0
.end method
