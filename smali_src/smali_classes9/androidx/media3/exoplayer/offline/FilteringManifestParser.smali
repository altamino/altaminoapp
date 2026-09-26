.class public final Landroidx/media3/exoplayer/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final streamKeys:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->parser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/offline/FilterableManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->parser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/offline/FilterableManifest;

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroidx/media3/exoplayer/offline/FilterableManifest;

    .line 28
    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/offline/FilteringManifestParser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/offline/FilterableManifest;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
