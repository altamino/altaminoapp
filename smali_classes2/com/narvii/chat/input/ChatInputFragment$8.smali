.class Lcom/narvii/chat/input/ChatInputFragment$8;
.super Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;
.source "ChatInputFragment.java"


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

    .line 525
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelHide()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1400(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    .line 529
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPanelShow()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 539
    :cond_0
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$8$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$8$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$8;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
