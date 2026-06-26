.class final Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $audioClipList:Ljava/util/ArrayList;

.field final synthetic $curMainTrackPlaybackTime:I

.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->$audioClipList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->$curMainTrackPlaybackTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 7

    const-string v0, "it"

    .line 250
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->$audioClipList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addAudioClipList(Ljava/util/ArrayList;)V

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 254
    iget v1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->$curMainTrackPlaybackTime:I

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$updateAddMusicButton(Lcom/narvii/video/AudioEditorFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
