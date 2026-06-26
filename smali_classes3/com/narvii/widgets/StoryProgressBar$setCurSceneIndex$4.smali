.class final Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;
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
.field final synthetic $isGotoNextOne:Z

.field final synthetic this$0:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/widgets/StoryProgressBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    iput-boolean p2, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->$isGotoNextOne:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const-string v1, "animation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 174
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    iget-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->$isGotoNextOne:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    int-to-float v0, v0

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;)F

    move-result v1

    mul-float v0, v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 175
    iget-boolean p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->$isGotoNextOne:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const v0, -0x43dc28f6    # -0.01f

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 173
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
