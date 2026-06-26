.class Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;
.super Ljava/lang/Object;
.source "BoundLightView.java"

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

    .line 92
    iput-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->access$000(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->access$100(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 101
    iget-object p1, p0, Lcom/narvii/amino/speeddial/widgets/BoundLightView$1;->this$0:Lcom/narvii/amino/speeddial/widgets/BoundLightView;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/widgets/BoundLightView;->access$100(Lcom/narvii/amino/speeddial/widgets/BoundLightView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

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
