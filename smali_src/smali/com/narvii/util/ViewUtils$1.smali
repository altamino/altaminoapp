.class Lcom/narvii/util/ViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animator:Landroid/animation/Animator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$animator:Landroid/animation/Animator;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$animator:Landroid/animation/Animator;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/util/ViewUtils$1;->val$view:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method
