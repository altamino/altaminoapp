.class Lcom/narvii/comment/CommentStickerDetailFragment$1$1;
.super Ljava/lang/Object;
.source "CommentStickerDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentStickerDetailFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/CommentStickerDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentStickerDetailFragment$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;->this$1:Lcom/narvii/comment/CommentStickerDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;->this$1:Lcom/narvii/comment/CommentStickerDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/comment/CommentStickerDetailFragment$1;->this$0:Lcom/narvii/comment/CommentStickerDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/CommentStickerDetailFragment$1$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
