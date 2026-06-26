.class Lcom/narvii/master/CommunityDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 240
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$000(Lcom/narvii/master/CommunityDetailFragment;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "blockPrivateCommunity"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isCurrentUserJoined"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$100(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$100(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->setCurrentUserJoinedStatus(Z)V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$1;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
