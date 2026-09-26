.class Lcom/narvii/chat/input/ChatInputFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBeyondMaxDuration()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->K(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportRecordingEnd()V

    .line 10
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$11;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->K(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportRecordingStart()V

    .line 10
    return-void
.end method
