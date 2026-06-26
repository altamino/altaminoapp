.class Lcom/narvii/widget/SpinDrawable$1;
.super Ljava/lang/Object;
.source "SpinDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SpinDrawable;->getAnimations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SpinDrawable;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/SpinDrawable;I)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    iput p2, p0, Lcom/narvii/widget/SpinDrawable$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    iget-object v0, v0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    iget v1, p0, Lcom/narvii/widget/SpinDrawable$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 146
    iget-object p1, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
