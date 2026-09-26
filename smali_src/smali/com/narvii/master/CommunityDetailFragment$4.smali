.class Lcom/narvii/master/CommunityDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->sendInviteCodeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onIdentifyError(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->H(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 7
    return-void
.end method

.method public onIdentifySuccess(Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->H(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->E(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 25
    .line 26
    iget-boolean v1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->F(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->x(Lcom/narvii/master/CommunityDetailFragment;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 40
    .line 41
    const-string v0, "affiliations"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 50
    .line 51
    iget v0, v0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 55
    return-void

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 58
    .line 59
    const-string v1, "loginAhead"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 68
    .line 69
    const-string v1, "autoJoin"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    :cond_2
    sget-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 78
    const/4 v1, 0x0

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    move-object v0, v1

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 89
    .line 90
    :goto_0
    if-eqz v0, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 94
    .line 95
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 103
    .line 104
    iget-object v2, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    const-string v3, "community"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitation:Lcom/narvii/master/invitation/Invitation;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p1, Lcom/narvii/master/invitation/Invitation;->author:Lcom/narvii/model/User;

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    const-string v2, "inviter"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    :cond_6
    return-void
.end method
