.class public Lcom/narvii/util/AccountWebUtils;
.super Ljava/lang/Object;
.source "AccountWebUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openForgetPasswordPage(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 29
    const-class v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1}, Lcom/narvii/util/AccountWebHelper;->getForgetPasswordUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :try_start_0
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    const-string v0, "logging"

    .line 36
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/logging/LoggingService;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ForgotPasswordStarting"

    .line 37
    invoke-interface {p0, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static openForgetPasswordPage(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    const-class v0, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/AccountWebHelper;->getForgetPasswordUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :try_start_0
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    const-string p1, "logging"

    .line 24
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/logging/LoggingService;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ForgotPasswordStarting"

    .line 25
    invoke-interface {p0, p2, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
