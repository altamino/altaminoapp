.class Lcom/narvii/monetization/bubble/BubbleEditView$2;
.super Ljava/lang/Object;
.source "BubbleEditView.java"

# interfaces
.implements Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    const v1, 0x7f090a54

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SlotPoint;

    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$002(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/SlotPoint;

    .line 116
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$000(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onSlotDeleted(Lcom/narvii/model/SlotPoint;)V

    :cond_0
    return-void
.end method

.method public onSlotSelected(Landroid/view/View;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    const v1, 0x7f090a54

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SlotPoint;

    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$002(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/SlotPoint;

    .line 108
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$000(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onSlotSelected(Lcom/narvii/model/SlotPoint;)V

    :cond_0
    return-void
.end method
