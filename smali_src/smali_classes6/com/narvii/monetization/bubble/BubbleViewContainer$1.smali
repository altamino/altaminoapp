.class Lcom/narvii/monetization/bubble/BubbleViewContainer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleViewContainer;->doubleClickListener:Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;->onDoubleClicked()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->a(Lcom/narvii/monetization/bubble/BubbleViewContainer;Z)V

    .line 16
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;->this$0:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
