.class Lcom/narvii/chat/input/ChatInputFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

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
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->H(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->H(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$7;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
