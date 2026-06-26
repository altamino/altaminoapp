.class Lcom/narvii/amino/speeddial/SpeedDialLayout$1;
.super Ljava/lang/Object;
.source "SpeedDialLayout.java"

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

    .line 186
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
