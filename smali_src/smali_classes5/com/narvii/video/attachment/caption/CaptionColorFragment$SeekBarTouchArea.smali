.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionColorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarTouchArea"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    cmpl-float v0, v0, v1

    .line 28
    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    .line 40
    cmpg-float p1, v0, p1

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 50
    move-result-wide v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 54
    move-result v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 62
    move-result v6

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 66
    move-result v7

    .line 67
    .line 68
    .line 69
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 83
    return p1
.end method
