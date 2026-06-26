.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final AC4_FILE_EXTENSION:Ljava/lang/String; = ".ac4"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 83
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 3

    .line 311
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 317
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ZZ)V

    return-object v0
.end method

.method private static buildResultForSameExtractorType(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 1

    .line 295
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz v0, :cond_0

    .line 296
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 297
    :cond_0
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz p1, :cond_1

    .line 298
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 299
    :cond_1
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz p1, :cond_2

    .line 300
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 301
    :cond_2
    instance-of p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-eqz p1, :cond_3

    .line 302
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 303
    :cond_3
    instance-of p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz p0, :cond_4

    .line 304
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 195
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".webvtt"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".vtt"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, ".aac"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    :cond_2
    const-string v0, ".ac3"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".ec3"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ".ac4"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    :cond_4
    const-string v0, ".mp3"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    :cond_5
    const-string v0, ".mp4"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 216
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {p1, p4, p2, p3, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    .line 212
    :cond_7
    :goto_0
    invoke-static {p5, p2, p4, p3}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 203
    :cond_8
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1

    .line 198
    :cond_9
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p5}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1
.end method

.method private static createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 276
    :goto_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 278
    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_0

    .line 279
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object p1, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 285
    :goto_1
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x0

    if-eqz p3, :cond_3

    goto :goto_3

    .line 290
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_3
    move-object v6, p3

    move-object v1, v7

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    return-object v7
.end method

.method private static createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x0

    const-string v0, "application/cea-608"

    .line 243
    invoke-static {p3, v0, p1, p3}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 242
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 251
    :goto_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 256
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    .line 259
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 264
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z
    .locals 1

    .line 334
    instance-of v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 329
    throw p0

    .line 328
    :catch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 100
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isReusable(Lcom/google/android/exoplayer2/extractor/Extractor;)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 101
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    invoke-static {p1, p3, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResultForSameExtractorType(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p7

    if-eqz p7, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected previousExtractor type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 116
    invoke-interface {p8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 117
    invoke-static {p1, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 124
    :cond_3
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-nez p2, :cond_4

    .line 125
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p7, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p2, p7, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 126
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 127
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 131
    :cond_4
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_5

    .line 132
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .line 133
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_5

    .line 134
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 138
    :cond_5
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_6

    .line 139
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .line 140
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_6

    .line 141
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 145
    :cond_6
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    if-nez p2, :cond_7

    .line 146
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    .line 147
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_7

    .line 148
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 152
    :cond_7
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-nez p2, :cond_8

    .line 153
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 155
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_8

    .line 156
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 160
    :cond_8
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-nez p2, :cond_9

    .line 162
    invoke-static {p6, p3, p5, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p2

    .line 163
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p5

    if-eqz p5, :cond_9

    .line 164
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 168
    :cond_9
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p2, :cond_a

    .line 169
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean p5, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 170
    invoke-static {p2, p5, p3, p4, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p2

    .line 176
    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 177
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 182
    :cond_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1
.end method
