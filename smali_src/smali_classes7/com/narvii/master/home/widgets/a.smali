.class public final synthetic Lcom/narvii/master/home/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/a;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/narvii/master/home/widgets/a;->b:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/widgets/a;->a:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/a;->b:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
