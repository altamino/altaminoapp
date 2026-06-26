.class public Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;
.super Ljava/lang/Object;
.source "DancerTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private paramsF:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/GestureDetector;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->windowManager:Landroid/view/WindowManager;

    .line 25
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 26
    iput-object p3, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->paramsF:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 43
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->paramsF:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->paramsF:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->paramsF:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialX:I

    .line 35
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialY:I

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialTouchX:F

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;->initialTouchY:F

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
