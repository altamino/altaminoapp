.class public final Lcom/narvii/chat/input/EditKeyboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fragment:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/EditKeyboard;->fragment:Lcom/narvii/chat/input/ChatInputFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/EditKeyboard;->fragment:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->showChatInputLayout()V

    return-void
.end method