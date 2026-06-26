.class final Lcom/narvii/util/ViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animator:Landroid/animation/Animator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 189
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$animator:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 191
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
