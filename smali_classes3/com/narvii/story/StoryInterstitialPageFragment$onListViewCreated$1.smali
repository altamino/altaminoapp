.class public final Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;
.super Ljava/lang/Object;
.source "StoryInterstitialPageFragment.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $list:Landroid/widget/ListView;

.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    iput-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result p2

    if-eq p2, p3, :cond_2

    .line 171
    :cond_1
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 173
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    if-lez p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getOffsetRect$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x42a00000    # 80.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->$list:Landroid/widget/ListView;

    check-cast p1, Lcom/narvii/widget/NVListView;

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getOffsetRect$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setClipOffsetRect(Landroid/graphics/Rect;)V

    .line 177
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getHoverView$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->$list:Landroid/widget/ListView;

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setClipOffsetRect(Landroid/graphics/Rect;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onListViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getHoverView$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
