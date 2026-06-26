.class Lcom/narvii/util/ws/WsService$9;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService;->dispatchOnConnect()V
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


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$9;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$9;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-interface {p1, v0}, Lcom/narvii/util/ws/WsService$WsListener;->onConnect(Lcom/narvii/util/ws/WsService;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 725
    check-cast p1, Lcom/narvii/util/ws/WsService$WsListener;

    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$9;->call(Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method
