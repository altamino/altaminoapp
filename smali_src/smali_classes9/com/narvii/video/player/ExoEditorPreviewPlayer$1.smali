.class public final Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/player/ExoEditorPreviewPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->a(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->b(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->c(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public bridge synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->d(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->e(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->f(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->g(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->h(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->i(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->j(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->k(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->l(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1    # Landroidx/media3/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->m(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->n(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->o(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->p(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->q(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->r(Landroidx/media3/common/Player$Listener;I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getCurrentPlaybackState$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setCurrentPlaybackState$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V

    .line 18
    const/4 v0, 0x4

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    .line 28
    if-eq p1, v1, :cond_4

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$isVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onDoNextVideoSeek()V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoCompleted()V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_4
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getInWindowChangingDuringPlayback$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setInWindowChangingDuringPlayback$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$isVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 146
    .line 147
    .line 148
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onDoNextVideoSeek()V

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    return-void

    .line 151
    .line 152
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getOnVideoPrepared$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 156
    move-result p1

    .line 157
    .line 158
    if-nez p1, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 161
    const/4 v0, 0x1

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setOnVideoPrepared$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    .line 165
    .line 166
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v0

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 187
    .line 188
    .line 189
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoPrepared()V

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$isVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z

    .line 196
    move-result p1

    .line 197
    .line 198
    if-eqz p1, :cond_8

    .line 199
    .line 200
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    .line 216
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    move-result v0

    .line 218
    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 226
    .line 227
    .line 228
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onDoNextVideoSeek()V

    .line 229
    goto :goto_4

    .line 230
    :cond_8
    :goto_5
    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->s(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "error"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->t(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoError(Ljava/lang/Exception;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->u(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->v(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->w(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->x(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1
    .param p1    # Landroidx/media3/common/Player$PositionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/media3/common/Player$PositionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oldPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/c0;->y(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 3
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    invoke-static {p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getVideoPlayer$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setInWindowChangingDuringPlayback$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 5
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getVideoPlayer$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$setCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V

    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    invoke-static {p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    move-result p2

    if-ltz p2, :cond_3

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    invoke-static {p3}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 8
    invoke-static {p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getVideoPlayer$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    invoke-virtual {p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/interfaces/IMediaEventListener;

    iget-object p3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 10
    invoke-static {p3}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I

    move-result p3

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/c0;->z(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->A(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->B(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->C(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->D(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->E(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->F(Landroidx/media3/common/Player$Listener;II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->G(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->H(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->I(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2
    .param p1    # Landroidx/media3/common/VideoSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoSize"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;->this$0:Lcom/narvii/video/player/ExoEditorPreviewPlayer;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->access$getVideoView$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Lcom/narvii/nvplayerview/NVVideoView;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    .line 15
    .line 16
    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 20
    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->K(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
