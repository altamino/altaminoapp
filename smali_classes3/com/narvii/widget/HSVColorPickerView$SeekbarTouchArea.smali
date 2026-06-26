.class Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;
.super Ljava/lang/Object;
.source "HSVColorPickerView.java"

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

    .line 209
    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/HSVColorPickerView$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 215
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 220
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 227
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    .line 227
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
