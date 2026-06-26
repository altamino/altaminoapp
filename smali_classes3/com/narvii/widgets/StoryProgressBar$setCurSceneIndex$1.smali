.class final Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;
.super Ljava/lang/Object;
.source "StoryProgressBar.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/widgets/StoryProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const-string v1, "animation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v3, 0x410ccccd    # 8.8f

    mul-float v1, v1, v3

    const v3, 0x3f99999a    # 1.2f

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 124
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 125
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 124
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
