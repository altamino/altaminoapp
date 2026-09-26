.class Lorg/apache/commons/compress/archivers/dump/Dirent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ino:I

.field private final name:Ljava/lang/String;

.field private final parentIno:I

.field private final type:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    .line 6
    .line 7
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    .line 8
    .line 9
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    .line 10
    .line 11
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method getIno()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-object v0
.end method

.method getParentIno()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const-string v1, "[%d]: %s"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
