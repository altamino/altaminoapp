.class Lorg/apache/commons/compress/archivers/zip/ZipFile$1;
.super Ljava/util/zip/InflaterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

.field final synthetic val$inflater:Ljava/util/zip/Inflater;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 3
    .line 4
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->val$inflater:Ljava/util/zip/Inflater;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->val$inflater:Ljava/util/zip/Inflater;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->val$inflater:Ljava/util/zip/Inflater;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 16
    throw v0
.end method
