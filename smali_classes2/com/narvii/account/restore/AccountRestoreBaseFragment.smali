.class public abstract Lcom/narvii/account/restore/AccountRestoreBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "AccountRestoreBaseFragment.java"

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

    .line 50
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method private restoreAccount()V
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->isContentVerified()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "account"

    .line 212
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 213
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/account/delete-request/cancel"

    .line 215
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 216
    invoke-virtual {v4}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "secret"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v1}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->setupRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 219
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 220
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 221
    new-instance v3, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateViews()V
    .locals 0

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->isContentVerified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected forgetPassword()V
    .locals 0

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

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904b7

    if-eq p1, v0, :cond_1

    const v0, 0x7f090972

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreAccount()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->forgetPassword()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    const-string p1, "key_restore_account_type"

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreType:I

    .line 70
    new-instance p1, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->accountUtils:Lcom/narvii/account/AccountUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->layoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 163
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 141
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->updateViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f09012c

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0907a0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    .line 86
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v2, 0x0

    const/16 v3, 0x65

    if-ne v1, v3, :cond_3

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_0
    const-string v3, "imageLoader"

    .line 92
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/image/NVImageLoader;

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    const-string v6, "assets://icon-community.jpg"

    invoke-virtual {v3, v6, v4, v1, v5}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p2, :cond_2

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p2, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_4

    .line 98
    invoke-static {v1}, Lcom/narvii/util/PaletteUtils;->isLightTone(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x22000000

    .line 99
    invoke-virtual {v0, p2}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const v0, 0x7f0805cb

    .line 104
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_4
    :goto_1
    const p2, 0x7f090822

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TextInputLayout;

    iput-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 109
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/TextInputLayout;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    const-string v0, "pass"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/TextInputLayout;->setInputText(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {p2}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f090972

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    .line 114
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance p2, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreBtn:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    const p2, 0x7f0904b7

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v1, 0x7f0f003c

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090048

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 127
    new-instance v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$1;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p2, 0x7f090b9e

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

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
