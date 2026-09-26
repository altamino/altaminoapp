.class public final synthetic Lcom/narvii/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widgets/StoryProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widgets/StoryProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/widgets/a;->a:Lcom/narvii/widgets/StoryProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/widgets/a;->a:Lcom/narvii/widgets/StoryProgressBar;

    invoke-static {v0, p1}, Lcom/narvii/widgets/StoryProgressBar;->a(Lcom/narvii/widgets/StoryProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
