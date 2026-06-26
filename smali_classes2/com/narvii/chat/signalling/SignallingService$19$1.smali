.class Lcom/narvii/chat/signalling/SignallingService$19$1;
.super Ljava/lang/Object;
.source "SignallingService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService$19;->run()V
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
.field final synthetic this$1:Lcom/narvii/chat/signalling/SignallingService$19;

.field final synthetic val$c:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService$19;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$19$1;->this$1:Lcom/narvii/chat/signalling/SignallingService$19;

    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingService$19$1;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$19$1;->this$1:Lcom/narvii/chat/signalling/SignallingService$19;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$19$1;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingListener;->onChannelListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 745
    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService$19$1;->call(Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
