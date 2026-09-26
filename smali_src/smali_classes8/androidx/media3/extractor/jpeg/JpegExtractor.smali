.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final EXIF_HEADER:J = 0x45786966L

.field private static final EXIF_ID_CODE_LENGTH:I = 0x6

.field private static final HEADER_XMP_APP1:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final IMAGE_TRACK_ID:I = 0x400

.field private static final MARKER_APP0:I = 0xffe0

.field private static final MARKER_APP1:I = 0xffe1

.field private static final MARKER_SOI:I = 0xffd8

.field private static final MARKER_SOS:I = 0xffda

.field private static final STATE_ENDED:I = 0x6

.field private static final STATE_READING_MARKER:I = 0x0

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x5

.field private static final STATE_READING_SEGMENT:I = 0x2

.field private static final STATE_READING_SEGMENT_LENGTH:I = 0x1

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x4


# instance fields
.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private marker:I

.field private motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private segmentLength:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 16
    return-void
.end method

.method private a(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 27
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->g([Landroidx/media3/common/Metadata$Entry;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 20
    .line 21
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->d(Landroidx/media3/extractor/SeekMap;)V

    .line 33
    const/4 v0, 0x6

    .line 34
    .line 35
    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 36
    return-void
.end method

.method private static f(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, -0x1

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->a(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    return-object v1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->a(J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private varargs g([Landroidx/media3/common/Metadata$Entry;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    .line 9
    .line 10
    const/16 v1, 0x400

    .line 11
    const/4 v2, 0x4

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 21
    .line 22
    const-string v2, "image/jpeg"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/Format;)V

    .line 43
    return-void
.end method

.method private h(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method private i(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    .line 25
    .line 26
    .line 27
    const v0, 0xffda

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    iget-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 32
    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const/4 p1, 0x4

    .line 39
    .line 40
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->e()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    const v0, 0xffd0

    .line 49
    .line 50
    if-lt p1, v0, :cond_2

    .line 51
    .line 52
    .line 53
    const v0, 0xffd9

    .line 54
    .line 55
    if-le p1, v0, :cond_3

    .line 56
    .line 57
    .line 58
    :cond_2
    const v0, 0xff01

    .line 59
    .line 60
    if-eq p1, v0, :cond_3

    .line 61
    const/4 p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method private j(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    .line 3
    .line 4
    .line 5
    const v1, 0xffe1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    iget v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    .line 50
    move-result-wide v3

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v3, v4}, Landroidx/media3/extractor/jpeg/JpegExtractor;->f(Ljava/lang/String;J)Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-wide v0, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 61
    .line 62
    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 69
    .line 70
    :cond_1
    :goto_0
    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 71
    return-void
.end method

.method private k(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 22
    move-result p1

    .line 23
    sub-int/2addr p1, v1

    .line 24
    .line 25
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 28
    return-void
.end method

.method private l(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->e()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 33
    .line 34
    :cond_1
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 35
    .line 36
    iget-wide v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 52
    .line 53
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    .line 54
    .line 55
    iget-wide v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    check-cast v3, Landroidx/media3/extractor/ExtractorOutput;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->m()V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->e()V

    .line 77
    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroidx/media3/common/Metadata$Entry;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->g([Landroidx/media3/common/Metadata$Entry;)V

    .line 18
    const/4 v0, 0x5

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 21
    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public c(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    if-eq v0, v3, :cond_7

    .line 12
    const/4 v3, 0x4

    .line 13
    .line 14
    if-eq v0, v3, :cond_5

    .line 15
    const/4 v1, 0x5

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/4 p1, 0x6

    .line 19
    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    throw p1

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 35
    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    :cond_2
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 39
    .line 40
    new-instance v0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 41
    .line 42
    iget-wide v3, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, v3, v4}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->c(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 61
    move-result p1

    .line 62
    .line 63
    if-ne p1, v2, :cond_4

    .line 64
    .line 65
    iget-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 66
    .line 67
    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 68
    add-long/2addr v0, v2

    .line 69
    .line 70
    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 71
    :cond_4
    return p1

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 75
    move-result-wide v3

    .line 76
    .line 77
    iget-wide v5, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 78
    .line 79
    cmp-long v0, v3, v5

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iput-wide v5, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 84
    return v2

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->l(Landroidx/media3/extractor/ExtractorInput;)V

    .line 88
    return v1

    .line 89
    .line 90
    .line 91
    :cond_7
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->j(Landroidx/media3/extractor/ExtractorInput;)V

    .line 92
    return v1

    .line 93
    .line 94
    .line 95
    :cond_8
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->k(Landroidx/media3/extractor/ExtractorInput;)V

    .line 96
    return v1

    .line 97
    .line 98
    .line 99
    :cond_9
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->i(Landroidx/media3/extractor/ExtractorInput;)V

    .line 100
    return v1
.end method

.method public d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->h(Landroidx/media3/extractor/ExtractorInput;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0xffd8

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    return v2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->h(Landroidx/media3/extractor/ExtractorInput;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    .line 18
    .line 19
    .line 20
    const v1, 0xffe0

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->h(Landroidx/media3/extractor/ExtractorInput;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    .line 32
    .line 33
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    .line 34
    .line 35
    .line 36
    const v1, 0xffe1

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    return v2

    .line 40
    :cond_2
    const/4 v0, 0x2

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 46
    const/4 v1, 0x6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->J()J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    .line 68
    .line 69
    cmp-long p1, v0, v3

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    const/4 v2, 0x1

    .line 81
    :cond_3
    return v2
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 8
    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    .line 16
    const/4 v1, 0x5

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method
