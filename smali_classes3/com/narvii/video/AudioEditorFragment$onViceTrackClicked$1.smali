.class final Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onViceTrackClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment$onViceTrackClicked$1\n*L\n1#1,326:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $viceClip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->$viceClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 270
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 272
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->$viceClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "audio_wave"

    invoke-static/range {v2 .. v8}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 276
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->$viceClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditingPanelCallback$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/widget/AudioEditorPanel;->bind(Lcom/narvii/video/model/AVClipInfoPack;ILcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    :cond_2
    return-void
.end method
