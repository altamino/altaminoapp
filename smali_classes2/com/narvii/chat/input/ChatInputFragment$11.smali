.class Lcom/narvii/chat/input/ChatInputFragment$11;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/chat/RecordInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeyondMaxDuration()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportRecordingEnd()V

    return-void
.end method

.method public onBeyondMaxOver()V
    .locals 0

    return-void
.end method

.method public onMessageTooShort()V
    .locals 0

    return-void
.end method

.method public onRecordCancel()V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 0

    return-void
.end method

.method public onRecordStart(J)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$1000(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportRecordingStart()V

    return-void
.end method
