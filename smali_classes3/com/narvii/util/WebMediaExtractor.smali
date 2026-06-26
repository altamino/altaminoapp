.class public abstract Lcom/narvii/util/WebMediaExtractor;
.super Ljava/lang/Object;
.source "WebMediaExtractor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/WebMediaExtractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebMediaExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebMediaExtractor.kt\ncom/narvii/util/WebMediaExtractor\n*L\n1#1,188:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/WebMediaExtractor$Companion;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final attachView:Landroid/view/View;

.field private final height:I

.field private final images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrollCount:I

.field private scrollY:I

.field private final videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;

.field private final width:I

.field private final wvClient:Lcom/narvii/util/WebMediaExtractor$wvClient$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/WebMediaExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/WebMediaExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/util/WebMediaExtractor;->Companion:Lcom/narvii/util/WebMediaExtractor$Companion;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/WebMediaExtractor$wvClient$1;-><init>(Lcom/narvii/util/WebMediaExtractor;)V

    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->wvClient:Lcom/narvii/util/WebMediaExtractor$wvClient$1;

    .line 27
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 28
    new-instance v0, Lcom/narvii/util/WMEAttachView;

    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, p1, v1}, Lcom/narvii/util/WMEAttachView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->attachView:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/narvii/util/WebMediaExtractor;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 31
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->wvClient:Lcom/narvii/util/WebMediaExtractor$wvClient$1;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->width:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/narvii/util/WebMediaExtractor;->height:I

    .line 34
    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->width:I

    iget v1, p0, Lcom/narvii/util/WebMediaExtractor;->height:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/webkit/WebView;->layout(IIII)V

    return-void
.end method

.method public static final synthetic access$getHandler$cp()Landroid/os/Handler;
    .locals 1

    .line 14
    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$imageFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->imageFound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$videoFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->videoFound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final imageFound(Ljava/lang/String;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/util/WebMediaExtractor$imageFound$$inlined$synchronized$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/util/WebMediaExtractor$imageFound$$inlined$synchronized$lambda$1;-><init>(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 62
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 64
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0

    throw p1
.end method

.method private final initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 4

    .line 38
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webview.settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 40
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 41
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method private final videoFound(Ljava/lang/String;)Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/util/WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1;-><init>(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 77
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 79
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 50
    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extract(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final getAttachView()Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->attachView:Landroid/view/View;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onFinished(Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onImageFound(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onVideoFound(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/narvii/util/WebMediaExtractor;->height:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 151
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/narvii/util/WebMediaExtractor;->scrollY:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/WebMediaExtractor;->onFinished(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 153
    invoke-virtual {p0}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollY:I

    .line 157
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    :goto_0
    return-void
.end method
