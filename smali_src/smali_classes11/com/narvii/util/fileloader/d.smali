.class public final synthetic Lcom/narvii/util/fileloader/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field public final synthetic b:Lcom/narvii/util/fileloader/FileLoader$Session;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/d;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput-object p2, p0, Lcom/narvii/util/fileloader/d;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/d;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget-object v1, p0, Lcom/narvii/util/fileloader/d;->b:Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-static {v0, v1}, Lcom/narvii/util/fileloader/FileDownloader;->e(Lcom/narvii/util/fileloader/IFileDownloadCallback;Lcom/narvii/util/fileloader/FileLoader$Session;)V

    return-void
.end method
