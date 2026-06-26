.class public final synthetic Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/widgets/StoryTopicView;

.field private final synthetic f$1:Landroid/graphics/drawable/GradientDrawable;

.field private final synthetic f$2:F

.field private final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$0:Lcom/narvii/story/widgets/StoryTopicView;

    iput-object p2, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$1:Landroid/graphics/drawable/GradientDrawable;

    iput p3, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$2:F

    iput-object p4, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$0:Lcom/narvii/story/widgets/StoryTopicView;

    iget-object v1, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$1:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$2:F

    iget-object v3, p0, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;->f$3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/story/widgets/StoryTopicView;->lambda$startBlink$0$StoryTopicView(Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
