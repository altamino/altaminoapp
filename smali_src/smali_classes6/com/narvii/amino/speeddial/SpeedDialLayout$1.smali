.class Lcom/narvii/amino/speeddial/SpeedDialLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    instance-of p1, p1, Landroid/widget/HorizontalScrollView;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 28
    .line 29
    const/16 p2, 0x42

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 33
    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
