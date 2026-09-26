.class Lcom/narvii/invite/InviteMembersFragment$Adapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field public cell:Landroid/view/View;

.field public error:Ljava/lang/String;

.field response:Lcom/narvii/invite/NewInvitationResponse;

.field final synthetic this$0:Lcom/narvii/invite/InviteMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->regenerate()V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/invite/InviteMembersFragment$Adapter;Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    return-void
.end method

.method private getRemainingTime()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/invite/Invitation;->createdTime:Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 15
    .line 16
    iget v2, v2, Lcom/narvii/invite/Invitation;->duration:I

    .line 17
    .line 18
    mul-int/lit16 v2, v2, 0x3e8

    .line 19
    int-to-long v2, v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    return-wide v0
.end method

.method private isExpired()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/invite/Invitation;->duration:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private regenerate()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    sget v1, Lcom/narvii/lib/R$string;->regenerate_link_title:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;Z)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 61
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

.method private showDialogIfExpired()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->isExpired()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 18
    .line 19
    sget v3, Lcom/narvii/lib/R$string;->link_expired:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    sget v2, Lcom/narvii/lib/R$string;->generate:I

    .line 29
    .line 30
    new-instance v3, Lcom/narvii/invite/InviteMembersFragment$Adapter$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter$2;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 40
    :cond_0
    return v0
.end method

