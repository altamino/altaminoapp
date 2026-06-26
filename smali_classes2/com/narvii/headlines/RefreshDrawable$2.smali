.class Lcom/narvii/headlines/RefreshDrawable$2;
.super Ljava/lang/Object;
.source "RefreshDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/RefreshDrawable;->setBackProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/RefreshDrawable;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/RefreshDrawable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/headlines/RefreshDrawable$2;->this$0:Lcom/narvii/headlines/RefreshDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable$2;->this$0:Lcom/narvii/headlines/RefreshDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/headlines/RefreshDrawable;->access$002(Lcom/narvii/headlines/RefreshDrawable;F)F

    .line 152
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable$2;->this$0:Lcom/narvii/headlines/RefreshDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
