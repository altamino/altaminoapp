.class Lcom/narvii/chat/input/ChatThreadCheckFragment$2;
.super Ljava/lang/Object;
.source "ChatThreadCheckFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatThreadCheckFragment;->requestToJoinChannel(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    new-instance v0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$2$DGtyu3047ET0tAjLvqVglmqRpJE;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$2$DGtyu3047ET0tAjLvqVglmqRpJE;-><init>(Lcom/narvii/chat/input/ChatThreadCheckFragment$2;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkThreadAvailable(ZLcom/narvii/util/Callback;)Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$call$0$ChatThreadCheckFragment$2(Ljava/lang/Boolean;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$2;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$100(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V

    return-void
.end method
