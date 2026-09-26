.class Lcom/narvii/chat/input/ChatInputFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

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
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$8$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$8;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment$8;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->I(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->correctScrollTab()V

    .line 22
    :cond_0
    return-void
.end method
