.class Lcom/narvii/comment/CommentStickerDetailFragment$1;
.super Ljava/lang/Object;
.source "CommentStickerDetailFragment.java"

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

    .line 72
    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 75
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object p2, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 77
    new-instance p2, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;-><init>(Lcom/narvii/comment/CommentStickerDetailFragment$1;)V

    iput-object p2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 83
    iget-object p2, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentStickerDetailFragment;->access$000(Lcom/narvii/comment/CommentStickerDetailFragment;)Lcom/narvii/comment/CommentHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    iget-object v0, v0, Lcom/narvii/comment/CommentStickerDetailFragment;->comment:Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
