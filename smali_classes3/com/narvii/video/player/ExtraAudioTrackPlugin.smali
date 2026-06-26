.class public final Lcom/narvii/video/player/ExtraAudioTrackPlugin;
.super Ljava/lang/Object;
.source "ExtraAudioTrackPlugin.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;


# instance fields
.field private final context:Landroid/content/Context;

.field private singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method public openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 2

    const-string v0, "audioClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/narvii/video/player/ExoEditorAudioPlayer;

    iget-object v1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p2, :cond_3

    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    return-object p1
.end method
