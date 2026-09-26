.class Lcom/narvii/pushservice/PushService$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$5;->this$0:Lcom/narvii/pushservice/PushService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/pushservice/PushService$5;->val$bind:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/pushservice/PushService$5;->val$equals:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/pushservice/PushService$5;->val$gcmToken:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
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

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p3, "fail to reg gcm token ("

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, ")"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string p2, "narvii_push"

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    const-string p2, "changed"

    .line 39
    const/4 p3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    const-string p2, "bind"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    const-string p2, "gcmToken"

    .line 50
    .line 51
    iget-object p3, p0, Lcom/narvii/pushservice/PushService$5;->val$gcmToken:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 60
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

    .line 1
    .line 2
    const-string p1, "narvii_push"

    .line 3
    .line 4
    const-string p2, "gcm token reged on server"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$5;->this$0:Lcom/narvii/pushservice/PushService;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->e(Lcom/narvii/pushservice/PushService;)Landroid/content/SharedPreferences;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "lastBind"

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/pushservice/PushService$5;->val$bind:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    iget-boolean p2, p0, Lcom/narvii/pushservice/PushService$5;->val$equals:Z

    .line 40
    const/4 v0, 0x1

    .line 41
    xor-int/2addr p2, v0

    .line 42
    .line 43
    const-string v1, "changed"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    const-string p2, "bind"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    const-string p2, "gcmToken"

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/pushservice/PushService$5;->val$gcmToken:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method
