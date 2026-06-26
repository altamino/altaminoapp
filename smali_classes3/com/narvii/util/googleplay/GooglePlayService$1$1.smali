.class Lcom/narvii/util/googleplay/GooglePlayService$1$1;
.super Ljava/lang/Object;
.source "GooglePlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/googleplay/GooglePlayService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/googleplay/GooglePlayService$1;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    iput-object p2, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    iget-object v0, v0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-static {v0}, Lcom/narvii/util/googleplay/GooglePlayService;->access$000(Lcom/narvii/util/googleplay/GooglePlayService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->val$version:Ljava/lang/String;

    const-string v2, "latestGooglePlayVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    iget-object v0, v0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-static {v0}, Lcom/narvii/util/googleplay/GooglePlayService;->access$100(Lcom/narvii/util/googleplay/GooglePlayService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
