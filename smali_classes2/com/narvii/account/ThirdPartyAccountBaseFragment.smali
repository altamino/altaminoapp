.class public Lcom/narvii/account/ThirdPartyAccountBaseFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "ThirdPartyAccountBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;,
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;,
        Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;
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

    .line 32
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->handleNoEmailDetected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/account/ThirdPartyAccountBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->thirdPartySecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmailOrPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private goNext(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 220
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0904ba

    .line 222
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method private handleNoEmailDetected(Ljava/lang/String;)V
    .locals 1

    .line 146
    sget-boolean v0, Lcom/narvii/account/LoginOrSignupFragment;->showPhoneNumberItem:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requireEmailOrPhoneNumber(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requireEmail(Ljava/lang/String;)V
    .locals 3

    .line 174
    new-instance v0, Lcom/narvii/account/EmailSignupFragment;

    invoke-direct {v0}, Lcom/narvii/account/EmailSignupFragment;-><init>()V

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_third_part_secret"

    .line 176
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_is_third_part"

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "key_sign_up_method"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private requireEmailOrPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$6;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    return-void
.end method

.method private requirePasswordForLeader(Ljava/lang/String;)V
    .locals 3

    .line 206
    new-instance v0, Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    invoke-direct {v0}, Lcom/narvii/account/LeaderThirdPartyLoginFragment;-><init>()V

    .line 207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_third_part_secret"

    .line 208
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_is_third_part"

    const/4 v2, 0x1

    .line 209
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->getSignUpMethod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "key_sign_up_method"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->goNext(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    .line 250
    sput-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 251
    invoke-super {p0}, Lcom/narvii/account/AccountBaseFragment;->cancel()Z

    move-result v0

    return v0
.end method

.method public finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0xfb

    const/16 v2, 0xd5

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p4, v3

    .line 64
    :cond_2
    :goto_0
    invoke-super {p0, p2, p3, p4, p5}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 66
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->thirdPartySecret:Ljava/lang/String;

    if-nez p2, :cond_8

    const p2, 0x7f0f0193

    const p4, 0x7f0f002f

    const p5, 0x7f0f003e

    if-eq p3, v2, :cond_6

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePasswordForLeader(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_4
    iget-boolean p3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    if-eqz p3, :cond_5

    .line 72
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p3, p5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance p5, Lcom/narvii/account/ThirdPartyAccountBaseFragment$1;

    invoke-direct {p5, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p3, p2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePassword(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_6
    iget-boolean p3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    if-eqz p3, :cond_7

    .line 89
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p3, p5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 91
    new-instance p5, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;

    invoke-direct {p5, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {p3, p2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 100
    :cond_7
    invoke-direct {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->handleNoEmailDetected(Ljava/lang/String;)V

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

    .line 114
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b001e

    .line 115
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f090b9a

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f0039

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f0906a9

    .line 121
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090305

    .line 129
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090193

    .line 136
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$5;

    invoke-direct {v0, p0, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$5;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method protected queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 227
    invoke-interface {p1, v0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected requirePassword(Ljava/lang/String;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$7;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    return-void
.end method

.method protected saveImage(Ljava/lang/String;Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;)V
    .locals 3

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-interface {p2, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;->onCompleted(Ljava/lang/String;)V

    .line 235
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "third"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 239
    :cond_1
    new-instance v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    invoke-direct {v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;-><init>()V

    .line 240
    iput-object p1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    .line 241
    iput-object v0, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->dir:Ljava/io/File;

    const-string p1, "photo"

    .line 242
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photo:Lcom/narvii/photos/PhotoManager;

    .line 243
    iput-object p2, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 244
    sput-object v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
