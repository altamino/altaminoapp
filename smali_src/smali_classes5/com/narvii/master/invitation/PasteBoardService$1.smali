.class Lcom/narvii/master/invitation/PasteBoardService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$isInvite:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onIdentifyError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIdentifySuccess(Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/invitation/PasteBoardService;->a(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "config"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 27
    .line 28
    sget-object v1, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/account/LoginActivity;

    .line 39
    .line 40
    :goto_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-boolean v2, v1, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    return-void

    .line 46
    .line 47
    :cond_1
    const/high16 v2, 0x10000000

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-boolean v0, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 67
    return-void

    .line 68
    .line 69
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/master/invitation/PasteBoardService;->a(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    const-class v3, Lcom/narvii/master/invitation/InvitationWelcomeActivity;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    const-string v1, "community"

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/master/invitation/PasteBoardService;->a(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-static {p1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string v0, "loginAhead"

    .line 120
    .line 121
    iget-boolean v3, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$isInvite:Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->val$inviteUrl:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, p1}, Lcom/narvii/master/invitation/PasteBoardService$1;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 140
    const/4 p1, 0x0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/narvii/master/invitation/PasteBoardService$1;->this$0:Lcom/narvii/master/invitation/PasteBoardService;

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lcom/narvii/master/invitation/PasteBoardService;->a(Lcom/narvii/master/invitation/PasteBoardService;)Lcom/narvii/app/NVContext;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 157
    :goto_1
    return-void
.end method
