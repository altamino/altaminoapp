.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;
.source "OnlineAudioPickerListCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 68
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/asset/sound/search2"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListCategoryFragment;

    iget-object v1, v1, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    iget-object v1, v1, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    const-string v2, "categoryId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->configDefaultRequestParam(Lcom/narvii/util/http/ApiRequest$Builder;Z)V

    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method
