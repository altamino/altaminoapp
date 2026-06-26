.class Lcom/narvii/monetization/bubble/BubbleViewContainer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BubbleViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleViewContainer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleViewContainer;->doubleClickListener:Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;->onDoubleClicked()V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->access$002(Lcom/narvii/monetization/bubble/BubbleViewContainer;Z)Z

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
