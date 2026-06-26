.class public final Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;
.super Ljava/lang/Object;
.source "ChatInvitationFragment.kt"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInvitationFragment;->checkCommunityAvailability(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $showCommunityDetail:Z

.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->$showCommunityDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

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

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 277
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$onChatJoined(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x7f09002c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const p2, 0x7f0908cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 2

    .line 260
    iget-boolean v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->$showCommunityDetail:Z

    if-eqz v0, :cond_0

    .line 261
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const v1, 0x7f0908cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return v0
.end method
