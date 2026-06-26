.class Lcom/narvii/comment/post/CommentPostActivity$7$1;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/post/CommentPostActivity$7;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity$7;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$7$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 686
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$7$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$7;

    iget-object v0, p1, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object p1, p1, Lcom/narvii/comment/post/CommentPostActivity$7;->val$commentPost:Lcom/narvii/comment/post/CommentPost;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/post/CommentPostActivity;->doPost(Lcom/narvii/comment/post/CommentPost;)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$7$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$7;

    iget-object p1, p1, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->access$600(Lcom/narvii/comment/post/CommentPostActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 683
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$7$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
