.class public Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;


# instance fields
.field private final blockSize:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

.field private final lz77params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final withBlockChecksum:Z

.field private final withBlockDependency:Z

.field private final withContentChecksum:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->M4:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZ)V

    .line 10
    .line 11
    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->DEFAULT:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZ)V
    .locals 7

    .line 3
    invoke-static {}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;ZZZLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->blockSize:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withContentChecksum:Z

    iput-boolean p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockChecksum:Z

    iput-boolean p4, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockDependency:Z

    iput-object p5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->lz77params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->blockSize:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockChecksum:Z

    .line 3
    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockDependency:Z

    .line 3
    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withContentChecksum:Z

    .line 3
    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz77support/Parameters;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->lz77params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 3
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "LZ4 Parameters with BlockSize "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->blockSize:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", withContentChecksum "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withContentChecksum:Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", withBlockChecksum "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockChecksum:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", withBlockDependency "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->withBlockDependency:Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
