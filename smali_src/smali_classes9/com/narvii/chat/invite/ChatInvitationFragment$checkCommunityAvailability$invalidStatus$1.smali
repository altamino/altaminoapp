.class public final Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->$showCommunityDetail:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 3
    .line 4
    new-instance v1, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v2, "joinChannel"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$onChatJoined(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0059

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p1, p2

    .line 34
    .line 35
    :goto_0
    if-nez p1, :cond_2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a0b8a

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    :cond_3
    if-nez p2, :cond_4

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_4
    const/16 p1, 0x8

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_2
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->$showCommunityDetail:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a0059

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object p1, v0

    .line 41
    .line 42
    :goto_0
    if-nez p1, :cond_2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    const/16 v1, 0x8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;->this$0:Lcom/narvii/chat/invite/ChatInvitationFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0b8a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_2
    return p1
.end method
