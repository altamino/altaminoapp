.class Lcom/narvii/widget/TooltipFrameLayout$TouchListener;
.super Ljava/lang/Object;
.source "TooltipFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TooltipFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TooltipFrameLayout;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TooltipFrameLayout;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TooltipFrameLayout;Lcom/narvii/widget/TooltipFrameLayout$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;-><init>(Lcom/narvii/widget/TooltipFrameLayout;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    iget-object p1, p1, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    iget-object v0, v0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 62
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    iget-object p1, p1, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
