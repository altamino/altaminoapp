.class Lcom/narvii/services/AppLogEventServiceProvider$3;
.super Ljava/lang/Object;
.source "AppLogEventServiceProvider.java"

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

    .line 112
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/narvii/services/AppLogEventServiceProvider$3;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    iget-object v1, v1, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "fail to get idfa"

    .line 119
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 124
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :catch_0
    new-instance v2, Lcom/narvii/services/AppLogEventServiceProvider$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/services/AppLogEventServiceProvider$3$1;-><init>(Lcom/narvii/services/AppLogEventServiceProvider$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
