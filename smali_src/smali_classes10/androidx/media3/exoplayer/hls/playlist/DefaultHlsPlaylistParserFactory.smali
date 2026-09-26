.class public final Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    .line 6
    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            ")",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 6
    return-object v0
.end method
