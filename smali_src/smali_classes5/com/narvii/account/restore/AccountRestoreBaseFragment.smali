.class public abstract Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final KEY_RESTORE_ACCOUNT:Ljava/lang/String; = "key_restore_account_type"

.field public static final TYPE_RESTORE_ACCOUNT_EMAIL:I = 0x1

.field public static final TYPE_RESTORE_ACCOUNT_PHONE:I = 0x2


# instance fields
.field protected accountUtils:Lcom/narvii/account/AccountUtils;

.field passInputLayout:Lcom/narvii/widget/TextInputLayout;

.field protected request:Lcom/narvii/util/http/ApiRequest;

.field restoreBtn:Landroid/widget/Button;

.field private restoreType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private restoreAccount()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->isContentVerified()Z

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
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    const-string v1, "account"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v3, "/account/delete-request/cancel"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v4, "0 "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    const-string v4, "secret"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    const-string v2, "api"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 104
    .line 105
    new-instance v3, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 106
    .line 107
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 114
    return-void
.end method

.method private updateViews()V
    .locals 0

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->isContentVerified()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected forgetPassword()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f010010

    .line 14
    .line 15
    .line 16
    const v2, 0x7f010011

    .line 17
    .line 18
    .line 19
    const v3, 0x7f01000e

    .line 20
    .line 21
    .line 22
    const v4, 0x7f01000f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;-><init>()V

    .line 31
    .line 32
    new-instance v2, Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    const-string v3, "verify_type"

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    const v2, 0x7f0a039d

    .line 48
    .line 49
    const-string v3, "reset"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 62
    :cond_0
    return-void
.end method

.method public getStatusBarAlpha()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isContentVerified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract layoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a05f9

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0c30

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreAccount()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->forgetPassword()V

    .line 23
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 15
    .line 16
    const-string p1, "key_restore_account_type"

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreType:I

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/account/AccountUtils;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->layoutId()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    .line 3
    if-eq p2, p1, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    move-result p1

    .line 10
    .line 11
    const/16 p2, 0x42

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 11
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->updateViews()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a01c8

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a0a38

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    .line 33
    const v0, 0x7f080704

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const p2, 0x7f0a0acb

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 53
    .line 54
    const-string v0, "pass"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 71
    .line 72
    .line 73
    const p2, 0x7f0a0c30

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    check-cast p2, Landroid/widget/Button;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    new-instance p2, Lcom/narvii/account/AccountUtils;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    .line 99
    move-result p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    const p2, 0x7f0a05f9

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 115
    .line 116
    .line 117
    const v1, 0x7f12003b

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    new-instance v1, Landroid/text/style/UnderlineSpan;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 133
    move-result v2

    .line 134
    const/4 v3, 0x0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    check-cast p2, Landroid/widget/TextView;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const p2, 0x7f0a0079

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object p2

    .line 154
    .line 155
    if-eqz p2, :cond_1

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$1;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$1;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    :cond_1
    const p2, 0x7f0a0ea8

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 174
    move-result p2

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 178
    return-void
.end method

.method protected setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 0

    return-void
.end method

.method protected setupResultIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
