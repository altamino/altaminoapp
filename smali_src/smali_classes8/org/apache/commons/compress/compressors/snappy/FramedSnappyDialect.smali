.class public final enum Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field public static final enum IWORK_ARCHIVE:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field public static final enum STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;


# instance fields
.field private final checksumWithCompressedChunks:Z

.field private final streamIdentifier:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 3
    .line 4
    const-string v1, "STANDARD"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;-><init>(Ljava/lang/String;IZZ)V

    .line 10
    .line 11
    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 12
    .line 13
    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 14
    .line 15
    const-string v4, "IWORK_ARCHIVE"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v4, v3, v2, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;-><init>(Ljava/lang/String;IZZ)V

    .line 19
    .line 20
    sput-object v1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->IWORK_ARCHIVE:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 21
    const/4 v4, 0x2

    .line 22
    .line 23
    new-array v4, v4, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 24
    .line 25
    aput-object v0, v4, v2

    .line 26
    .line 27
    aput-object v1, v4, v3

    .line 28
    .line 29
    sput-object v4, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->streamIdentifier:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->checksumWithCompressedChunks:Z

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 9
    return-object v0
.end method


# virtual methods
.method hasStreamIdentifier()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->streamIdentifier:Z

    return v0
.end method

.method usesChecksumWithCompressedChunks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->checksumWithCompressedChunks:Z

    return v0
.end method
