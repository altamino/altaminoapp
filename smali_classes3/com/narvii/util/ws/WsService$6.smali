.class Lcom/narvii/util/ws/WsService$6;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;

.field final synthetic val$req:Lcom/narvii/util/ws/WsRequest;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsRequest;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$6;->this$0:Lcom/narvii/util/ws/WsService;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$6;->val$req:Lcom/narvii/util/ws/WsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$6;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$6;->val$req:Lcom/narvii/util/ws/WsRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method
