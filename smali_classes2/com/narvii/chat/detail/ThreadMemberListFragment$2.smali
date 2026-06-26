.class Lcom/narvii/chat/detail/ThreadMemberListFragment$2;
.super Ljava/lang/Object;
.source "ThreadMemberListFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment;->checkCommunityAvailability()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 0

    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 2

    .line 404
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 405
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
