.class Lcom/narvii/pushservice/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushService;->dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushService;

.field final synthetic val$payload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushService;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$2;->this$0:Lcom/narvii/pushservice/PushService;

    iput-object p2, p0, Lcom/narvii/pushservice/PushService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/pushservice/PushService$2;->this$0:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/pushservice/PushService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method
