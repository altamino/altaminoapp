.class Lcom/narvii/crop/GestureCropImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureCropImageView.java"


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

    .line 135
    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/GestureCropImageView$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/narvii/crop/GestureCropImageView$ScaleListener;-><init>(Lcom/narvii/crop/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget-object v1, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-static {v1}, Lcom/narvii/crop/GestureCropImageView;->access$200(Lcom/narvii/crop/GestureCropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/narvii/crop/GestureCropImageView$ScaleListener;->this$0:Lcom/narvii/crop/GestureCropImageView;

    invoke-static {v2}, Lcom/narvii/crop/GestureCropImageView;->access$300(Lcom/narvii/crop/GestureCropImageView;)F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    const/4 p1, 0x1

    return p1
.end method
