.class Lcom/narvii/util/AccountWebHelper$1;
.super Ljava/lang/Thread;
.source "AccountWebHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/AccountWebHelper;->getDeleteAccountUrl(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/AccountWebHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/util/AccountWebHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/util/AccountWebHelper$1;->this$0:Lcom/narvii/util/AccountWebHelper;

    iput-object p2, p0, Lcom/narvii/util/AccountWebHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/narvii/util/AccountWebHelper$1;->this$0:Lcom/narvii/util/AccountWebHelper;

    iget-object v2, v2, Lcom/narvii/util/AccountWebHelper;->hashMap:Ljava/util/HashMap;

    const-string v3, "idfa"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :try_start_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :catch_1
    iget-object v1, p0, Lcom/narvii/util/AccountWebHelper$1;->this$0:Lcom/narvii/util/AccountWebHelper;

    iget-object v1, v1, Lcom/narvii/util/AccountWebHelper;->hashMap:Ljava/util/HashMap;

    const-string v2, "androidid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/narvii/util/AccountWebHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delete-account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/AccountWebHelper$1;->this$0:Lcom/narvii/util/AccountWebHelper;

    iget-object v1, v1, Lcom/narvii/util/AccountWebHelper;->hashMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/narvii/util/Utils;->getUrlParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/narvii/util/AccountWebHelper$1$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/util/AccountWebHelper$1$1;-><init>(Lcom/narvii/util/AccountWebHelper$1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
