.class Lcom/narvii/chat/input/ChatInputFragment$8$1;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment$8;->onPanelShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/input/ChatInputFragment$8;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment$8;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$1600(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->correctScrollTab()V

    :cond_0
    return-void
.end method
