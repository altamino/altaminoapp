.class public final synthetic Lcom/narvii/topic/widgets/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/widgets/e;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/narvii/topic/widgets/e;->b:Lcom/narvii/topic/widgets/TopicSubscribeView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/widgets/e;->a:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/narvii/topic/widgets/e;->b:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {v0, v1, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
