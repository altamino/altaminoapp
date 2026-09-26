.class public final synthetic Lcom/narvii/story/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/story/widgets/StoryTopicView;

.field public final synthetic b:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic c:F

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/a;->a:Lcom/narvii/story/widgets/StoryTopicView;

    iput-object p2, p0, Lcom/narvii/story/widgets/a;->b:Landroid/graphics/drawable/GradientDrawable;

    iput p3, p0, Lcom/narvii/story/widgets/a;->c:F

    iput-object p4, p0, Lcom/narvii/story/widgets/a;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/story/widgets/a;->a:Lcom/narvii/story/widgets/StoryTopicView;

    iget-object v1, p0, Lcom/narvii/story/widgets/a;->b:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/narvii/story/widgets/a;->c:F

    iget-object v3, p0, Lcom/narvii/story/widgets/a;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/story/widgets/StoryTopicView;->b(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
