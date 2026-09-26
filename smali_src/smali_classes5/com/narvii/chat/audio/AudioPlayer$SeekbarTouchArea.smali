.class Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarTouchArea"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/audio/AudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/chat/audio/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;-><init>(Lcom/narvii/chat/audio/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    .line 30
    cmpg-float p1, v0, p1

    .line 31
    .line 32
    if-gtz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    move-result v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 48
    move-result v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    move-result v6

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 56
    move-result v7

    .line 57
    .line 58
    .line 59
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;->this$0:Lcom/narvii/chat/audio/AudioPlayer;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    return p1
.end method
