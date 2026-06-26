.class Lcom/narvii/comment/post/CommentPostActivity$5;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->val$m:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 501
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    move-result-object p1

    .line 502
    iget-object p2, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->val$m:Lcom/narvii/model/Media;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iput-object p1, p2, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 504
    invoke-virtual {p2, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    return-void
.end method
