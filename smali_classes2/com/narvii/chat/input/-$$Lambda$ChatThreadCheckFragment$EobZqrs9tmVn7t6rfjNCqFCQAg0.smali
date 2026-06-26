.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$EobZqrs9tmVn7t6rfjNCqFCQAg0;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$sendWaitListJoinRequest$3$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
