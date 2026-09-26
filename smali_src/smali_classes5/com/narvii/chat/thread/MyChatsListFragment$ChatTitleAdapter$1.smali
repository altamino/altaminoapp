.class Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;
.super Lcom/narvii/chat/thread/MyChatManagePopUp;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/chat/thread/MyChatManagePopUp;-><init>(Landroid/view/View;Z)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isManageEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isListEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
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
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 11
    .line 12
    .line 13
    const v2, 0x7f120137

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "title"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "privilegeKey"

    .line 25
    .line 26
    const-string v2, "privilegeOfChatInviteRequest"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 35
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
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->B(Lcom/narvii/chat/thread/MyChatsListFragment;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    const-string v2, "ndcId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->B(Lcom/narvii/chat/thread/MyChatsListFragment;)I

    .line 27
    move-result v1

    .line 28
    .line 29
    const-string v2, "__communityId"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 38
    return-void
.end method
