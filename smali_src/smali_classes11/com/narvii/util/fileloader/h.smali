.class public final synthetic Lcom/narvii/util/fileloader/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/h;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iput p2, p0, Lcom/narvii/util/fileloader/h;->b:I

    iput p3, p0, Lcom/narvii/util/fileloader/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/util/fileloader/h;->a:Lcom/narvii/util/fileloader/IFileDownloadCallback;

    iget v1, p0, Lcom/narvii/util/fileloader/h;->b:I

    iget v2, p0, Lcom/narvii/util/fileloader/h;->c:I

    invoke-static {v0, v1, v2}, Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;->a(Lcom/narvii/util/fileloader/IFileDownloadCallback;II)V

    return-void
.end method
