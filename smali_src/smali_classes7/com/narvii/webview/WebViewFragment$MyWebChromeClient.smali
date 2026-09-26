.class public Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "##rawhtml##"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 17
    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/webview/WebViewFragment;->onRawHtmlResult(Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "webview: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 48
    :goto_0
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/webview/WebViewFragment;->r(Lcom/narvii/webview/WebViewFragment;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const/16 v0, 0x64

    .line 21
    .line 22
    if-eq p2, v0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/webview/WebViewFragment;->t()Landroid/webkit/ValueCallback;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/webview/WebViewFragment;->t()Landroid/webkit/ValueCallback;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->u(Landroid/webkit/ValueCallback;)V

    .line 18
    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 20
    .line 21
    const-string p2, "android.intent.action.GET_CONTENT"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    const-string p2, "File Chooser"

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->p(Lcom/narvii/webview/WebViewFragment;)I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    const-string p3, "*/*"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Lcom/narvii/webview/WebViewFragment;->p(Lcom/narvii/webview/WebViewFragment;)I

    .line 67
    move-result p2

    .line 68
    .line 69
    .line 70
    invoke-static {p3, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 79
    :goto_1
    const/4 p1, 0x1

    .line 80
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

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->q(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->q(Lcom/narvii/webview/WebViewFragment;)Landroid/webkit/ValueCallback;

    .line 14
    move-result-object p3

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p1}, Lcom/narvii/webview/WebViewFragment;->s(Lcom/narvii/webview/WebViewFragment;Landroid/webkit/ValueCallback;)V

    .line 24
    .line 25
    new-instance p1, Landroid/content/Intent;

    .line 26
    .line 27
    const-string p3, "android.intent.action.GET_CONTENT"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    const-string p3, "android.intent.category.OPENABLE"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p3

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    const-string p2, "*/*"

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 49
    .line 50
    const-string p3, "File Chooser"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p3, p0, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p3}, Lcom/narvii/webview/WebViewFragment;->p(Lcom/narvii/webview/WebViewFragment;)I

    .line 60
    move-result p3

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p1, p3}, Lcom/narvii/webview/WebViewFragment$MyWebChromeClient;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 64
    return-void
.end method
