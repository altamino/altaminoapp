.class Lcom/narvii/master/invitation/PasteBoardService$1;
.super Ljava/lang/Object;
.source "PasteBoardService.java"

# interfaces
.implements Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/invitation/PasteBoardService;->launch(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/invitation/PasteBoardService;

.field final synthetic val$inviteUrl:Ljava/lang/String;

.field final synthetic val$isInvite:Z


# direct methods
.method constructor <init>(Lcom/narvii/master/invitation/PasteBoardService;Ljava/lang/String;Z)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    iput-object p2, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$isInvite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdentifyError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIdentifySuccess(Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {v0}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 120
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 121
    sget-object v2, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/LoginActivity;

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 122
    iget-boolean v4, v2, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 124
    :goto_1
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_7

    .line 125
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz v4, :cond_3

    return-void

    :cond_3
    const-string v1, "invitationId"

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iget-boolean v0, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    if-nez v0, :cond_4

    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {v2}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {p1}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {v2}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/account/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 147
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_6
    sget-object p1, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "promptType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {p1}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_7
    if-eqz v4, :cond_8

    return-void

    :cond_8
    const/high16 v1, 0x10000000

    if-eqz v0, :cond_a

    .line 158
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    iget-boolean v0, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    if-eqz v0, :cond_9

    .line 160
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {v2}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "community"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {p1}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 167
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_a
    invoke-static {p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    move-result-object p1

    .line 170
    iget-boolean v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$isInvite:Z

    const-string v4, "loginAhead"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    iget-object v4, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    .line 173
    invoke-virtual {v2}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 174
    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 177
    :cond_b
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-static {v0}, Lcom/narvii/master/invitation/PasteBoardService;->access$000(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method
