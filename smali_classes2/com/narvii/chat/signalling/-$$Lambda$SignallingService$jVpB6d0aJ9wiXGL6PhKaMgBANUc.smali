.class public final synthetic Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/signalling/SignallingService;

.field private final synthetic f$1:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;->f$0:Lcom/narvii/chat/signalling/SignallingService;

    iput-object p2, p0, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;->f$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/signalling/SignallingService;->lambda$respUpdateChannelType$0$SignallingService(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
