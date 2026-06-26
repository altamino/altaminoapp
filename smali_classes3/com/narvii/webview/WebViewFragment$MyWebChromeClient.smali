.class public Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/webview/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/webview/WebViewFragment;


# direct methods
.method protected constructor <init>(Lcom/narvii/webview/WebViewFragment;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 553
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "##rawhtml##"

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/webview/WebViewFragment;->onRawHtmlResult(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 570
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 571
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p1}, Lcom/narvii/webview/WebViewFragment;->access$100(Lcom/narvii/webview/WebViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    :cond_1
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 564
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 583
    invoke-static {}, Lcom/narvii/webview/WebViewFragment;->access$200()Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 584
    invoke-static {}, Lcom/narvii/webview/WebViewFragment;->access$200()Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 586
    :cond_0
    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->access$202(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 587
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "File Chooser"

    if-eqz p3, :cond_1

    .line 590
    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 591
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->access$300(Lcom/narvii/webview/WebViewFragment;)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string p3, "*/*"

    .line 593
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 595
    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->access$300(Lcom/narvii/webview/WebViewFragment;)I

    move-result p2

    .line 594
    invoke-virtual {p3, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 599
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 607
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->access$400(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 608
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->access$400(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 610
    :cond_0
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p3, p1}, Lcom/narvii/webview/WebViewFragment;->access$402(Lcom/narvii/webview/WebViewFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 611
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.OPENABLE"

    .line 612
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "*/*"

    .line 614
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    const-string p3, "File Chooser"

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->access$300(Lcom/narvii/webview/WebViewFragment;)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
