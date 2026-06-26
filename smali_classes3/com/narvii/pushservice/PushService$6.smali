.class Lcom/narvii/pushservice/PushService$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushService;

.field final synthetic val$bind:Ljava/lang/String;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$equals:Z

.field final synthetic val$gcmToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushService;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$6;->this$0:Lcom/narvii/pushservice/PushService;

    iput-object p3, p0, Lcom/narvii/pushservice/PushService$6;->val$bind:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/pushservice/PushService$6;->val$callback:Lcom/narvii/util/Callback;

    iput-boolean p5, p0, Lcom/narvii/pushservice/PushService$6;->val$equals:Z

    iput-object p6, p0, Lcom/narvii/pushservice/PushService$6;->val$gcmToken:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to reg gcm token ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "narvii_push"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 462
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string p3, "changed"

    .line 463
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "bind"

    .line 464
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$6;->val$gcmToken:Ljava/lang/String;

    const-string p3, "gcmToken"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "narvii_push"

    const-string p2, "gcm token reged on server"

    .line 445
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$6;->this$0:Lcom/narvii/pushservice/PushService;

    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->access$300(Lcom/narvii/pushservice/PushService;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/pushservice/PushService$6;->val$bind:Ljava/lang/String;

    const-string v0, "lastBind"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 448
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 449
    iget-boolean p2, p0, Lcom/narvii/pushservice/PushService$6;->val$equals:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const-string v1, "changed"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "bind"

    .line 450
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$6;->val$gcmToken:Ljava/lang/String;

    const-string v0, "gcmToken"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
