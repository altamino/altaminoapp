.class public Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;
.super Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/AminoWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AminoWebViewClient"
.end annotation


# instance fields
.field api:Lcom/narvii/util/http/ApiService;

.field initFinishTime:J

.field pendingSafeUrl:Ljava/lang/String;

.field final safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiJsonResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field safeRequest:Lcom/narvii/util/http/ApiRequest;

.field final sendSafeRequest:Ljava/lang/Runnable;

.field started:Z

.field final synthetic this$0:Lcom/narvii/app/AminoWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoWebViewFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;-><init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;-><init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;Ljava/lang/Class;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 22
    .line 23
    const-string v0, "api"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    .line 32
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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p1, p1, v0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    .line 18
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->started:Z

    .line 6
    const/4 p3, 0x1

    .line 7
    xor-int/2addr p1, p3

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->started:Z

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    .line 47
    :goto_1
    move-object p2, v1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {p2}, Lcom/narvii/app/AminoWebViewFragment;->trimSafeBrowsingUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    sget-object p3, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;

    .line 61
    .line 62
    if-eqz p3, :cond_1

    .line 63
    .line 64
    iget-wide v2, p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->time:J

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    .line 71
    const-wide/32 v6, 0x493e0

    .line 72
    sub-long/2addr v4, v6

    .line 73
    .line 74
    cmp-long v0, v2, v4

    .line 75
    .line 76
    if-lez v0, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 79
    .line 80
    iget p3, p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->value:I

    .line 81
    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p3}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_1
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v1}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    .line 94
    .line 95
    :goto_2
    if-nez p1, :cond_2

    .line 96
    .line 97
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    move-result p3

    .line 102
    .line 103
    if-nez p3, :cond_5

    .line 104
    .line 105
    :cond_2
    iput-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 117
    .line 118
    iput-object v1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 119
    .line 120
    :cond_3
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 121
    .line 122
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz p3, :cond_5

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    goto :goto_3

    .line 138
    .line 139
    :cond_4
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    .line 140
    .line 141
    const-wide/16 v0, 0x1f4

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :cond_5
    :goto_3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    iget-wide v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    .line 29
    .line 30
    const-wide/16 v6, 0x3e8

    .line 31
    add-long/2addr v4, v6

    .line 32
    .line 33
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-lez v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 56
    .line 57
    const-string v2, "android.intent.action.VIEW"

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    const-class v3, Lcom/narvii/app/ForwardActivity;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v0}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return v1

    .line 82
    .line 83
    .line 84
    :catch_0
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 90
    move-result p1

    .line 91
    return p1
.end method
