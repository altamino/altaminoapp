.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;
.super Lcom/narvii/chat/thread/MyChatManagePopUp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/widget/TintButton;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/thread/MyChatManagePopUp;-><init>(Landroid/view/View;Z)V

    .line 7
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
.method public isManageEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public onClickInbound()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 9
    .line 10
    .line 11
    const v2, 0x7f120137

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "title"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "privilegeKey"

    .line 23
    .line 24
    const-string v2, "privilegeOfChatInviteRequest"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 30
    .line 31
    const-string v2, "ndcId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 43
    move-result v1

    .line 44
    .line 45
    const-string v2, "__communityId"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 52
    .line 53
    .line 54
    const v2, 0x7f1207d9

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "subTitle"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onClickManage()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    const-string v2, "ndcId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    .line 23
    move-result v1

    .line 24
    .line 25
    const-string v2, "__communityId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 34
    return-void
.end method
