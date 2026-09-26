.class public Lcom/narvii/account/ThirdPartyAccountBaseFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;,
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;,
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;
    }
.end annotation


# static fields
.field public static final API_ERR_EMAIL:I = 0xd5

.field public static final API_ERR_EMAIL_NO_PASSWORD:I = 0xfb

.field public static final API_ERR_EMAIL_TAKEN:I = 0xd7

.field static runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;


# instance fields
.field protected isLoginFlow:Z

.field private thirdPartySecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private goNext(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f010010

    .line 25
    .line 26
    .line 27
    const v2, 0x7f010011

    .line 28
    .line 29
    .line 30
    const v3, 0x7f01000e

    .line 31
    .line 32
    .line 33
    const v4, 0x7f01000f

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    const v1, 0x7f0a05ff

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method private handleNoEmailDetected(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/account/LoginActivity;->showPhoneNumberItem:Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmail(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmailOrPhoneNumber(Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/account/ThirdPartyAccountBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->thirdPartySecret:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private requireEmail(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/EmailSignupFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/account/EmailSignupFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "key_third_part_secret"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p1, "key_is_third_part"

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    const-string p1, "key_sign_up_method"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroidx/fragment/app/Fragment;)V

    .line 37
    return-void
.end method

.method private requireEmailOrPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    .line 9
    return-void
.end method

.method private requirePasswordForLeader(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/account/LeaderThirdPartyLoginFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "key_third_part_secret"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p1, "key_is_third_part"

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    const-string p1, "key_sign_up_method"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroidx/fragment/app/Fragment;)V

    .line 37
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->handleNoEmailDetected(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmailOrPhoneNumber(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sput-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/account/AccountBaseFragment;->cancel()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x100

    .line 10
    .line 11
    const/16 v1, 0xfb

    .line 12
    .line 13
    const/16 v2, 0xd5

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    if-eq p3, v2, :cond_1

    .line 19
    .line 20
    if-eq p3, v1, :cond_1

    .line 21
    .line 22
    if-eq p3, v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p4, v3

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    invoke-super {p0, p2, p3, p4, p5}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->thirdPartySecret:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p2, :cond_8

    .line 32
    .line 33
    .line 34
    const p2, 0x7f1201e2

    .line 35
    .line 36
    .line 37
    const p4, 0x7f12002e

    .line 38
    .line 39
    .line 40
    const p5, 0x7f12003d

    .line 41
    .line 42
    if-eq p3, v2, :cond_6

    .line 43
    .line 44
    if-eq p3, v1, :cond_4

    .line 45
    .line 46
    if-eq p3, v0, :cond_3

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePasswordForLeader(Ljava/lang/String;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    iget-boolean p3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    .line 54
    .line 55
    if-eqz p3, :cond_5

    .line 56
    .line 57
    new-instance p3, Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    new-instance p5, Lcom/narvii/account/ThirdPartyAccountBaseFragment$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {p5, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-virtual {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePassword(Ljava/lang/String;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_6
    iget-boolean p3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    .line 89
    .line 90
    if-eqz p3, :cond_7

    .line 91
    .line 92
    new-instance p3, Landroid/app/AlertDialog$Builder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 103
    .line 104
    new-instance p5, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;

    .line 105
    .line 106
    .line 107
    invoke-direct {p5, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 117
    goto :goto_1

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->handleNoEmailDetected(Ljava/lang/String;)V

    .line 121
    :cond_8
    :goto_1
    return-void
.end method

.method protected getSignUpMethod()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d001e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0e9e

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f120038

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const p1, 0x7f0a0834

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0a03d8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const p1, 0x7f0a0247

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$5;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$5;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 95
    return-void
.end method

.method protected queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    return-void
.end method

.method protected requirePassword(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    .line 9
    return-void
.end method

.method protected saveImage(Ljava/lang/String;Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;->onCompleted(Ljava/lang/String;)V

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string/jumbo v2, "third"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    :cond_1
    new-instance v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;-><init>()V

    .line 40
    .line 41
    iput-object p1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->dir:Ljava/io/File;

    .line 44
    .line 45
    const-string p1, "photo"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 52
    .line 53
    iput-object p1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photo:Lcom/narvii/photos/PhotoManager;

    .line 54
    .line 55
    iput-object p2, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 56
    .line 57
    sput-object v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method
