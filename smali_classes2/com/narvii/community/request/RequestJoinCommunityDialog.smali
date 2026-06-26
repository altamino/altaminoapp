.class public Lcom/narvii/community/request/RequestJoinCommunityDialog;
.super Lcom/narvii/util/dialog/RealtimeBlurDialog;
.source "RequestJoinCommunityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_COUNT:I = 0x1f4

.field private static final REQUEST_TO_JOIN_STEP1:I = 0x0

.field private static final REQUEST_TO_JOIN_STEP2:I = 0x1


# instance fields
.field btnInviteSubmit:Landroid/widget/Button;

.field btnLandingRequest:Landroid/widget/Button;

.field btnLandingSubmit:Landroid/widget/Button;

.field btnRequestSubmit:Landroid/widget/Button;

.field callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

.field private community:Lcom/narvii/model/Community;

.field private context:Lcom/narvii/app/NVContext;

.field edtInvite:Landroid/widget/EditText;

.field edtLanding:Landroid/widget/EditText;

.field edtRequest:Landroid/widget/EditText;

.field inviteClose:Landroid/view/View;

.field inviteEditWatcher:Landroid/text/TextWatcher;

.field isRequested:Z

.field private joinType:I

.field landingClose:Landroid/view/View;

.field landingContainer:Landroid/view/View;

.field landingEditWatcher:Landroid/text/TextWatcher;

.field requestContainer:Landroid/view/View;

.field requestMessageEditWatcher:Landroid/text/TextWatcher;

.field private requestToJoinStep:I

.field tvLeftCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;Z)V
    .locals 1

    .line 78
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;

    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestMessageEditWatcher:Landroid/text/TextWatcher;

    .line 290
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$5;

    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$5;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingEditWatcher:Landroid/text/TextWatcher;

    .line 306
    new-instance v0, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;

    invoke-direct {v0, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    iput-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteEditWatcher:Landroid/text/TextWatcher;

    .line 80
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 81
    iput-object p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    .line 82
    iput p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->joinType:I

    .line 83
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    .line 84
    iput-object p4, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

    .line 85
    iput-boolean p5, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->isRequested:Z

    .line 87
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    const/high16 p3, 0x66000000

    invoke-virtual {p1, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41f00000    # 30.0f

    invoke-static {p3, p4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const p3, 0x7f0b0471

    goto :goto_0

    :cond_0
    const p3, 0x7f0b0473

    .line 90
    :goto_0
    invoke-virtual {p0, p3}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/4 p3, 0x0

    .line 94
    iput p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    :cond_1
    if-ne p2, p1, :cond_2

    const p1, 0x7f0905c3

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    .line 99
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteEditWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0905ca

    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnInviteSubmit:Landroid/widget/Button;

    .line 101
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnInviteSubmit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0905c2

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteClose:Landroid/view/View;

    .line 103
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->inviteClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_2
    const p1, 0x7f09061e

    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    const p1, 0x7f090620

    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingSubmit:Landroid/widget/Button;

    .line 108
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingSubmit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09061f

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingRequest:Landroid/widget/Button;

    .line 110
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnLandingRequest:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingEditWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090968

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    const p1, 0x7f090965

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    .line 115
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestMessageEditWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090967

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnRequestSubmit:Landroid/widget/Button;

    .line 117
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnRequestSubmit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09061c

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingClose:Landroid/view/View;

    .line 121
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09061d

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingContainer:Landroid/view/View;

    const p1, 0x7f090964

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestContainer:Landroid/view/View;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->showCheckDialog(I)V

    return-void
.end method

.method private gotoRequestToJoin()V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->isRequested:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f02d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f02d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "Ok"

    .line 168
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 169
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    const/4 v0, 0x1

    .line 175
    iput v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    .line 176
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->landingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showCheckDialog(I)V
    .locals 3

    .line 226
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090216

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v0}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method private submitRequest()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->joinType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 244
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 245
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/community/link-identify"

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "q"

    .line 246
    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 247
    new-instance v3, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;

    const-class v4, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private submitRequestToJoin()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 187
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->community:Lcom/narvii/model/Community;

    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/membership-request"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 189
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 190
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v3, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;

    const-class v4, Lcom/narvii/master/invitation/CommunityMemRequestResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 157
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequestToJoin()V

    goto :goto_1

    .line 149
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->gotoRequestToJoin()V

    goto :goto_1

    .line 154
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequest()V

    goto :goto_1

    .line 133
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtInvite:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 134
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->requestToJoinStep:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtLanding:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 136
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->edtRequest:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 138
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 140
    :cond_2
    :goto_0
    new-instance p1, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$1;-><init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0905c2 -> :sswitch_3
        0x7f0905ca -> :sswitch_2
        0x7f09061c -> :sswitch_3
        0x7f09061f -> :sswitch_1
        0x7f090620 -> :sswitch_2
        0x7f090967 -> :sswitch_0
    .end sparse-switch
.end method
