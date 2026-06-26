.class Lcom/narvii/list/refresh/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/refresh/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 434
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 435
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 436
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    iget-boolean v1, v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 439
    iput-boolean v1, v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v2, 0x534

    .line 440
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->access$400(Lcom/narvii/list/refresh/MaterialProgressDrawable;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->access$402(Lcom/narvii/list/refresh/MaterialProgressDrawable;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->access$402(Lcom/narvii/list/refresh/MaterialProgressDrawable;F)F

    return-void
.end method
