.class Lcom/narvii/chat/input/ChatInputFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->E(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    move-wide v4, v2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getLatestSendElapse()J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    :goto_0
    const-wide/16 v6, 0x3e8

    .line 54
    sub-long/2addr v6, v4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->q(Lcom/narvii/chat/input/ChatInputFragment;)J

    .line 60
    move-result-wide v8

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    move-result-wide v10

    .line 65
    sub-long/2addr v8, v10

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 69
    move-result-wide v6

    .line 70
    .line 71
    cmp-long v0, v6, v2

    .line 72
    .line 73
    if-lez v0, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->E(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$17;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->E(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setEnabled(Z)V

    .line 97
    :goto_1
    return-void
.end method
