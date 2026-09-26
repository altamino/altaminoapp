.class public final Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/player/ExoEditorPreviewPlayer;->activeViceTrackPlayer(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $clip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic $player:Lcom/narvii/video/player/ExoEditorAudioPlayer;

.field final synthetic this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Lcom/narvii/video/player/ExoEditorAudioPlayer;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->$player:Lcom/narvii/video/player/ExoEditorAudioPlayer;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method private final onTrackPrepared()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getPreparedViceTrackCount$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setPreparedViceTrackCount$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getPreparedViceTrackCount$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onAudioTrackAllPrepared()V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioCompleted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioCompleted(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    return-void
.end method

.method public onAudioError()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioError(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->onTrackPrepared()V

    .line 7
    return-void
.end method

.method public onAudioPrepared()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioPrepared(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$isMute$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->$player:Lcom/narvii/video/player/ExoEditorAudioPlayer;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->$clip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 16
    .line 17
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->setVolume(F)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;->onTrackPrepared()V

    .line 24
    return-void
.end method
