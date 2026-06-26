.class public final Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;
.super Ljava/lang/Object;
.source "VideoTemplateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTemplateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1\n*L\n1#1,367:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTaskRunning$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-virtual {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "template/template.pid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/mem"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 62
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check pid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NV_EGL"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    :cond_3
    :goto_0
    return-void
.end method
