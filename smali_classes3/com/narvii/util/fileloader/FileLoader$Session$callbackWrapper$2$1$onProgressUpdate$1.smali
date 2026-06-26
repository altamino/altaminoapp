.class final Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;
.super Ljava/lang/Object;
.source "FileLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->onProgressUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field final synthetic $cur:I

.field final synthetic $total:I


# direct methods
.method constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput p2, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$cur:I

    iput p3, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$callback:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget v1, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$cur:I

    iget v2, p0, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1;->$total:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/util/fileloader/IFileDownloadCallback;->onProgressUpdate(II)V

    return-void
.end method
