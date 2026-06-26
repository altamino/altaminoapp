.class Lcom/narvii/crop/GestureCropImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureCropImageView.java"


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

    .line 144
    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/GestureCropImageView$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/narvii/crop/GestureCropImageView$GestureListener;-><init>(Lcom/narvii/crop/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-virtual {v0}, Lcom/narvii/crop/GestureCropImageView;->getDoubleTapTargetScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/crop/CropImageView;->zoomImageToPosition(FFFJ)V

    .line 149
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/narvii/crop/GestureCropImageView$GestureListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    neg-float p2, p3

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    const/4 p1, 0x1

    return p1
.end method
