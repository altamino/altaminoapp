.class Lcom/narvii/onlinestatus/ChooseMoodFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->q(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->o(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->o(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    .line 37
    :cond_0
    return-void
.end method
