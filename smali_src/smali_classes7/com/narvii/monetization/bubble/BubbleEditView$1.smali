.class Lcom/narvii/monetization/bubble/BubbleEditView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;->onCancelEdit()V

    .line 10
    :cond_0
    return-void
.end method
