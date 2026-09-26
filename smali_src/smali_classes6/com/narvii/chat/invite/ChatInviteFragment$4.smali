.class Lcom/narvii/chat/invite/ChatInviteFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInviteFragment;->sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

.field final synthetic val$autoShowKeyboard:Z

.field final synthetic val$uids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInviteFragment;Z[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$autoShowKeyboard:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$uids:[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
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
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->p(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/String;)V

    .line 3
    check-cast p1, Lcom/narvii/chat/ThreadResponse;

    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 5
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 6
    invoke-virtual {v2, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 7
    iget-object v2, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->source:Ljava/lang/String;

    const-string v3, "Source"

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_1
    :goto_0
    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "justCreated"

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "thread"

    .line 12
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const-string v4, "stickerCollectionId"

    .line 14
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v3, "showKeyboard"

    iget-boolean v4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$autoShowKeyboard:Z

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 17
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 18
    invoke-static {v3, v0}, Lcom/narvii/chat/invite/ChatInviteFragment$4;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 19
    iget-object v0, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_4

    .line 20
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 21
    invoke-static {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->o(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-static {v3}, Lcom/narvii/chat/invite/ChatInviteFragment;->n(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/config/ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$uids:[Ljava/lang/String;

    .line 22
    array-length p1, p1

    if-le p1, v5, :cond_5

    const-string p1, "Group Chat"

    goto :goto_1

    :cond_5
    const-string p1, "1-1"

    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const-string v3, "statistics"

    .line 23
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    const-string v3, "User Creates a Chat"

    .line 24
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v3

    const-string v4, "Type"

    invoke-virtual {v3, v4, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v2

    const-string v3, "User Creates a Chat Total"

    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Creates a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Chat Total"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
