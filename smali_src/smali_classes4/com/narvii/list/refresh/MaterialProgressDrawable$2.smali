.class Lcom/narvii/list/refresh/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 22
    .line 23
    iget-boolean v1, v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    iput-boolean v1, v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    .line 29
    .line 30
    const-wide/16 v2, 0x534

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->val$ring:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->a(Lcom/narvii/list/refresh/MaterialProgressDrawable;)F

    .line 43
    move-result p1

    .line 44
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    add-float/2addr p1, v1

    .line 47
    .line 48
    const/high16 v1, 0x40a00000    # 5.0f

    .line 49
    rem-float/2addr p1, v1

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->b(Lcom/narvii/list/refresh/MaterialProgressDrawable;F)V

    .line 53
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;->this$0:Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->b(Lcom/narvii/list/refresh/MaterialProgressDrawable;F)V

    .line 7
    return-void
.end method
