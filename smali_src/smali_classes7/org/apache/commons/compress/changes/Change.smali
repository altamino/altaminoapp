.class Lorg/apache/commons/compress/changes/Change;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TYPE_ADD:I = 0x2

.field static final TYPE_DELETE:I = 0x1

.field static final TYPE_DELETE_DIR:I = 0x4

.field static final TYPE_MOVE:I = 0x3


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field private final input:Ljava/io/InputStream;

.field private final replaceMode:Z

.field private final targetFile:Ljava/lang/String;

.field private final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    iput p2, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    iput-object p2, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    const/4 p1, 0x2

    iput p1, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return-void

    .line 4
    :cond_0
    throw v0
.end method


# virtual methods
.method getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method getInput()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method isReplaceMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return v0
.end method

.method targetFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method type()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    return v0
.end method
