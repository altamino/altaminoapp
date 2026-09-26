.class public final Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/fragment/AbstractListDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 AbstractListDetailFragment.kt\nandroidx/navigation/fragment/AbstractListDetailFragment\n*L\n1#1,384:1\n69#2:385\n70#2:389\n180#3,3:386\n*E\n"
.end annotation


# instance fields
.field final synthetic $slidingPaneLayout$inlined:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

.field final synthetic this$0:Landroidx/navigation/fragment/AbstractListDetailFragment;


# direct methods
.method public constructor <init>(Landroidx/navigation/fragment/AbstractListDetailFragment;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;->this$0:Landroidx/navigation/fragment/AbstractListDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;->$slidingPaneLayout$inlined:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;->this$0:Landroidx/navigation/fragment/AbstractListDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/navigation/fragment/AbstractListDetailFragment;->f(Landroidx/navigation/fragment/AbstractListDetailFragment;)Landroidx/activity/OnBackPressedCallback;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;->$slidingPaneLayout$inlined:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n()Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1;->$slidingPaneLayout$inlined:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    const/4 p2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/activity/OnBackPressedCallback;->i(Z)V

    .line 41
    return-void
.end method
