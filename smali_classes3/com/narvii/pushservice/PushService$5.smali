.class Lcom/narvii/pushservice/PushService$5;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushService;->updateGcmToken(ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/iid/InstanceIdResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$mayExpire:Z

.field final synthetic val$revokeToken:Z


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushService;ZZLcom/narvii/util/Callback;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$5;->this$0:Lcom/narvii/pushservice/PushService;

    iput-boolean p2, p0, Lcom/narvii/pushservice/PushService$5;->val$revokeToken:Z

    iput-boolean p3, p0, Lcom/narvii/pushservice/PushService$5;->val$mayExpire:Z

    iput-object p4, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "narvii_push"

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fcm register: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "fail to register fcm"

    invoke-static {v1, v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushService$5;->this$0:Lcom/narvii/pushservice/PushService;

    iget-boolean v1, p0, Lcom/narvii/pushservice/PushService$5;->val$revokeToken:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/pushservice/PushService$5;->val$mayExpire:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/narvii/pushservice/PushService$5;->val$callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/pushservice/PushService;->setGcmToken(Ljava/lang/String;ZLcom/narvii/util/Callback;)V

    return-void
.end method
