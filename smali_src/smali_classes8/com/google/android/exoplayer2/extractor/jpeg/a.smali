.class public final Lcom/google/android/exoplayer2/extractor/jpeg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


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
.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private lastExtractorInput:Lcom/google/android/exoplayer2/extractor/m;

.field private marker:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/c;

.field private mp4StartPosition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/c0;

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
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 16
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 27
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/exoplayer2/extractor/n;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 33
    const/4 v0, 0x6

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 36
    return-void
.end method

.method private static f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
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
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/e;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/jpeg/b;->a(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private varargs g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/extractor/n;

    .line 9
    .line 10
    const/16 v1, 0x400

    .line 11
    const/4 v2, 0x4

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/a2$b;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 21
    .line 22
    const-string v2, "image/jpeg"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 43
    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method private i(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->marker:I

    .line 25
    .line 26
    .line 27
    const v0, 0xffda

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

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
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e()V

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
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->marker:I

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
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->segmentLength:I

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->segmentLength:I

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->x()Ljava/lang/String;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->x()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 50
    move-result-wide v3

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 61
    .line 62
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->segmentLength:I

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 69
    .line 70
    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 71
    return-void
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 22
    move-result p1

    .line 23
    sub-int/2addr p1, v1

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->segmentLength:I

    .line 26
    .line 27
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 28
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2, v2}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BIIZ)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 33
    .line 34
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/jpeg/c;-><init>(Lcom/google/android/exoplayer2/extractor/m;J)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->b(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 52
    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 54
    .line 55
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    check-cast v3, Lcom/google/android/exoplayer2/extractor/n;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/d;-><init>(JLcom/google/android/exoplayer2/extractor/n;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->d(Lcom/google/android/exoplayer2/extractor/n;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m()V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e()V

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
    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 18
    const/4 v0, 0x5

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 21
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h(Lcom/google/android/exoplayer2/extractor/m;)I

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->marker:I

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->marker:I

    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->marker:I

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
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 46
    const/4 v1, 0x6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->F()J

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->J()I

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

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 35
    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 41
    .line 42
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/jpeg/c;-><init>(Lcom/google/android/exoplayer2/extractor/m;J)V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 61
    move-result p1

    .line 62
    .line 63
    if-ne p1, v2, :cond_4

    .line 64
    .line 65
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 66
    .line 67
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 68
    add-long/2addr v0, v2

    .line 69
    .line 70
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 71
    :cond_4
    return p1

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 75
    move-result-wide v3

    .line 76
    .line 77
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4StartPosition:J

    .line 78
    .line 79
    cmp-long v0, v3, v5

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 84
    return v2

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 88
    return v1

    .line 89
    .line 90
    .line 91
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->j(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 92
    return v1

    .line 93
    .line 94
    .line 95
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->k(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 96
    return v1

    .line 97
    .line 98
    .line 99
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 100
    return v1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->release()V

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
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->state:I

    .line 16
    const/4 v1, 0x5

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/k;->seek(JJ)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method
