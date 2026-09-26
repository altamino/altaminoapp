.class Lcom/narvii/chat/signalling/SignallingService$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService;->onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
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

.field final synthetic val$c:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$13;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingService$13;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/signalling/SignallingService$13;->val$reason:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$13;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$13;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v2, p0, Lcom/narvii/chat/signalling/SignallingService$13;->val$reason:I

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingListener;->onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService$13;->call(Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
