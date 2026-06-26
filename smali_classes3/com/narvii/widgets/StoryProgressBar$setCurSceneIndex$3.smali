.class public final Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;
.super Ljava/lang/Object;
.source "StoryProgressBar.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isGotoNextOne:Z

.field final synthetic this$0:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/widgets/StoryProgressBar;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    iput-boolean p2, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->$isGotoNextOne:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$isPaused$p(Lcom/narvii/widgets/StoryProgressBar;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setStartScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 168
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    iget-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->$isGotoNextOne:Z

    if-eqz v0, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    const v0, -0x43dc28f6    # -0.01f

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 169
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
