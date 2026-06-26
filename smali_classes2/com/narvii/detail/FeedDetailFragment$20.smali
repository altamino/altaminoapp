.class Lcom/narvii/detail/FeedDetailFragment$20;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->handleBookMark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;I)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$20;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iput p2, p0, Lcom/narvii/detail/FeedDetailFragment$20;->val$ndcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1481
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$20;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/semicontext/SemiActivity;

    if-eqz p1, :cond_0

    .line 1482
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$20;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/semicontext/SemiActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/semicontext/SemiActivity;->showCommunityDetailPage(Z)V

    goto :goto_0

    .line 1484
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1485
    iget v0, p0, Lcom/narvii/detail/FeedDetailFragment$20;->val$ndcId:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1486
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$20;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
