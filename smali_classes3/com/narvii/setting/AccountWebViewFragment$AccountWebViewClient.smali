.class Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;
.super Lcom/narvii/webview/WebViewFragment$MyWebViewClient;
.source "AccountWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/setting/AccountWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/setting/AccountWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/setting/AccountWebViewFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-direct {p0, p1}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;-><init>(Lcom/narvii/webview/WebViewFragment;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Delete Account"

    const-string v1, "accountVerified"

    const-string v2, "amino-bridge://"

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateSecret"

    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "secret"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1, v3}, Lcom/narvii/setting/AccountWebViewFragment;->updateSecret(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v3, "cleanCookie"

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    const-string v1, "host"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/setting/AccountWebViewFragment;->cleanCookie(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "emailActivated"

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-static {p1}, Lcom/narvii/setting/AccountWebViewFragment;->access$000(Lcom/narvii/setting/AccountWebViewFragment;)V

    goto :goto_0

    :cond_2
    const-string p1, "accountDeleted"

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    new-instance p1, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;

    invoke-direct {p1, p0}, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient$1;-><init>(Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    const-string p1, "communityDeleted"

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/setting/AccountWebViewFragment;->communityDelete()V

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/setting/AccountWebViewFragment$AccountWebViewClient;->this$0:Lcom/narvii/setting/AccountWebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to process url callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 150
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment$MyWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
