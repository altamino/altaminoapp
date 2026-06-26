.class Lcom/narvii/chat/signalling/SignallingService$20;
.super Ljava/lang/Object;
.source "SignallingService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/signalling/SignallingListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;

.field final synthetic val$err:Lcom/narvii/util/ws/WsError;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$20;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingService$20;->val$err:Lcom/narvii/util/ws/WsError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$20;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$20;->val$err:Lcom/narvii/util/ws/WsError;

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/signalling/SignallingListener;->onError(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 757
    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService$20;->call(Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
