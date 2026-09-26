.class Lcom/narvii/comment/post/CommentPostActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->savePost()Lcom/narvii/comment/post/CommentPost;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p1, Lcom/narvii/comment/post/CommentPost;->mediaList:Ljava/util/List;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->val$m:Lcom/narvii/model/Media;

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$5;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 16
    .line 17
    iput-object p1, p2, Lcom/narvii/comment/post/CommentPostActivity;->post:Lcom/narvii/comment/post/CommentPost;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/narvii/comment/post/CommentPostActivity;->updateView(Lcom/narvii/comment/post/CommentPost;)V

    .line 21
    return-void
.end method
