.class Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/HSVColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarTouchArea"
.end annotation


# instance fields
.field private seekBar:Landroid/widget/SeekBar;

.field final synthetic this$0:Lcom/narvii/widget/HSVColorPickerView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    .line 2
    new-instance p1, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v0

    .line 15
    .line 16
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x32

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-ltz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 27
    move-result v0

    .line 28
    .line 29
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x32

    .line 32
    int-to-float v1, v1

    .line 33
    .line 34
    cmpg-float v0, v0, v1

    .line 35
    .line 36
    if-gtz v0, :cond_2

    .line 37
    .line 38
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 42
    move-result v1

    .line 43
    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 45
    add-int/2addr v0, v1

    .line 46
    int-to-float v7, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 50
    move-result v0

    .line 51
    .line 52
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 53
    int-to-float v1, v1

    .line 54
    sub-float/2addr v0, v1

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    cmpg-float v2, v0, v1

    .line 58
    .line 59
    if-gez v2, :cond_0

    .line 60
    move v6, v1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    .line 68
    cmpl-float v1, v0, v1

    .line 69
    .line 70
    if-lez v1, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 74
    move-result p1

    .line 75
    int-to-float p1, p1

    .line 76
    move v6, p1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v6, v0

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 82
    move-result-wide v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 86
    move-result-wide v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 90
    move-result v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 94
    move-result v8

    .line 95
    .line 96
    .line 97
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    move-result p1

    .line 105
    return p1

    .line 106
    :cond_2
    const/4 p1, 0x0

    .line 107
    return p1
.end method
