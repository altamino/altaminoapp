.class Lcom/narvii/chat/input/ChatInputFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->O(Lcom/narvii/chat/input/ChatInputFragment;Z)V

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->B(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 4
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->W(Lcom/narvii/chat/input/ChatInputFragment;)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->updateRightView(Z)V

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->updateBackground()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 7
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->t(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputOptionMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/narvii/chat/input/ChatInputFragment;->checkDismissMaskShown(Z)V

    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 9
    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputFragment;->J(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/util/statistics/TmpValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;

    if-eqz v1, :cond_5

    .line 10
    iget-object v2, v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v2, :cond_3

    .line 11
    iget-boolean v2, v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->openKeyboard:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 12
    iget-object v0, v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->showPanel(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 13
    iget-object p1, v1, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 14
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->Y(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->x(Lcom/narvii/chat/input/ChatInputFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputFragment;->Y(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$6;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 16
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$6;->call(Ljava/lang/Boolean;)V

    return-void
.end method
