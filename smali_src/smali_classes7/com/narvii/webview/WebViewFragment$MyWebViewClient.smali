.class public Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
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


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 21
    move-result p1

    .line 22
    .line 23
    const/16 p2, 0x64

    .line 24
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/webview/WebViewFragment;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 33
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput p2, p1, Lcom/narvii/webview/WebViewFragment;->errorCode:I

    .line 9
    const/4 p3, 0x1

    .line 10
    .line 11
    iput-boolean p3, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 15
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 6
    .line 7
    iput p2, p1, Lcom/narvii/webview/WebViewFragment;->errorCode:I

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/narvii/webview/WebViewFragment;->isLoading:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/narvii/webview/WebViewFragment;->updateToolbar(Z)V

    .line 27
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    const-string v1, "intent://"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    move-result v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v2, "_noMapping"

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v3, Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const/high16 v4, 0x10000

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Lcom/narvii/webview/WebViewFragment;->startActivityFromWebView(Landroid/content/Intent;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-string v1, "browser_fallback_url"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p2}, Lcom/narvii/webview/WebViewFragment;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    :goto_0
    return v0

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    new-instance p2, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v1, "android.intent.action.VIEW"

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .line 79
    const-string v1, "http"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    const-string v1, "https"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_2
    const-string v1, "market"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v1

    .line 114
    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    const-string v1, "details"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    :goto_1
    move v3, v0

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :cond_3
    :goto_2
    const-string v1, "play.google.com"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    const-string v1, "/store/apps/details"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result p1

    .line 152
    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 163
    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->this$0:Lcom/narvii/webview/WebViewFragment;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :cond_5
    return v0

    .line 171
    :cond_6
    return v3

    .line 172
    :catch_0
    return v0
.end method
