.class public Lcom/codemonkeylabs/fpslibrary/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->windowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->gestureDetector:Landroid/view/GestureDetector;

    .line 10
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->gestureDetector:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialX:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 23
    move-result v2

    .line 24
    .line 25
    iget v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialTouchX:F

    .line 26
    sub-float/2addr v2, v3

    .line 27
    float-to-int v2, v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialY:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    move-result p2

    .line 39
    .line 40
    iget v2, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialTouchY:F

    .line 41
    sub-float/2addr p2, v2

    .line 42
    float-to-int p2, p2

    .line 43
    add-int/2addr v1, p2

    .line 44
    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 46
    .line 47
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->windowManager:Landroid/view/WindowManager;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->paramsF:Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 58
    .line 59
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialX:I

    .line 60
    .line 61
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 62
    .line 63
    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialY:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 67
    move-result p1

    .line 68
    .line 69
    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialTouchX:F

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 73
    move-result p1

    .line 74
    .line 75
    iput p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/a;->initialTouchY:F

    .line 76
    :goto_0
    const/4 p1, 0x0

    .line 77
    return p1
.end method
