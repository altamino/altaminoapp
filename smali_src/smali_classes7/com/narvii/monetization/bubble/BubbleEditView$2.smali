.class Lcom/narvii/monetization/bubble/BubbleEditView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDeleteClicked(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0d2b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/SlotPoint;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->f(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->c(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onSlotDeleted(Lcom/narvii/model/SlotPoint;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onSlotSelected(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0d2b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/SlotPoint;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->f(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->c(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onSlotSelected(Lcom/narvii/model/SlotPoint;)V

    .line 28
    :cond_0
    return-void
.end method
