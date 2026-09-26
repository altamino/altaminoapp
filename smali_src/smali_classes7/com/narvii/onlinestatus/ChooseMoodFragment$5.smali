.class Lcom/narvii/onlinestatus/ChooseMoodFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->changed:Z

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 8
    .line 9
    iput-object p2, v0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->q(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->n(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/widget/MoodView;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/widget/MoodView;->shakeCrazily()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 29
    return-void
.end method
