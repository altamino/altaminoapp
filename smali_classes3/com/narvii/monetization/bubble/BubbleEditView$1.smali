.class Lcom/narvii/monetization/bubble/BubbleEditView$1;
.super Ljava/lang/Object;
.source "BubbleEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditView;->onFinishInflate()V
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

    .line 90
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onCancelEdit()V

    :cond_0
    return-void
.end method
