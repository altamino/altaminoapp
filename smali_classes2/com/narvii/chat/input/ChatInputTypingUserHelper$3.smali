.class Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;
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

    .line 118
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$500(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$500(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingEnd()V

    :cond_0
    return-void
.end method
