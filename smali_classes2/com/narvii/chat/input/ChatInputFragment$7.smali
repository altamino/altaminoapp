.class Lcom/narvii/chat/input/ChatInputFragment$7;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 498
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1400(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1400(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1500(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1500(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1500(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method
