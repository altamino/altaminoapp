.class Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;
.super Lcom/narvii/chat/thread/MyChatManagePopUp;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;Landroid/view/View;Z)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/thread/MyChatManagePopUp;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public isManageEnabled()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isListEmpty()Z

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

    .line 598
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const v2, 0x7f0f00f9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privilegeKey"

    const-string v2, "privilegeOfChatInviteRequest"

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickManage()V
    .locals 3

    .line 606
    const-class v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$600(Lcom/narvii/chat/thread/MyChatsListFragment;)I

    move-result v1

    const-string v2, "ndcId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$600(Lcom/narvii/chat/thread/MyChatsListFragment;)I

    move-result v1

    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
