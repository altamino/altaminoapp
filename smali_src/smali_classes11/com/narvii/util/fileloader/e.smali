.class public final synthetic Lcom/narvii/util/fileloader/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field public final synthetic b:Lcom/narvii/util/fileloader/FileLoader$Session;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/e;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput-object p2, p0, Lcom/narvii/util/fileloader/e;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    iput-object p3, p0, Lcom/narvii/util/fileloader/e;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/e;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget-object v1, p0, Lcom/narvii/util/fileloader/e;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    iget-object v2, p0, Lcom/narvii/util/fileloader/e;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/narvii/util/fileloader/FileDownloader;->c(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/lang/Exception;)V

    return-void
.end method
