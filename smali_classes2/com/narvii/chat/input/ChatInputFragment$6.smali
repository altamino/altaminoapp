.class Lcom/narvii/chat/input/ChatInputFragment$6;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->access$802(Lcom/narvii/chat/input/ChatInputFragment;Z)Z

    .line 461
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$200(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$500(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    .line 465
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    .line 466
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1100(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 468
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1200(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/util/statistics/TmpValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    if-eqz v0, :cond_5

    .line 471
    iget-object v1, v0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    .line 476
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_3

    iget-boolean v1, v0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->openKeyboard:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 477
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->showPanel(Landroid/view/View;)V

    goto :goto_0

    .line 478
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_4

    .line 479
    iget-object p1, v0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 481
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1300(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    .line 472
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$800(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1300(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    .line 473
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 457
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$6;->call(Ljava/lang/Boolean;)V

    return-void
.end method
