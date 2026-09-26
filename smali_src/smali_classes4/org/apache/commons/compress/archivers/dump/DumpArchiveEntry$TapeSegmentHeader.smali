.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TapeSegmentHeader"
.end annotation


# instance fields
.field private final cdata:[B

.field private count:I

.field private holes:I

.field private ino:I

.field private type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

.field private volume:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x200

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    .line 10
    return-void
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->volume:I

    .line 3
    return p1
.end method

.method static synthetic access$202(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    .line 3
    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    .line 3
    return p0
.end method

.method static synthetic access$302(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    .line 3
    return p1
.end method

.method static synthetic access$402(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    .line 3
    return p1
.end method

.method static synthetic access$408(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    .line 7
    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    .line 3
    return-object p0
.end method


# virtual methods
.method public getCdata(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    .line 3
    .line 4
    aget-byte p1, v0, p1

    .line 5
    return p1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    return v0
.end method

.method public getHoles()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    return v0
.end method

.method public getIno()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    return v0
.end method

.method public getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->volume:I

    return v0
.end method

.method setIno(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    return-void
.end method
