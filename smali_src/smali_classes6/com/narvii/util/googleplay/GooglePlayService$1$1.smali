.class Lcom/narvii/util/googleplay/GooglePlayService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->val$version:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/googleplay/GooglePlayService;->b(Lcom/narvii/util/googleplay/GooglePlayService;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "latestGooglePlayVersion"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->val$version:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService$1$1;->this$1:Lcom/narvii/util/googleplay/GooglePlayService$1;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/googleplay/GooglePlayService;->a(Lcom/narvii/util/googleplay/GooglePlayService;)Lcom/narvii/app/NVContext;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Landroid/content/Intent;

    .line 42
    .line 43
    const-string v2, "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method
