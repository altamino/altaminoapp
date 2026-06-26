.class final Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;
.super Ljava/lang/Object;
.source "CommentHeaderAdapter.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;->this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;->this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->onCommentRefresh()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;->this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-static {p1, v0}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->access$setCommentSort(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;->this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->access$setCommentSort(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;I)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p2, p0, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter$onItemClick$1;->this$0:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;->access$setCommentSort(Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;I)V

    :goto_0
    return-void
.end method
