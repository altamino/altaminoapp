.class Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->createCallable(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/parallel/InputStreamSupplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

.field final synthetic val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;->access$400(Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator;)Ljava/lang/ThreadLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ParallelScatterZipCreator$2;->val$zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->addArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method
