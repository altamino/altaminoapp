.class public final synthetic Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/-$$Lambda$ChatInputFragment$ghKAJHg_IRDxtRBqqJhC2b0L5TI;->f$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->lambda$onReplybyLongClick$2$ChatInputFragment()V

    return-void
.end method
