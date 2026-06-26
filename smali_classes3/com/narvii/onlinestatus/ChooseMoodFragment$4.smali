.class Lcom/narvii/onlinestatus/ChooseMoodFragment$4;
.super Ljava/lang/Object;
.source "ChooseMoodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 191
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$100(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 192
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$400(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$400(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    :cond_0
    return-void
.end method
