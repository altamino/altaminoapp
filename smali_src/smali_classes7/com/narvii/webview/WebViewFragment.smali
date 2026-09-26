.class public Lcom/narvii/webview/WebViewFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/webview/WebViewFragment$MyWebViewClient;,
        Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;
    }
.end annotation


# static fields
.field static final PROGRESS_MAX:I = 0x64

.field private static initCookieTime:J

.field private static mUploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FILECHOOSER_RESULTCODE:I

.field protected errorCode:I

.field private hideToolbar:Z

.field protected isLoading:Z

.field private keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field private mCapturedImageURI:Landroid/net/Uri;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private prevGoBackCount:I

.field private prevGoBackTime:J

.field private prevGoBackUrl:Ljava/lang/String;

.field progressBar:Lcom/narvii/widget/SmoothProgressBar;

.field private showProgress:Z

.field protected toolbar:Landroid/view/View;

.field private toolbarAction:Lcom/narvii/widget/TintButton;

.field private toolbarBack:Lcom/narvii/widget/TintButton;

.field private toolbarForward:Lcom/narvii/widget/TintButton;

.field private toolbarRefresh:Lcom/narvii/widget/TintButton;

.field private toolbarStop:Lcom/narvii/widget/SpinningView;

.field private final updateToolbarRunnable:Ljava/lang/Runnable;

.field private url:Ljava/lang/String;

