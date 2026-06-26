.class public final Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 6

    .line 65
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    .line 68
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v1}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "previewPlayer.getAudioCl\u2026[selectedAudioTrackIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$updateAddMusicButton(Lcom/narvii/video/AudioEditorFragment;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result p1

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 74
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public onOptionDone(I)V
    .locals 8

    .line 51
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v1}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "previewPlayer.getAudioCl\u2026[selectedAudioTrackIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 55
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v1

    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 56
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 59
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    return-void
.end method
