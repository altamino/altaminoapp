.class public final Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsExtractorFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/google/common/primitives/e;->h([II)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private d(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/Extractor;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            ")",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    const/4 v0, 0x7

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xb

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 p3, 0xd

    .line 22
    .line 23
    if-eq p1, p3, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 28
    .line 29
    iget-object p2, p2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2, p4}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 36
    .line 37
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0, p2, p3, p4}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->f(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/ts/TsExtractor;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {p4, p2, p3}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->e(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_3
    new-instance p1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    .line 50
    const/4 p2, 0x0

    .line 51
    .line 52
    const-wide/16 p3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2, p3, p4}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_4
    new-instance p1, Landroidx/media3/extractor/ts/AdtsExtractor;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    .line 62
    return-object p1

    .line 63
    .line 64
    :cond_5
    new-instance p1, Landroidx/media3/extractor/ts/Ac4Extractor;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_6
    new-instance p1, Landroidx/media3/extractor/ts/Ac3Extractor;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    .line 74
    return-object p1
.end method

.method private static e(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;)Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->g(Landroidx/media3/common/Format;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    .line 13
    :goto_0
    if-eqz p2, :cond_1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    move-result-object p2

    .line 19
    :goto_1
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p0, v1, p2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V

    .line 23
    return-object v0
.end method

.method private static f(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/ts/TsExtractor;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            ")",
            "Landroidx/media3/extractor/ts/TsExtractor;"
        }
    .end annotation

    .line 1
    .line 2
    or-int/lit8 v0, p0, 0x10

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    or-int/lit8 v0, p0, 0x30

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 15
    .line 16
    const-string p1, "application/cea-608"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    move-result-object p3

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    :goto_0
    iget-object p0, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    const-string p1, "audio/mp4a-latm"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    or-int/lit8 v0, v0, 0x2

    .line 52
    .line 53
    .line 54
    :cond_2
    const-string/jumbo p1, "video/avc"

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    or-int/lit8 v0, v0, 0x4

    .line 63
    .line 64
    :cond_3
    new-instance p0, Landroidx/media3/extractor/ts/TsExtractor;

    .line 65
    .line 66
    new-instance p1, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0, p3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 70
    const/4 p2, 0x2

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4, p1}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;)V

    .line 74
    return-object p0
.end method

.method private static g(Landroidx/media3/common/Format;)Z
    .locals 4

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    move v1, v0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->h()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    instance-of v3, v2, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    check-cast v2, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 24
    .line 25
    iget-object p0, v2, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result p0

    .line 30
    .line 31
    xor-int/lit8 p0, p0, 0x1

    .line 32
    return p0

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return v0
.end method

.method private static h(Landroidx/media3/extractor/Extractor;Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 13
    throw p0

    .line 14
    .line 15
    .line 16
    :catch_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media3/extractor/ExtractorInput;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p7, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p7}, Landroidx/media3/common/FileTypes;->a(Ljava/lang/String;)I

    .line 6
    move-result p7

    .line 7
    .line 8
    .line 9
    invoke-static {p5}, Landroidx/media3/common/FileTypes;->b(Ljava/util/Map;)I

    .line 10
    move-result p5

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->c(Landroid/net/Uri;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v1, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 19
    array-length v2, v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {p7, v0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b(ILjava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p5, v0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b(ILjava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b(ILjava/util/List;)V

    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    .line 36
    :goto_0
    if-ge v4, v2, :cond_0

    .line 37
    .line 38
    aget v5, v1, v4

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b(ILjava/util/List;)V

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    .line 54
    if-ge v3, v2, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v2, p2, p3, p4}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->d(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/Extractor;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Landroidx/media3/extractor/Extractor;

    .line 75
    .line 76
    .line 77
    invoke-static {v4, p6}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->h(Landroidx/media3/extractor/Extractor;Landroidx/media3/extractor/ExtractorInput;)Z

    .line 78
    move-result v5

    .line 79
    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    new-instance p1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, v4, p2, p4}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 86
    return-object p1

    .line 87
    .line 88
    :cond_1
    if-nez v1, :cond_3

    .line 89
    .line 90
    if-eq v2, p7, :cond_2

    .line 91
    .line 92
    if-eq v2, p5, :cond_2

    .line 93
    .line 94
    if-eq v2, p1, :cond_2

    .line 95
    .line 96
    const/16 v5, 0xb

    .line 97
    .line 98
    if-ne v2, v5, :cond_3

    .line 99
    :cond_2
    move-object v1, v4

    .line 100
    .line 101
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_4
    new-instance p1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    check-cast p3, Landroidx/media3/extractor/Extractor;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p3, p2, p4}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 114
    return-object p1
.end method
