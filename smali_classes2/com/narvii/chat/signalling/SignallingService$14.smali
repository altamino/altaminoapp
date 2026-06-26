.class Lcom/narvii/chat/signalling/SignallingService$14;
.super Ljava/lang/Object;
.source "SignallingService.java"

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

.field final synthetic val$user:Lcom/narvii/chat/signalling/ChannelUser;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$14;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingService$14;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$14;->val$user:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$14;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$14;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$14;->val$user:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingListener;->onUserRoleChange(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 614
    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService$14;->call(Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
