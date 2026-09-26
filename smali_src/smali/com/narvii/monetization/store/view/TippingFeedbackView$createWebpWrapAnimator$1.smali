.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLe8/a;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animationEnd:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $iv:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/NVImageView;",
            "Lcom/narvii/monetization/store/view/TippingFeedbackView;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$animationEnd:Le8/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$animationEnd:Le8/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 11
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
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;->$iv:Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V

    .line 19
    return-void
.end method
