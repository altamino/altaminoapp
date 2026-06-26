.class Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;
.super Ljava/lang/Object;
.source "ChatInputTypingUserHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputTypingUserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    return-void
.end method
