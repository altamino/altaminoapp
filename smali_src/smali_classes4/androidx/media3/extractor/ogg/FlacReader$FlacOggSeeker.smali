.class final Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

.field private streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 15
    .line 16
    new-instance v0, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    .line 24
    return-object v0
.end method

.method public startSeek(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->i([JJZZ)I

    .line 9
    move-result p1

    .line 10
    .line 11
    aget-wide p1, v0, p1

    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 14
    return-void
.end method
