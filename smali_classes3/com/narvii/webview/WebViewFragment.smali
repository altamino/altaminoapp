.class public Lcom/narvii/webview/WebViewFragment;
.super Lcom/narvii/app/NVFragment;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;,
        Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
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

    .line 63
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/16 v0, 0x3f3

    .line 85
    iput v0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    .line 381
    new-instance v0, Lcom/narvii/webview/WebViewFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$3;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/webview/WebViewFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/webview/WebViewFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/narvii/webview/WebViewFragment;->showProgress:Z

    return p0
.end method

.method static synthetic access$200()Landroid/webkit/ValueCallback;
    .locals 1

    .line 63
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 63
    sput-object p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/webview/WebViewFragment;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/webview/WebViewFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private darkTheme()Z
    .locals 1

    const-string v0, "config"

    .line 138
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 139
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 462
    new-instance v0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;

    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 458
    new-instance v0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;

    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    return-object v0
.end method

.method public fetchRawHtml()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "javascript:console.log(\'##rawhtml##\'+document.documentElement.outerHTML);"

    .line 668
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

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

    if-eqz p1, :cond_0

    .line 291
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 292
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 297
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "addAcceptLanguage"

    .line 298
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "account"

    .line 302
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 303
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "sid"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NDCAUTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->webview_toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getTransformUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 269
    :cond_1
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 270
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_2
    const-string v0, "from_aminoapp"

    const-string v1, "1"

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 281
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hideCBBInHomeFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideToolbar(Z)V
    .locals 1

    .line 350
    iput-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    .line 351
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 352
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected initCookie()V
    .locals 6

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 678
    sget-wide v2, Lcom/narvii/webview/WebViewFragment;->initCookieTime:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 680
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 681
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 682
    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 683
    new-instance v4, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/narvii/util/PackageUtils;->getPermalinkHost(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-no-frame=true;"

    .line 685
    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-boolean v4, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$string;->pebkit_cookie:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 689
    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 693
    sput-wide v0, Lcom/narvii/webview/WebViewFragment;->initCookieTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to setup cookie"

    .line 695
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 5

    const/4 v0, 0x1

    .line 427
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 428
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 429
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 432
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 433
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 434
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 435
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 437
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 438
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 439
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 444
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->createWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 446
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 449
    :try_start_0
    const-class p1, Landroid/webkit/WebView;

    const-string v2, "setWebContentsDebuggingEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 451
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 248
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getTransformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 622
    iget v0, p0, Lcom/narvii/webview/WebViewFragment;->FILECHOOSER_RESULTCODE:I

    if-ne p1, v0, :cond_b

    .line 623
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 626
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 630
    :goto_2
    iput-object v2, p0, Lcom/narvii/webview/WebViewFragment;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_8

    .line 632
    :cond_3
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_b

    if-eqz p3, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_3

    .line 633
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, v2

    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    .line 637
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 640
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    .line 641
    :goto_5
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 642
    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 643
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move-object v4, v2

    :cond_7
    if-eqz v0, :cond_8

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    .line 647
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_6

    :cond_8
    move-object v3, v4

    goto :goto_6

    :cond_9
    move-object v3, v2

    .line 649
    :goto_6
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 650
    sput-object v2, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    goto :goto_7

    .line 652
    :cond_a
    sget-object v0, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    new-array v1, v1, [Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 654
    :goto_7
    sput-object v2, Lcom/narvii/webview/WebViewFragment;->mUploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 657
    :cond_b
    :goto_8
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    if-ne p1, v0, :cond_0

    .line 391
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    if-ne p1, v0, :cond_1

    .line 394
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    if-ne p1, v0, :cond_2

    .line 396
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    if-ne p1, v0, :cond_3

    .line 398
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    if-ne p1, v0, :cond_4

    .line 400
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 401
    sget v0, Lcom/narvii/lib/R$string;->open_in_browser:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 402
    new-instance v0, Lcom/narvii/webview/WebViewFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/webview/WebViewFragment$4;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 410
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "url"

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webview opening url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 127
    sget p3, Lcom/narvii/lib/R$layout;->webview_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 244
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method protected onRawHtmlResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 226
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    const-string v1, "webviewState"

    .line 220
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    sget v0, Lcom/narvii/lib/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SmoothProgressBar;

    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 147
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    new-instance v1, Lcom/narvii/webview/WebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/webview/WebViewFragment$1;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SmoothProgressBar;->setOnProgressFinishListener(Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;)V

    if-eqz p2, :cond_0

    const-string v0, "hideToolbar"

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    const-string v0, "webviewState"

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "url"

    .line 160
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->initCookie()V

    .line 169
    sget v0, Lcom/narvii/lib/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 170
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 172
    sget v0, Lcom/narvii/lib/R$id;->webview_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    const-string p1, "config"

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 175
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    goto :goto_1

    .line 179
    :cond_3
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4

    const p1, -0x97c117

    goto :goto_1

    :cond_4
    const p1, -0xdddfbc

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->webview_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    .line 186
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_forward:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_back:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->webview_forward:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    .line 189
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_back:I

    goto :goto_3

    :cond_6
    sget v0, Lcom/narvii/lib/R$drawable;->ic_webview_toolbar_forward:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->webview_stop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    .line 192
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->webview_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    .line 194
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->webview_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    .line 196
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->hideToolbar:Z

    if-eqz p1, :cond_7

    .line 198
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    if-eqz p2, :cond_8

    .line 203
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_4

    .line 204
    :cond_8
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 205
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->getTransformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    new-instance p2, Lcom/narvii/webview/WebViewFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/webview/WebViewFragment$2;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    return-void
.end method

.method protected openInExternalWebBrowser()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "_noMapping"

    const/4 v2, 0x1

    .line 419
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 1

    .line 91
    iput-boolean p1, p0, Lcom/narvii/webview/WebViewFragment;->showProgress:Z

    .line 92
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 93
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tryGoBack()Z
    .locals 8

    .line 324
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 329
    iget v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    .line 330
    iget v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 334
    :cond_1
    iput-object v0, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackUrl:Ljava/lang/String;

    .line 335
    iput v3, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackCount:I

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/narvii/webview/WebViewFragment;->prevGoBackTime:J

    .line 338
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 339
    invoke-virtual {p0, v1}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    return v3

    :cond_3
    return v1
.end method

.method protected updateToolbar(Z)V
    .locals 5

    if-eqz p1, :cond_8

    .line 358
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;->darkTheme()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0x9e9e9f

    :goto_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    .line 360
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    goto :goto_1

    :cond_1
    const p1, -0x29292a

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 363
    :goto_2
    iget-object v4, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    invoke-virtual {v4, v0}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 364
    iget-object v4, p0, Lcom/narvii/webview/WebViewFragment;->toolbarBack:Lcom/narvii/widget/TintButton;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    invoke-virtual {v4, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 366
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 367
    :goto_4
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->toolbarForward:Lcom/narvii/widget/TintButton;

    if-eqz v2, :cond_5

    move p1, v1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 370
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarStop:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 372
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    iget-boolean v0, p0, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarRefresh:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 374
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->toolbarAction:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_7

    .line 376
    :cond_8
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->updateToolbarRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_7
    return-void
.end method
