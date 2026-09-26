.class Lcom/narvii/crop/GestureCropImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/crop/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/crop/GestureCropImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/crop/GestureCropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/crop/GestureCropImageView$GestureListener;-><init>(Lcom/narvii/crop/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/crop/GestureCropImageView;->getDoubleTapTargetScale()F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v3

    .line 15
    .line 16
    const-wide/16 v4, 0xc8

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/crop/CropImageView;->zoomImageToPosition(FFFJ)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 3
    neg-float p2, p3

    .line 4
    neg-float p3, p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