.field protected webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x3f3

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/webview/WebViewFragment$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$1;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method private darkTheme()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public static synthetic n(Lcom/narvii/webview/WebViewFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/webview/WebViewFragment;->lambda$onViewCreated$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/webview/WebViewFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/webview/WebViewFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/webview/WebViewFragment;->showProgress:Z

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/webview/WebViewFragment;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t()Landroid/webkit/ValueCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static bridge synthetic u(Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 6
    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 6
    return-object v0
.end method

.method public fetchRawHtml()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v1, "javascript:console.log(\'##rawhtml##\'+document.documentElement.outerHTML);"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method protected getHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 23
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 26
    .line 27
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    const-string v1, "addAcceptLanguage"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "Accept-Language"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string p1, "account"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    const-string v1, "sid"

    .line 74
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v2, "sid="

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    const-string v1, "NDCAUTH"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$dimen;->webview_toolbar_height:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method protected getTransformUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :catch_0
    :cond_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_1
    new-instance p1, Landroid/net/Uri$Builder;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    const-string v0, "from_aminoapp"

    .line 100
    .line 101
    const-string v1, "1"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    :cond_3
    :goto_1
    return-object p1
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hideCBBInHomeFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideToolbar(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    return-void
.end method

.method protected initCookie()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-wide v2, Lcom/narvii/webview/WebViewFragment;->initCookieTime:J

    .line 7
    .line 8
    .line 9
    const-wide/32 v4, 0x36ee80

    .line 10
    add-long/2addr v2, v4

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 30
    .line 31
    new-instance v4, Lcom/narvii/util/PackageUtils;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lcom/narvii/util/PackageUtils;->getPermalinkHost(Z)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    const-string/jumbo v4, "x-no-frame=true;"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    sget-boolean v4, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    sget v5, Lcom/narvii/lib/R$string;->pabkit_cookie:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v5

    .line 67
    .line 68
    if-nez v5, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 82
    .line 83
    sput-wide v0, Lcom/narvii/webview/WebViewFragment;->initCookieTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :goto_1
    const-string v1, "fail to setup cookie"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_1
    :goto_2
    return-void
.end method

.method protected initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->createWebViewClient()Landroid/webkit/WebViewClient;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->createWebChromeClient()Landroid/webkit/WebChromeClient;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    .line 77
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 78
    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    :try_start_0
    const-class p1, Landroid/webkit/WebView;

    .line 82
    .line 83
    const-string v2, "setWebContentsDebuggingEnabled"

    .line 84
    .line 85
    new-array v3, v0, [Ljava/lang/Class;

    .line 86
    .line 87
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v4, v3, v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 98
    .line 99
    aput-object v2, v0, v1

    .line 100
    const/4 v1, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    :cond_0
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getTransformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getTransformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_b

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    if-eq p2, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move-object v0, v2

    .line 22
    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 32
    .line 33
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    :goto_2
    iput-object v2, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 39
    goto :goto_8

    .line 40
    .line 41
    :cond_3
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 42
    .line 43
    if-eqz v0, :cond_b

    .line 44
    .line 45
    if-eqz p3, :cond_5

    .line 46
    .line 47
    if-eq p2, v1, :cond_4

    .line 48
    goto :goto_3

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_4

    .line 54
    :cond_5
    :goto_3
    move-object v0, v2

    .line 55
    :goto_4
    const/4 v1, 0x0

    .line 56
    .line 57
    if-eqz v0, :cond_a

    .line 58
    .line 59
    if-eqz p3, :cond_8

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 73
    move-result v4

    .line 74
    .line 75
    new-array v4, v4, [Landroid/net/Uri;

    .line 76
    move v5, v1

    .line 77
    .line 78
    .line 79
    :goto_5
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 80
    move-result v6

    .line 81
    .line 82
    if-ge v5, v6, :cond_7

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    aput-object v6, v4, v5

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    goto :goto_5

    .line 96
    :cond_6
    move-object v4, v2

    .line 97
    .line 98
    :cond_7
    if-eqz v0, :cond_9

    .line 99
    const/4 v3, 0x1

    .line 100
    .line 101
    new-array v4, v3, [Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    aput-object v0, v4, v1

    .line 108
    goto :goto_6

    .line 109
    :cond_8
    move-object v4, v2

    .line 110
    .line 111
    :cond_9
    :goto_6
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    sput-object v2, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 117
    goto :goto_7

    .line 118
    .line 119
    :cond_a
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 120
    .line 121
    new-array v1, v1, [Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    :goto_7
    sput-object v2, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 127
    .line 128
    .line 129
    :cond_b
    :goto_8
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    sget v0, Lcom/narvii/lib/R$string;->open_in_browser:I

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/webview/WebViewFragment$2;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$2;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "url"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "webview opening url "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->webview_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 21
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 9
    return-void
.end method

.method protected onRawHtmlResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "webviewState"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->progress_bar:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/SmoothProgressBar;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/webview/a;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/webview/a;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SmoothProgressBar;->setOnProgressFinishListener(Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;)V

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string v0, "hideToolbar"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "webviewState"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "url"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->initCookie()V

    .line 93
    .line 94
    sget v0, Lcom/narvii/lib/R$id;->webview:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Landroid/webkit/WebView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 106
    .line 107
    sget v0, Lcom/narvii/lib/R$id;->webview_toolbar:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 114
    .line 115
    const-string p1, "config"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 135
    move-result p1

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_3
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 139
    .line 140
    const/16 v0, 0xc8

    .line 141
    .line 142
    if-ne p1, v0, :cond_4

    .line 143
    .line 144
    .line 145
    const p1, -0x97c117

    .line 146
    goto :goto_1

    .line 147
    .line 148
    .line 149
    :cond_4
    const p1, -0xdddfbc

    .line 150
    .line 151
    :goto_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 157
    .line 158
    sget v0, Lcom/narvii/lib/R$id;->webview_back:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 165
    .line 166
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_forward:I

    .line 180
    goto :goto_2

    .line 181
    .line 182
    :cond_5
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_back:I

    .line 183
    .line 184
    .line 185
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 186
    .line 187
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 188
    .line 189
    sget v0, Lcom/narvii/lib/R$id;->webview_forward:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 196
    .line 197
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 201
    move-result v0

    .line 202
    .line 203
    if-eqz v0, :cond_6

    .line 204
    .line 205
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_back:I

    .line 206
    goto :goto_3

    .line 207
    .line 208
    :cond_6
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_forward:I

    .line 209
    .line 210
    .line 211
    :goto_3
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 212
    .line 213
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 219
    .line 220
    sget v0, Lcom/narvii/lib/R$id;->webview_stop:I

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    check-cast p1, Lcom/narvii/widget/SpinningView;

    .line 227
    .line 228
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 234
    .line 235
    sget v0, Lcom/narvii/lib/R$id;->webview_refresh:I

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 242
    .line 243
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 249
    .line 250
    sget v0, Lcom/narvii/lib/R$id;->webview_action:I

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 257
    .line 258
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    iget-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 264
    .line 265
    if-eqz p1, :cond_7

    .line 266
    .line 267
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    .line 268
    .line 269
    const/16 v0, 0x8

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_7
    const/4 p1, 0x1

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 277
    .line 278
    if-eqz p2, :cond_8

    .line 279
    .line 280
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 284
    goto :goto_4

    .line 285
    .line 286
    :cond_8
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 287
    .line 288
    if-eqz p1, :cond_9

    .line 289
    .line 290
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getTransformUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    .line 305
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 306
    .line 307
    new-instance p2, Lcom/narvii/webview/b;

    .line 308
    .line 309
    .line 310
    invoke-direct {p2, p0}, Lcom/narvii/webview/b;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 311
    .line 312
    .line 313
    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 314
    move-result-object p1

    .line 315
    .line 316
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 317
    return-void
.end method

.method protected openInExternalWebBrowser()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v2, "android.intent.action.VIEW"

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    .line 33
    const-string v0, "_noMapping"

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/narvii/webview/WebViewFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    :cond_0
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->showProgress:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const/16 p1, 0x8

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/webview/WebViewFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public tryGoBack()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    .line 29
    add-int/2addr v0, v3

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    if-gt v0, v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v4

    .line 39
    .line 40
    iget-wide v6, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackTime:J

    .line 41
    sub-long/2addr v4, v6

    .line 42
    .line 43
    const-wide/16 v6, 0x3e8

    .line 44
    .line 45
    cmp-long v0, v4, v6

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    :cond_0
    move v3, v1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    .line 52
    .line 53
    iput v3, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    move-result-wide v4

    .line 58
    .line 59
    iput-wide v4, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackTime:J

    .line 60
    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 68
    return v3

    .line 69
    :cond_3
    return v1
.end method

.method protected updateToolbar(Z)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;->darkTheme()Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    move v1, v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    const v1, -0x9e9e9f

    .line 15
    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/high16 p1, 0x3f000000    # 0.5f

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    const p1, -0x29292a

    .line 27
    .line 28
    :goto_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    move v0, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v0, v3

    .line 42
    .line 43
    :goto_2
    iget-object v4, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    move v0, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v0, p1

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-virtual {v4, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move v2, v3

    .line 69
    .line 70
    :goto_4
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    move p1, v1

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    move v0, v3

    .line 91
    goto :goto_5

    .line 92
    :cond_6
    move v0, v2

    .line 93
    .line 94
    .line 95
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    move v3, v2

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_8
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    .line 131
    .line 132
    const-wide/16 v0, 0x64

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 136
    :goto_6
    return-void
.end method
