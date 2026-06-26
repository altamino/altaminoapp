.class Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    iput-boolean p2, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 450
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->val$result:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    iget-object v1, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    invoke-interface {v1, v0}, Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    :goto_0
    return-void
.end method
