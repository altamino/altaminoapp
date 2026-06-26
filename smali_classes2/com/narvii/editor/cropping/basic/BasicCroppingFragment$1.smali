.class Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;
.super Ljava/lang/Object;
.source "BasicCroppingFragment.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 356
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 357
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-static {v0, p1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$000(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$102(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .line 369
    new-instance p1, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1$1;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
