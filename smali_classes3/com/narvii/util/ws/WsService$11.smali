.class Lcom/narvii/util/ws/WsService$11;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService;->dispatchWsError(Lcom/narvii/util/ws/WsError;)V
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
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;

.field final synthetic val$err:Lcom/narvii/util/ws/WsError;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$11;->this$0:Lcom/narvii/util/ws/WsService;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$11;->val$err:Lcom/narvii/util/ws/WsError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$11;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$11;->val$err:Lcom/narvii/util/ws/WsError;

    invoke-interface {p1, v0, v1}, Lcom/narvii/util/ws/WsService$WsListener;->onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 747
    check-cast p1, Lcom/narvii/util/ws/WsService$WsListener;

    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$11;->call(Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method
