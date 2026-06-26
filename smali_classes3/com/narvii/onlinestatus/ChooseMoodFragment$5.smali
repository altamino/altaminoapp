.class Lcom/narvii/onlinestatus/ChooseMoodFragment$5;
.super Ljava/lang/Object;
.source "ChooseMoodFragment.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


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

    .line 211
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    .line 215
    iput-object p1, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 216
    iput-object p2, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 217
    invoke-static {v0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$100(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 218
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$300(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/widget/MoodView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/MoodView;->shakeCrazily()V

    .line 219
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
