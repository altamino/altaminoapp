.class Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;
.super Landroid/os/AsyncTask;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/ShareStoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateBlogPostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/narvii/blog/post/BlogPost;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/blog/post/BlogPost;",
            ">;"
        }
    .end annotation
.end field

.field cancelCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/ShareStoryFragment;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/narvii/blog/post/BlogPost;
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->this$0:Lcom/narvii/story/ShareStoryFragment;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/story/ShareStoryFragment;->access$200(Lcom/narvii/story/ShareStoryFragment;I)Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 543
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->doInBackground([Ljava/lang/Integer;)Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->cancelCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 558
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 543
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->onPostExecute(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public setCallback(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/blog/post/BlogPost;",
            ">;)V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setCancelCallback(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$CreateBlogPostTask;->cancelCallback:Lcom/narvii/util/Callback;

    return-void
.end method
