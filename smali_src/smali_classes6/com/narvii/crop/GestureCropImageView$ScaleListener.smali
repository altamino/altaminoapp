.class Lcom/narvii/crop/GestureCropImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/crop/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/crop/GestureCropImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/crop/GestureCropImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 2
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/crop/GestureCropImageView$ScaleListener;-><init>(Lcom/narvii/crop/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/crop/GestureCropImageView;->d(Lcom/narvii/crop/GestureCropImageView;)F

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/narvii/crop/GestureCropImageView;->e(Lcom/narvii/crop/GestureCropImageView;)F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method
