.class public Lcom/narvii/poweruser/SendBroadcastDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SendBroadcastDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

.field editText:Landroid/widget/EditText;

.field linkSummary:Lcom/narvii/model/LinkSummary;

.field linkUrl:Ljava/lang/String;

.field membersCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->sendPushRequest()V

    return-void
.end method

.method private sendPushRequest()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 111
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 112
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 116
    new-instance v1, Lcom/narvii/broadcast/model/Push;

    invoke-direct {v1}, Lcom/narvii/broadcast/model/Push;-><init>()V

    .line 117
    iget-object v2, v1, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    iget-object v2, v2, Lcom/narvii/broadcast/model/Push$PayloadBean;->aps:Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;->alert:Ljava/lang/String;

    .line 118
    iget-object v2, v1, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/broadcast/model/Push$PayloadBean;->u:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    iget v2, v2, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    iput v2, v1, Lcom/narvii/broadcast/model/Push;->scheduledTime:I

    .line 120
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v3, "api"

    .line 124
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 125
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "/push"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 126
    new-instance v4, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;

    const-class v5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v4, p0, v5, v2, v0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "time"

    .line 160
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 161
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    invoke-virtual {p2, p1}, Lcom/narvii/poweruser/SendBroadcastDialog;->setTime(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090193

    if-eq p1, v0, :cond_2

    const v0, 0x7f090b13

    if-eq p1, v0, :cond_1

    const v0, 0x7f090b73

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const-class p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    iget v0, v0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0f7c

    .line 73
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f1077

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 75
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 85
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "membersCount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->membersCount:I

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "linkUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "linkSummary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/LinkSummary;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/LinkSummary;

    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 52
    new-instance p1, Lcom/narvii/poweruser/SendBroadcastDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget v2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->membersCount:I

    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/poweruser/SendBroadcastDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/LinkSummary;I)V

    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 53
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    const v0, 0x7f090b73

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    const v0, 0x7f0902d0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    .line 55
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    const v0, 0x7f090193

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    const v0, 0x7f090b13

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 94
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    const-wide/16 v1, 0x14

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
