.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarTouchArea"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 170
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 173
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 178
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    move v6, p1

    goto :goto_0

    :cond_2
    move v6, v0

    .line 185
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    .line 185
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v0
.end method
