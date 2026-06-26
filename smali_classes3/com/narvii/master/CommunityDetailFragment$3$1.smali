.class Lcom/narvii/master/CommunityDetailFragment$3$1;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$3;->call(Lcom/narvii/model/api/UserListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$3;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 404
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget p1, p1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    const-string v0, "Community Detail Live Layer Bar"

    invoke-static {p1, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 410
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f01000d

    const-string v1, "customFinishAnimOut"

    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "customFinishAnimIn"

    .line 412
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v1, v1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    const-string v2, "__communityId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__interactionScope"

    .line 415
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "fromCommunityDetail"

    .line 416
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 418
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/16 v2, 0x12c

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$3;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f01000c

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
