.class public final Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MasterBottomItemView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animator:Landroid/animation/Animator;

.field final synthetic $icon:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 125
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$animator:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 127
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 128
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 129
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
