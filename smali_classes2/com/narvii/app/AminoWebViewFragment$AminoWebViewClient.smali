.class public Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;
.super Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.source "AminoWebViewFragment.java"


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

    .line 198
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-direct {p0, p1}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    .line 246
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;-><init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;)V

    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;-><init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    const-string v0, "api"

    .line 199
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 274
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 275
    iget-wide p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 205
    iget-boolean p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->started:Z

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    .line 206
    iput-boolean p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->started:Z

    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 211
    new-instance v2, Lcom/narvii/util/PackageUtils;

    iget-object v3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    :goto_1
    move-object p2, v1

    goto :goto_2

    .line 219
    :cond_0
    invoke-static {p2}, Lcom/narvii/app/AminoWebViewFragment;->trimSafeBrowsingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 220
    sget-object p3, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    invoke-virtual {p3, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;

    if-eqz p3, :cond_1

    .line 221
    iget-wide v2, p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->time:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 222
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    iget p3, p3, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->value:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p3, v1}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    :goto_2
    if-nez p1, :cond_2

    .line 229
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 230
    :cond_2
    iput-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 231
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz p2, :cond_3

    .line 232
    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 233
    iput-object v1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 235
    :cond_3
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 240
    :cond_4
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->sendSafeRequest:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 282
    iget-wide v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->initFinishTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 283
    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    iget-object v1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 292
    :catch_0
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 295
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
