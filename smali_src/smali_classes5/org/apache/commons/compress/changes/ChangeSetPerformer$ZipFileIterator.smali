.class Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipFileIterator"
.end annotation


# instance fields
.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private final in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

.field private final nestedEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    .line 12
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->in:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public next()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->nestedEnum:Ljava/util/Enumeration;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 11
    return-object v0
.end method
