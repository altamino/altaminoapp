.class Lcom/narvii/detail/FeedDetailFragment$1;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$1;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-boolean v0, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    :cond_1
    return-void
.end method
