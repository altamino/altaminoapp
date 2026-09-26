.class Lcom/narvii/chat/video/ChannelAutoEndDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/ChannelAutoEndDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->a(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->c(Lcom/narvii/chat/video/ChannelAutoEndDialog;I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->a(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->c(Lcom/narvii/chat/video/ChannelAutoEndDialog;I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;->onChannelEndClicked()V

    .line 35
    :cond_0
    return-void

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->b(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/widget/TextView;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->d(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/text/SpannableStringBuilder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    const-wide/16 v0, 0x3e8

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 56
    return-void
.end method
