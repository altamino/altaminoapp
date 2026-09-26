.class public interface abstract Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;
    }
.end annotation


# virtual methods
.method public abstract a()J
.end method

.method public abstract b(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract c(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract d(Landroid/net/Uri;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
.end method

.method public abstract e(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g(Landroid/net/Uri;)V
.end method

.method public abstract h(Landroid/net/Uri;)Z
.end method

.method public abstract i()Z
.end method

.method public abstract j(Landroid/net/Uri;J)Z
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract stop()V
.end method
