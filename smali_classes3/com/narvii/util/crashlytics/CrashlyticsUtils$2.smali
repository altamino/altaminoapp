.class final Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "CrashlyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 208
    sget-boolean p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    if-eqz p1, :cond_0

    const-string p1, "narvii"

    const-string p2, "account changed"

    .line 209
    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/BuglyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$100()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
