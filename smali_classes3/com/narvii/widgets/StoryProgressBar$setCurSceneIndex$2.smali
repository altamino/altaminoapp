.class public final Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;
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
.field final synthetic this$0:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/widgets/StoryProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;->this$0:Lcom/narvii/widgets/StoryProgressBar;

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

    .line 135
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    .line 136
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;->this$0:Lcom/narvii/widgets/StoryProgressBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/narvii/widgets/StoryProgressBar;->access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V

    return-void
.end method
