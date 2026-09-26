.class Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->val$result:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->val$result:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 23
    :goto_0
    return-void
.end method
