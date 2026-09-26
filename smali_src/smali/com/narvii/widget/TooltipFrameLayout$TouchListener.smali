.class Lcom/narvii/widget/TooltipFrameLayout$TouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TooltipFrameLayout;Lcom/narvii/widget/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;-><init>(Lcom/narvii/widget/TooltipFrameLayout;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result v0

    .line 35
    .line 36
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 37
    add-int/2addr v0, v1

    .line 38
    .line 39
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    move-result v0

    .line 46
    .line 47
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 48
    add-int/2addr v0, v1

    .line 49
    .line 50
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 54
    move-result v0

    .line 55
    float-to-int v0, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result v1

    .line 60
    float-to-int v1, v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_1
    const/4 p1, 0x0

    .line 77
    return p1
.end method
