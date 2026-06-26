.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;
.super Lcom/narvii/chat/thread/MyChatManagePopUp;
.source "CommunityChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/thread/MyChatManagePopUp;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public isManageEnabled()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClickInbound()V
    .locals 3

    .line 232
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const v2, 0x7f0f00f9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privilegeKey"

    const-string v2, "privilegeOfChatInviteRequest"

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string v2, "ndcId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const v2, 0x7f0f0731

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickManage()V
    .locals 3

    .line 225
    const-class v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result v1

    const-string v2, "ndcId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result v1

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
