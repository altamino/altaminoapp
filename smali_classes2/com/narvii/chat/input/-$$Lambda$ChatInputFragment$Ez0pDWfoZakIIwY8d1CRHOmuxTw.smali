.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatInputFragment;

.field private final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$Ez0pDWfoZakIIwY8d1CRHOmuxTw;->f$1:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$updateReplyMainView$0$ChatInputFragment(Ljava/lang/Boolean;)V

    return-void
.end method
