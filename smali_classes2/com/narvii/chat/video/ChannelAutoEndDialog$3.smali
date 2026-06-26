.class Lcom/narvii/chat/video/ChannelAutoEndDialog$3;
.super Ljava/lang/Object;
.source "ChannelAutoEndDialog.java"

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

    .line 78
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->access$010(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->access$000(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->access$002(Lcom/narvii/chat/video/ChannelAutoEndDialog;I)I

    .line 84
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    iget-object v0, v0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;->onChannelEndClicked()V

    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-static {v0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->access$200(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-static {v1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->access$100(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x3e8

    .line 90
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
