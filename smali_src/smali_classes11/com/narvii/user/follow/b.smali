.class public final synthetic Lcom/narvii/user/follow/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/follow/b;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/narvii/user/follow/b;->b:Lcom/narvii/user/follow/UserFollowView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/user/follow/b;->a:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/narvii/user/follow/b;->b:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v0, v1, p1}, Lcom/narvii/user/follow/UserFollowView;->b(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
