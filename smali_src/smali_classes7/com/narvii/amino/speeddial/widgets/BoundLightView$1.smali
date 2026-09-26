.class Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/widgets/BoundLightView;->configAniamtion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->d(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->c(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-wide/16 v0, 0x12c

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->c(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
