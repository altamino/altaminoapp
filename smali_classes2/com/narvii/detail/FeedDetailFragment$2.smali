.class Lcom/narvii/detail/FeedDetailFragment$2;
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

    .line 190
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 193
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f01000d

    const-string v1, "customFinishAnimOut"

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "customFinishAnimIn"

    .line 199
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    const-string v2, "pageTopic"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 203
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$2;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f01000c

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
