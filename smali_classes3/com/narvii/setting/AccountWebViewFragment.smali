.class public Lcom/narvii/setting/AccountWebViewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "AccountWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/setting/AccountWebViewFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/setting/AccountWebViewFragment;->relogin()V

    return-void
.end method

.method private relogin()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :cond_0
    const-string v0, "account"

    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 80
    new-instance v1, Lcom/narvii/setting/AccountWebViewFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/setting/AccountWebViewFragment$2;-><init>(Lcom/narvii/setting/AccountWebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method cleanCookie(Ljava/lang/String;)V
    .locals 1

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    .line 93
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 94
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 98
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 100
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 101
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 102
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method protected communityDelete()V
    .locals 0

    return-void
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 108
    new-instance v0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;

    invoke-direct {v0, p0}, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;-><init>(Lcom/narvii/setting/AccountWebViewFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 44
    sget v0, Lcom/narvii/lib/R$string;->close:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$drawable;->webview_button_close_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/narvii/setting/AccountWebViewFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/setting/AccountWebViewFragment$1;-><init>(Lcom/narvii/setting/AccountWebViewFragment;Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->setShowProgress(Z)V

    return-void
.end method

.method protected popupLogout()V
    .locals 0

    return-void
.end method

.method updateSecret(Ljava/lang/String;)V
    .locals 3

    const-string v0, "account"

    .line 54
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 55
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v2, v1, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, v1, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1}, Lcom/narvii/account/AccountService;->setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/narvii/setting/AccountWebViewFragment;->relogin()V

    :cond_1
    :goto_0
    return-void
.end method
