.class public final Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$animator:Landroid/animation/Animator;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

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
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$animator:Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;->$icon:Landroid/view/View;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method
