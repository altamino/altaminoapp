.class Lcom/narvii/util/ws/WsService$8$2$1;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/ws/WsService$WsListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/util/ws/WsService$8$2;

.field final synthetic val$msg:Lcom/narvii/util/ws/WsMessage;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8$2;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$2$1;->this$2:Lcom/narvii/util/ws/WsService$8$2;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$2$1;->val$msg:Lcom/narvii/util/ws/WsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2$1;->this$2:Lcom/narvii/util/ws/WsService$8$2;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2$1;->val$msg:Lcom/narvii/util/ws/WsMessage;

    invoke-interface {p1, v0, v1}, Lcom/narvii/util/ws/WsService$WsListener;->onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 555
    check-cast p1, Lcom/narvii/util/ws/WsService$WsListener;

    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8$2$1;->call(Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method
