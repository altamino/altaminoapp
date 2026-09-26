.class public Lcom/narvii/poweruser/SendBroadcastDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->sendPushRequest()V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private sendPushRequest()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/broadcast/model/Push;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/narvii/broadcast/model/Push;-><init>()V

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/broadcast/model/Push$PayloadBean;->aps:Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iput-object v3, v2, Lcom/narvii/broadcast/model/Push$PayloadBean$ApsBean;->alert:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/narvii/broadcast/model/Push;->payload:Lcom/narvii/broadcast/model/Push$PayloadBean;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkUrl:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v3, v2, Lcom/narvii/broadcast/model/Push$PayloadBean;->u:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 45
    .line 46
    iget v2, v2, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 47
    .line 48
    iput v2, v1, Lcom/narvii/broadcast/model/Push;->scheduledTime:I

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 61
    .line 62
    const-string v3, "api"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    const-string v5, "/push"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    new-instance v4, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;

    .line 97
    .line 98
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 99
    .line 100
    .line 101
    invoke-direct {v4, p0, v5, v2, v0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/app/NVActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    const-string p1, "time"

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/narvii/poweruser/SendBroadcastDialog;->setTime(I)V

    .line 22
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0247

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0df8

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0e78

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-class p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 29
    .line 30
    iget v0, v0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 31
    .line 32
    const-string v1, "time"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1, v0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f121089

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f121173

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 78
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "membersCount"

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->membersCount:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "linkUrl"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkUrl:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "linkSummary"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-class v0, Lcom/narvii/model/LinkSummary;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/model/LinkSummary;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 46
    .line 47
    new-instance p1, Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 54
    .line 55
    iget v2, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->membersCount:I

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/poweruser/SendBroadcastDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/LinkSummary;I)V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0e78

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a039d

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Landroid/widget/EditText;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0a0247

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a0df8

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->dialog:Lcom/narvii/poweruser/SendBroadcastDialog;

    .line 110
    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;-><init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    .line 9
    .line 10
    const-wide/16 v1, 0x14

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method
