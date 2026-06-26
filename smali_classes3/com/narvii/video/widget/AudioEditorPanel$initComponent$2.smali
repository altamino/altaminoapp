.class final Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;
.super Ljava/lang/Object;
.source "AudioEditorPanel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $audioClip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $maxOutputLengthInMs:I

.field final synthetic $retrieverCutterInterval:I

.field final synthetic this$0:Lcom/narvii/video/widget/AudioEditorPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/model/AVClipInfoPack;II)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    iput-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput p3, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$maxOutputLengthInMs:I

    iput p4, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$retrieverCutterInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    .line 119
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    const-string v2, "audioClip.copy()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 121
    iget-object v2, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    sget v3, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {v2, v3}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v9

    iget v10, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$maxOutputLengthInMs:I

    const/16 v1, 0x3e8

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$retrieverCutterInterval:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    move-object/from16 v18, v1

    const/16 v4, 0x65

    const/16 v5, 0xc9

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const v20, 0x9f00

    const/16 v21, 0x0

    .line 121
    invoke-static/range {v3 .. v21}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 123
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getPreviewPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin$DefaultImpls;->openSingleAudio$default(Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;Lcom/narvii/video/model/AVClipInfoPack;ZILjava/lang/Object;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/video/widget/AudioEditorPanel;->access$setAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/interfaces/IEditorAudioPlayer;)V

    .line 124
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2$1;

    invoke-direct {v2, v0}, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2$1;-><init>(Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;)V

    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 139
    :cond_0
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput v4, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 142
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    if-lez v1, :cond_1

    .line 143
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    sget v2, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {v1, v2}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/video/widget/MediaTimeLineComponent;

    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v3, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x76

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 144
    iget-object v1, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method
