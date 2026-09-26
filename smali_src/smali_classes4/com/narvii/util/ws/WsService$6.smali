.class Lcom/narvii/util/ws/WsService$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$6;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ws/WsService$6;->val$req:Lcom/narvii/util/ws/WsRequest;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$6;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$6;->val$req:Lcom/narvii/util/ws/WsRequest;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 8
    return-void
.end method
