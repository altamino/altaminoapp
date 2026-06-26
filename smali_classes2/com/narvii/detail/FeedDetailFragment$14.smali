.class Lcom/narvii/detail/FeedDetailFragment$14;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$14;->val$list:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_0

    .line 841
    check-cast v0, Lcom/narvii/widget/NVListView;

    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$14$1;

    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$14$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$14;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method
