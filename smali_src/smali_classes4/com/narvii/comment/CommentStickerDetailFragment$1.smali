.class Lcom/narvii/comment/CommentStickerDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentStickerDetailFragment;->deleteComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentStickerDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentStickerDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;-><init>(Lcom/narvii/comment/CommentStickerDetailFragment$1;)V

    .line 20
    .line 21
    iput-object p2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/comment/CommentStickerDetailFragment;->o(Lcom/narvii/comment/CommentStickerDetailFragment;)Lcom/narvii/comment/CommentHelper;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    return-void
.end method
