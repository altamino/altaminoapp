.class Lcom/narvii/chat/signalling/SignallingService$10$1;
.super Ljava/lang/Object;
.source "SignallingService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingService$10;->call(Ljava/lang/Object;)V
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
.field final synthetic this$1:Lcom/narvii/chat/signalling/SignallingService$10;

.field final synthetic val$c:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$oldlist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService$10;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/List;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->this$1:Lcom/narvii/chat/signalling/SignallingService$10;

    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p3, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->val$oldlist:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->this$1:Lcom/narvii/chat/signalling/SignallingService$10;

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingService$10;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->val$c:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$10$1;->val$oldlist:Ljava/util/List;

    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/narvii/chat/signalling/SignallingListener;->onUserListChanged(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 507
    check-cast p1, Lcom/narvii/chat/signalling/SignallingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService$10$1;->call(Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method
