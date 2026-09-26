.class Lcom/narvii/services/AppLogEventServiceProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/AppLogEventServiceProvider;->logIDFA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/AppLogEventServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/AppLogEventServiceProvider;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    .line 17
    const-string v2, "fail to get idfa"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    move-object v1, v0

    .line 22
    .line 23
    :goto_0
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move-object v1, v0

    .line 30
    .line 31
    .line 32
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    const-string v3, "android_id"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    :catch_0
    new-instance v2, Lcom/narvii/services/AppLogEventServiceProvider$3$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/services/AppLogEventServiceProvider$3$1;-><init>(Lcom/narvii/services/AppLogEventServiceProvider$3;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
