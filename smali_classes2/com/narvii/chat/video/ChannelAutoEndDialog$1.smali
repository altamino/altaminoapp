.class Lcom/narvii/chat/video/ChannelAutoEndDialog$1;
.super Ljava/lang/Object;
.source "ChannelAutoEndDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/ChannelAutoEndDialog;-><init>(Landroid/content/Context;)V
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

    .line 45
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    iget-object p1, p1, Lcom/narvii/chat/video/ChannelAutoEndDialog;->channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;->onChannelEndClicked()V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;->this$0:Lcom/narvii/chat/video/ChannelAutoEndDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->dismiss()V

    return-void
.end method
