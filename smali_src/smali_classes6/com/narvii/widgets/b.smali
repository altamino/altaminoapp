.class public final synthetic Lcom/narvii/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widgets/StoryProgressBar;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widgets/StoryProgressBar;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/widgets/b;->a:Lcom/narvii/widgets/StoryProgressBar;

    iput-boolean p2, p0, Lcom/narvii/widgets/b;->b:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/widgets/b;->a:Lcom/narvii/widgets/StoryProgressBar;

    iget-boolean v1, p0, Lcom/narvii/widgets/b;->b:Z

    invoke-static {v0, v1, p1}, Lcom/narvii/widgets/StoryProgressBar;->b(Lcom/narvii/widgets/StoryProgressBar;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