.method private updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const p2, -0x646465

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 11
    .line 12
    iget p2, p2, Lcom/narvii/invite/Invitation;->duration:I

    .line 13
    .line 14
    const-string v0, " "

    .line 15
    .line 16
    if-lez p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long p2, v1, v3

    .line 25
    .line 26
    if-gtz p2, :cond_0

    .line 27
    .line 28
    sget p2, Lcom/narvii/lib/R$string;->expired:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    const/high16 p2, -0x10000

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 45
    .line 46
    sget v4, Lcom/narvii/lib/R$string;->expires_in:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/invite/InviteMembersFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/DateTimeFormatter;->formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 87
    .line 88
    sget v2, Lcom/narvii/lib/R$string;->expires_in:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 101
    .line 102
    sget v1, Lcom/narvii/lib/R$string;->never:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0xc8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/invite/InviteMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getInvitePermissionType()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/invite/InviteMembersFragment;->t(Lcom/narvii/invite/InviteMembersFragment;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    return v2

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    return v2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/narvii/lib/R$layout;->layout_invite_members:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 19
    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 23
    .line 24
    sget p2, Lcom/narvii/lib/R$id;->code:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/invite/Invitation;->inviteCode:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 42
    .line 43
    sget p2, Lcom/narvii/lib/R$id;->link:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 61
    .line 62
    sget p2, Lcom/narvii/lib/R$id;->share:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 74
    .line 75
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lcom/narvii/invite/InviteMembersFragment;->u(Lcom/narvii/invite/InviteMembersFragment;)I

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 93
    .line 94
    sget p2, Lcom/narvii/lib/R$id;->contact:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 106
    .line 107
    sget p2, Lcom/narvii/lib/R$id;->invite_history:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 124
    .line 125
    sget p2, Lcom/narvii/lib/R$id;->valid_links:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 142
    .line 143
    sget p2, Lcom/narvii/lib/R$id;->count_down:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p1

    .line 148
    move-object v6, p1

    .line 149
    .line 150
    check-cast v6, Landroid/widget/TextView;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 153
    .line 154
    sget p2, Lcom/narvii/lib/R$id;->regenerate:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    check-cast p1, Landroid/widget/TextView;

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 164
    .line 165
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 171
    .line 172
    sget p2, Lcom/narvii/lib/R$id;->link_layout:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 186
    .line 187
    if-eqz p1, :cond_1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 191
    .line 192
    .line 193
    :cond_1
    const p1, -0x646465

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 201
    .line 202
    iget p2, p1, Lcom/narvii/invite/Invitation;->duration:I

    .line 203
    .line 204
    if-eqz p2, :cond_2

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    .line 208
    move-result-wide v2

    .line 209
    .line 210
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 211
    .line 212
    new-instance p2, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;

    .line 213
    .line 214
    const-wide/16 v4, 0x1f4

    .line 215
    move-object v0, p2

    .line 216
    move-object v1, p0

    .line 217
    .line 218
    .line 219
    invoke-direct/range {v0 .. v6}, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;JJLandroid/widget/TextView;)V

    .line 220
    .line 221
    iput-object p2, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 222
    .line 223
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 229
    goto :goto_0

    .line 230
    .line 231
    .line 232
    :cond_2
    invoke-direct {p0, v6, p1}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    .line 233
    .line 234
    :goto_0
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 235
    .line 236
    const/16 p2, 0xc8

    .line 237
    const/4 p3, 0x0

    .line 238
    .line 239
    if-eq p1, p2, :cond_4

    .line 240
    .line 241
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Lcom/narvii/invite/InviteMembersFragment;->t(Lcom/narvii/invite/InviteMembersFragment;)Z

    .line 245
    move-result p1

    .line 246
    .line 247
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 248
    .line 249
    sget v0, Lcom/narvii/lib/R$id;->leader_controller:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    move-result-object p2

    .line 254
    .line 255
    if-eqz p1, :cond_3

    .line 256
    goto :goto_1

    .line 257
    .line 258
    :cond_3
    const/16 p3, 0x8

    .line 259
    .line 260
    .line 261
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    goto :goto_2

    .line 263
    .line 264
    :cond_4
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 265
    .line 266
    sget p2, Lcom/narvii/lib/R$id;->leader_controller:I

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 270
    move-result-object p1

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .line 275
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 276
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->sendRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    .line 2
    if-eqz p5, :cond_7

    .line 3
    .line 4
    const-string v0, "community"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 13
    .line 14
    const-string v2, "__communityId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/invite/InviteMembersFragment;->inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3, v0, v4}, Lcom/narvii/invite/InviteFriendHelper;->getSharePayload(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/invite/Invitation;)Lcom/narvii/share/SharePayload;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 42
    move-result v3

    .line 43
    .line 44
    sget v4, Lcom/narvii/lib/R$id;->share:I

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->showDialogIfExpired()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    return v5

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromCommunity(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)Lcom/narvii/share/ShareDialog;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "Share Invite URL"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_1
    sget v4, Lcom/narvii/lib/R$id;->contact:I

    .line 74
    .line 75
    const-string v6, "ndc://fragment/"

    .line 76
    .line 77
    const-string v7, "android.intent.action.VIEW"

    .line 78
    .line 79
    if-ne v3, v4, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->showDialogIfExpired()Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    return v5

    .line 87
    .line 88
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-class v4, Lcom/narvii/invite/InviteContactFragment;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .line 118
    iget-object v3, v1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 119
    .line 120
    const-string v4, "subject"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    const-string v3, "text"

    .line 126
    .line 127
    iget-object v1, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 136
    move-result v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    invoke-static {p0, v0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_3
    sget v1, Lcom/narvii/lib/R$id;->invite_history:I

    .line 147
    .line 148
    if-ne v3, v1, :cond_4

    .line 149
    .line 150
    new-instance v0, Landroid/content/Intent;

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-class v3, Lcom/narvii/invite/InviteHistoryFragment;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .line 180
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 184
    move-result v1

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    invoke-static {p0, v0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 191
    goto :goto_0

    .line 192
    .line 193
    :cond_4
    sget v1, Lcom/narvii/lib/R$id;->valid_links:I

    .line 194
    .line 195
    if-ne v3, v1, :cond_5

    .line 196
    .line 197
    new-instance v0, Landroid/content/Intent;

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-class v3, Lcom/narvii/invite/ValidLinkFragment;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    .line 221
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .line 227
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 231
    move-result v1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    invoke-static {p0, v0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 238
    goto :goto_0

    .line 239
    .line 240
    :cond_5
    sget v1, Lcom/narvii/lib/R$id;->regenerate:I

    .line 241
    .line 242
    if-ne v3, v1, :cond_6

    .line 243
    .line 244
    .line 245
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->regenerate()V

    .line 246
    goto :goto_0

    .line 247
    .line 248
    :cond_6
    sget v1, Lcom/narvii/lib/R$id;->link_layout:I

    .line 249
    .line 250
    if-ne v3, v1, :cond_7

    .line 251
    .line 252
    new-instance v1, Lcom/narvii/share/SharePayload;

    .line 253
    .line 254
    .line 255
    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 256
    .line 257
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    .line 262
    .line 263
    iget-object v0, v0, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    .line 264
    .line 265
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 266
    .line 267
    new-instance v0, Lcom/narvii/share/ShareViewHelper;

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 271
    .line 272
    const-string v2, "Current Invite Code Copied"

    .line 273
    .line 274
    iput-object v2, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 275
    .line 276
    new-instance v2, Lcom/narvii/share/elements/ClipboardElement;

    .line 277
    .line 278
    .line 279
    invoke-direct {v2, p0}, Lcom/narvii/share/elements/ClipboardElement;-><init>(Lcom/narvii/app/NVContext;)V

    .line 280
    const/4 v3, 0x0

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 287
    move-result p1

    .line 288
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->sendRequest()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method sendRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 15
    .line 16
    const-string v3, "__communityId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "community/invitation"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    const v2, 0x3f480

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    const-string v3, "duration"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/invite/InviteMembersFragment$Adapter$4;

    .line 54
    .line 55
    const-class v3, Lcom/narvii/invite/NewInvitationResponse;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lcom/narvii/invite/InviteMembersFragment$Adapter$4;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 62
    return-void
.end method
