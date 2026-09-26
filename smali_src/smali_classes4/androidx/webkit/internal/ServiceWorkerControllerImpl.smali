.class public Landroidx/webkit/internal/ServiceWorkerControllerImpl;
.super Landroidx/webkit/ServiceWorkerControllerCompat;
.source "SourceFile"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

.field private mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

.field private final mWebSettings:Landroidx/webkit/ServiceWorkerWebSettingsCompat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/webkit/ServiceWorkerControllerCompat;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$N;->b()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForN;->g()Landroid/webkit/ServiceWorkerController;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->a()Landroid/webkit/ServiceWorkerController;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/webkit/internal/ApiHelperForN;->i(Landroid/webkit/ServiceWorkerController;)Landroidx/webkit/internal/ServiceWorkerWebSettingsImpl;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mWebSettings:Landroidx/webkit/ServiceWorkerWebSettingsCompat;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->c()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-object v2, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->d()Landroidx/webkit/internal/WebViewProviderFactory;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getServiceWorkerController()Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;

    .line 50
    .line 51
    new-instance v1, Landroidx/webkit/internal/ServiceWorkerWebSettingsImpl;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ServiceWorkerControllerBoundaryInterface;->getServiceWorkerWebSettings()Ljava/lang/reflect/InvocationHandler;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroidx/webkit/internal/ServiceWorkerWebSettingsImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    .line 59
    .line 60
    iput-object v1, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mWebSettings:Landroidx/webkit/ServiceWorkerWebSettingsCompat;

    .line 61
    :goto_0
    return-void

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->a()Ljava/lang/UnsupportedOperationException;

    .line 65
    move-result-object v0

    .line 66
    throw v0
.end method

.method private a()Landroid/webkit/ServiceWorkerController;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/webkit/internal/ApiHelperForN;->g()Landroid/webkit/ServiceWorkerController;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;->mFrameworksImpl:Landroid/webkit/ServiceWorkerController;

    .line 13
    return-object v0
.end method
