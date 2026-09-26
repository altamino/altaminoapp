.class public Lcom/narvii/master/invitation/InvitationWelcomeActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# instance fields
.field btnCancel:Landroid/widget/Button;

.field btnOk:Landroid/widget/Button;

.field communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

.field communityJson:Ljava/lang/String;

.field private invitationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method

.method private joinCommunity()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "config"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    const-string v3, "/community/join"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const-string v4, "invitationId"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    const-string v4, "api"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    new-instance v4, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;

    .line 74
    .line 75
    const-class v5, Lcom/narvii/model/api/UserResponse;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, p0, v5, v0, v1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/config/ConfigService;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 82
    return-void
.end method

.method public static launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v2, "id"

    .line 15
    .line 16
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "icon"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "isCurrentUserJoined"

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, "prefetch"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    const-string v1, "invitationId"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    const-string v1, "isRequested"

    .line 56
    .line 57
    iget-boolean v2, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->isMembershipRequestedByCurrentUser:Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitation:Lcom/narvii/master/invitation/Invitation;

    .line 63
    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    iget-object p0, p0, Lcom/narvii/master/invitation/Invitation;->author:Lcom/narvii/model/User;

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    const-string v1, "inviter"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_0
    return-object v0
.end method

.method static bridge synthetic s(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d01c5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    const-string v0, "invitationId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a0c4c

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->joinCommunity()V

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v0, "community"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityJson:Ljava/lang/String;

    .line 69
    .line 70
    const-class v0, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 79
    .line 80
    .line 81
    const p1, 0x7f0a073a

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Landroid/widget/Button;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnCancel:Landroid/widget/Button;

    .line 90
    .line 91
    .line 92
    const p1, 0x7f0a073b

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Landroid/widget/Button;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnOk:Landroid/widget/Button;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    .line 111
    const p1, 0x7f0a036b

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    const p1, 0x7f0a037c

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    check-cast p1, Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    const p1, 0x7f0a0389

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    check-cast p1, Landroid/widget/TextView;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnCancel:Landroid/widget/Button;

    .line 165
    .line 166
    new-instance v0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnOk:Landroid/widget/Button;

    .line 175
    .line 176
    new-instance v0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "invitationId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
