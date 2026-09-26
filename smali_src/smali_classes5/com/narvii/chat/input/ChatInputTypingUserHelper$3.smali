.class Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->b(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->b(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    .line 34
    :cond_0
    return-void
.end method
