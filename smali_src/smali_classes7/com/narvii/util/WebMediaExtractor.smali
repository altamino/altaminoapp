.class public abstract Lcom/narvii/util/WebMediaExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/WebMediaExtractor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/WebMediaExtractor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final attachView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final height:I

.field private final images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final width:I

.field private final wvClient:Lcom/narvii/util/WebMediaExtractor$wvClient$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/WebMediaExtractor$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/util/WebMediaExtractor$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/WebMediaExtractor;->Companion:Lcom/narvii/util/WebMediaExtractor$Companion;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/util/WebMediaExtractor$wvClient$1;-><init>(Lcom/narvii/util/WebMediaExtractor;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->wvClient:Lcom/narvii/util/WebMediaExtractor$wvClient$1;

    .line 30
    .line 31
    new-instance v1, Landroid/webkit/WebView;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    iput-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/util/WMEAttachView;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p1, v1}, Lcom/narvii/util/WMEAttachView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    .line 43
    iput-object v2, p0, Lcom/narvii/util/WebMediaExtractor;->attachView:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v2, 0x3c23d70a    # 0.01f

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/narvii/util/WebMediaExtractor;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->width:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 78
    .line 79
    iput p1, p0, Lcom/narvii/util/WebMediaExtractor;->height:I

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/view/View;->layout(IIII)V

    .line 84
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->videoFound$lambda$3$lambda$2(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getHandler$cp()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$imageFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->imageFound(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$videoFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->videoFound(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->imageFound$lambda$1$lambda$0(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    return-void
.end method

.method private final imageFound(Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/util/h;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0, p1}, Lcom/narvii/util/h;-><init>(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    throw p1
.end method

.method private static final imageFound$lambda$1$lambda$0(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$url"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->onImageFound(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private final initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 52
    return-void
.end method

.method private final videoFound(Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/util/g;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0, p1}, Lcom/narvii/util/g;-><init>(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    throw p1
.end method

.method private static final videoFound$lambda$3$lambda$2(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$url"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/util/WebMediaExtractor;->onVideoFound(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public final extract(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public final getAttachView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->attachView:Landroid/view/View;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public abstract onFailed(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFinished(Ljava/util/Collection;Ljava/util/Collection;)V
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onVideoFound(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iget v2, p0, Lcom/narvii/util/WebMediaExtractor;->height:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/util/WebMediaExtractor;->scrollY:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    .line 27
    .line 28
    const/16 v1, 0x3c

    .line 29
    .line 30
    if-le v0, v1, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->images:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/util/WebMediaExtractor;->videos:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/WebMediaExtractor;->onFinished(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    sget-object v0, Lcom/narvii/util/WebMediaExtractor;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    const-wide/16 v1, 0xc8

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/util/WebMediaExtractor;->webView:Landroid/webkit/WebView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 54
    move-result v0

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollY:I

    .line 57
    .line 58
    iget v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/util/WebMediaExtractor;->scrollCount:I

    .line 63
    :goto_0
    return-void
.end method
