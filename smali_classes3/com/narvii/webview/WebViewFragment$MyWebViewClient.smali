.class public Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/webview/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/webview/WebViewFragment;


# direct methods
.method protected constructor <init>(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 481
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 483
    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 484
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    .line 485
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 473
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 474
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    const/4 p2, 0x0

    iput p2, p1, Lcom/narvii/webview/WebViewFragment;->errorCode:I

    const/4 p3, 0x1

    .line 475
    iput-boolean p3, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 476
    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    iput p2, p1, Lcom/narvii/webview/WebViewFragment;->errorCode:I

    const/4 p2, 0x0

    .line 495
    iput-boolean p2, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 496
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 497
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "intent://"

    .line 503
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_noMapping"

    if-eqz v1, :cond_1

    .line 504
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 505
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 508
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 510
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v4, 0x10000

    .line 511
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p1, v3}, Lcom/narvii/webview/WebViewFragment;->startActivityFromWebView(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "browser_fallback_url"

    .line 516
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {v2, p2}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return v0

    .line 528
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 529
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "http"

    .line 530
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    .line 531
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "play.google.com"

    .line 532
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "/store/apps/details"

    .line 533
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 535
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    :cond_3
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->startActivityFromWebView(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1

    :catch_0
    return v0
.end method
