.class public final synthetic Lcom/narvii/util/fileloader/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field public final synthetic b:Lcom/narvii/util/fileloader/FileLoader$Session;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/a;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput-object p2, p0, Lcom/narvii/util/fileloader/a;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    iput-object p3, p0, Lcom/narvii/util/fileloader/a;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/a;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget-object v1, p0, Lcom/narvii/util/fileloader/a;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    iget-object v2, p0, Lcom/narvii/util/fileloader/a;->c:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/narvii/util/fileloader/FileDownloader;->d(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;Ljava/io/File;)V

    return-void
.end method
