.class public final synthetic Lcom/narvii/topic/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/b;->a:Lcom/narvii/topic/widgets/TopicBookmarkView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/widgets/b;->a:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {v0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->b(Lcom/narvii/topic/widgets/TopicBookmarkView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
