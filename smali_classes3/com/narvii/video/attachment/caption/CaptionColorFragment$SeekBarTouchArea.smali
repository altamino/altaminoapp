.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;
.super Ljava/lang/Object;
.source "CaptionColorFragment.java"

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

    .line 46
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Lcom/narvii/video/attachment/caption/CaptionColorFragment$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;-><init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 49
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 50
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$SeekBarTouchArea;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {p2}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
