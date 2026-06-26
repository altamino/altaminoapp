.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field private final synthetic f$1:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;->f$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatThreadCheckFragment$mCy5ppvl9ZmIRBAlTrtQeYeFZOE;->f$1:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->lambda$requestToSpeak$2$ChatThreadCheckFragment(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/view/View;)V

    return-void
.end method
