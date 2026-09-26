.class Lcom/narvii/pushservice/PushService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushService;->dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/pushservice/PushService$PushListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushService;

.field final synthetic val$payload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$4;->this$0:Lcom/narvii/pushservice/PushService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/pushservice/PushService$4;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/pushservice/PushService$4;->this$0:Lcom/narvii/pushservice/PushService;

    .line 2
    invoke-static {v0}, Lcom/narvii/pushservice/PushService;->b(Lcom/narvii/pushservice/PushService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/pushservice/PushService$4;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-interface {p1, v0}, Lcom/narvii/pushservice/PushService$PushListener;->onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/pushservice/PushService$4;->this$0:Lcom/narvii/pushservice/PushService;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/pushservice/PushService;->f(Lcom/narvii/pushservice/PushService;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushService$4;->call(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method
