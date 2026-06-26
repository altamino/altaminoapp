.class public Lcom/narvii/master/invitation/InvitationWelcomeActivity;
.super Lcom/narvii/app/NVActivity;
.source "InvitationWelcomeActivity.java"


# instance fields
.field btnCancel:Landroid/widget/Button;

.field btnOk:Landroid/widget/Button;

.field communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

.field communityJson:Ljava/lang/String;

.field private invitationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    return-object p0
.end method

.method private joinCommunity()V
    .locals 6

    .line 118
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 120
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 121
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/community/join"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "invitationId"

    .line 123
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v3

    const-string v4, "api"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 126
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v4, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;

    const-class v5, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v4, p0, v5, v0, v1}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$3;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/config/ConfigService;)V

    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;
    .locals 3

    .line 101
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-eqz v1, :cond_0

    .line 103
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-boolean v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    const-string v2, "isCurrentUserJoined"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    const-string v2, "invitationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-boolean v1, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->isMembershipRequestedByCurrentUser:Z

    const-string v2, "isRequested"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    iget-object p0, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitation:Lcom/narvii/master/invitation/Invitation;

    if-eqz p0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/narvii/master/invitation/Invitation;->author:Lcom/narvii/model/User;

    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "inviter"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b01a4

    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const-string v0, "invitationId"

    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f09098b

    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->joinCommunity()V

    return-void

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "community"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityJson:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityJson:Ljava/lang/String;

    const-class v0, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/invitation/CommunityInviteResponse;

    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    const p1, 0x7f0905bd

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnCancel:Landroid/widget/Button;

    const p1, 0x7f0905be

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnOk:Landroid/widget/Button;

    .line 66
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_2

    const p1, 0x7f0902a3

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p1, 0x7f0902b6

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902c4

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->communityInvitResponse:Lcom/narvii/master/invitation/CommunityInviteResponse;

    iget-object v0, v0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnCancel:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$1;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->btnOk:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/invitation/InvitationWelcomeActivity$2;-><init>(Lcom/narvii/master/invitation/InvitationWelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->invitationId:Ljava/lang/String;

    const-string v1, "invitationId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
