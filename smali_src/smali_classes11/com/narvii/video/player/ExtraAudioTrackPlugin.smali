.class public final Lcom/narvii/video/player/ExtraAudioTrackPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method public openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "audioClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/video/player/ExoEditorAudioPlayer;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->context:Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 33
    .line 34
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 35
    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 42
    .line 43
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->singleAudioTrackPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 44
    return-object p1
.end method
