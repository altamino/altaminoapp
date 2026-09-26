.class public final Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->$isGotoNextOne:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$isPaused$p(Lcom/narvii/widgets/StoryProgressBar;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 32
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;)F

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setStartScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->$isGotoNextOne:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    const v0, 0x3c23d70a    # 0.01f

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    const v0, -0x43dc28f6    # -0.01f

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/widgets/StoryProgressBar;->access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 42
    :cond_1
    return-void
.end method
