.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method protected configDefaultRequestParam(Lcom/narvii/util/http/ApiRequest$Builder;Z)V
    .locals 3

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->w(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->w(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, ","

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    const-string v0, "filterIds"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    .line 60
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 61
    .line 62
    iget p2, p2, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 63
    .line 64
    if-ltz p2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->y()[Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    array-length v0, v0

    .line 70
    .line 71
    if-ge p2, v0, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->y()[Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 78
    .line 79
    iget v0, v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 80
    .line 81
    aget-object p2, p2, v0

    .line 82
    .line 83
    const-string v0, "sortBy"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    .line 88
    :cond_2
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    const-string v0, "seed"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/AssetData;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetData;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    instance-of p3, p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    return-object p2

    .line 24
    .line 25
    :cond_1
    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->configItemView(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;)V

    .line 31
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/online/audio/model/AssetData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/media/online/audio/model/AssetData;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    instance-of v1, v0, Lcom/narvii/media/online/audio/model/Sound;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/media/online/audio/model/Sound;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, p4, p5}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->dealClickEvent(Lcom/narvii/media/online/audio/model/Sound;Landroid/view/View;Landroid/view/View;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;I)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->x(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->x(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    sget v0, Lcom/narvii/lib/R$string;->filter_results_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->total:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p3, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->seed:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->seed:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/media/online/audio/model/AssetListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->stopPlayMusic()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 9
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

    const-class v0, Lcom/narvii/media/online/audio/model/AssetListResponse;

    return-object v0
.end method
