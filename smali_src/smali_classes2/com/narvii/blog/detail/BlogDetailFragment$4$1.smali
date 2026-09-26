.class Lcom/narvii/blog/detail/BlogDetailFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$4;

.field final synthetic val$voteIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$4;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->val$voteIcon:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$4;

    .line 2
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->val$voteIcon:Landroid/view/View;

    iput-object v1, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "voteValue"

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$4;

    .line 5
    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
