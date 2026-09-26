.class public final Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;


# instance fields
.field final extractor:Landroidx/media3/extractor/Extractor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final multivariantPlaylistFormat:Landroidx/media3/common/Format;

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 3
    .line 4
    sget-object v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, v1}, Landroidx/media3/extractor/Extractor;->c(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/extractor/Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 6
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v1, v2}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    .line 8
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/media3/extractor/ts/TsExtractor;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    instance-of v0, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    instance-of v0, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public f()Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 12
    .line 13
    instance-of v1, v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    instance-of v1, v0, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    instance-of v1, v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    new-instance v0, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    instance-of v0, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    .line 67
    .line 68
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 76
    return-object v1

    .line 77
    .line 78
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v2, "Unexpected extractor type for recreation: "

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0
.end method
