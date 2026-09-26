.class Lcom/narvii/util/crashlytics/CrashlyticsUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    sget-boolean p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->ENABLED:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->a()Ljava/lang/Runnable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 12
    :cond_0
    return-void
.end method
