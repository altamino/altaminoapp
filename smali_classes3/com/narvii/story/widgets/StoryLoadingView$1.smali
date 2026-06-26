.class final Lcom/narvii/story/widgets/StoryLoadingView$1;
.super Ljava/lang/Object;
.source "StoryLoadingView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryLoadingView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$1;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryLoadingView$1;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/story/widgets/StoryLoadingView;->access$setCurrentRatio$p(Lcom/narvii/story/widgets/StoryLoadingView;F)V

    .line 34
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$1;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryLoadingView;->access$getCurrentRatio$p(Lcom/narvii/story/widgets/StoryLoadingView;)F

    move-result v0

    const v1, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v1

    const v1, 0x3e8ccccd    # 0.275f

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/narvii/story/widgets/StoryLoadingView;->access$setCurrentAlpha$p(Lcom/narvii/story/widgets/StoryLoadingView;I)V

    .line 35
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$1;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 32
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
