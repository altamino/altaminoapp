.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s;
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

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$tUPiCWLQJXQRZW1vq7MkprUWU4s;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$requestToJoinChannel$0$ChatThreadCheckFragment(Ljava/lang/Boolean;)V

    return-void
.end method
