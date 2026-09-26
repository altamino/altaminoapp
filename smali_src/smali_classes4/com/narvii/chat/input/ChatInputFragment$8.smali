.class Lcom/narvii/chat/input/ChatInputFragment$8;
.super Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPanelHide()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->H(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method public onPanelShow()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/narvii/chat/input/ChatInputFragment$8$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputFragment$8$1;-><init>(Lcom/narvii/chat/input/ChatInputFragment$8;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method
