.class Lcom/narvii/widget/SpinDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/SpinDrawable$1;->val$index:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/SpinDrawable$1;->val$index:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    .line 18
    aput p1, v0, v1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/widget/SpinDrawable$1;->this$0:Lcom/narvii/widget/SpinDrawable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 24
    return-void
.end method
