.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/asset/sound/search2"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->A(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "q"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->configDefaultRequestParam(Lcom/narvii/util/http/ApiRequest$Builder;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
