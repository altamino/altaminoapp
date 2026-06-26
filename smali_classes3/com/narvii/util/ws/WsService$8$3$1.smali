.class Lcom/narvii/util/ws/WsService$8$3$1;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/util/ws/WsService$8$3;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8$3;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$3$1;->this$2:Lcom/narvii/util/ws/WsService$8$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/User;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    .line 629
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$8$3$1;->this$2:Lcom/narvii/util/ws/WsService$8$3;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    sget-object v3, Lcom/narvii/util/ws/WsError;->CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

    invoke-virtual {p1, v3, v0}, Lcom/narvii/util/ws/WsService;->fail(Lcom/narvii/util/ws/WsError;Z)V

    .line 630
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$8$3$1;->this$2:Lcom/narvii/util/ws/WsService$8$3;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iput-wide v1, p1, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$8$3$1;->this$2:Lcom/narvii/util/ws/WsService$8$3;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iput-wide v1, p1, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 633
    iget-object v1, p1, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 625
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8$3$1;->call(Lcom/narvii/model/User;)V

    return-void
.end method
