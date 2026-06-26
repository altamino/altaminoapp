.class Lcom/narvii/chat/input/ChatInputFragment$17;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputFragment;
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

    .line 1159
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1162
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    if-nez v0, :cond_0

    return-void

    .line 1165
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1166
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    goto :goto_1

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getLatestSendElapse()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x3e8

    sub-long/2addr v6, v4

    .line 1170
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2400(Lcom/narvii/chat/input/ChatInputFragment;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_3

    .line 1172
    invoke-static {p0, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1173
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    goto :goto_1

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$2300(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    :goto_1
    return-void
.end method
