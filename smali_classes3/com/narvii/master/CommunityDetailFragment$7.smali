.class Lcom/narvii/master/CommunityDetailFragment$7;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    const/4 p2, 0x0

    .line 756
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float/2addr p3, p2

    goto :goto_0

    :cond_0
    if-ge p2, p4, :cond_1

    const/4 p3, 0x0

    .line 762
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$700(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 763
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$700(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 765
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1, p3}, Lcom/narvii/master/CommunityDetailFragment;->access$800(Lcom/narvii/master/CommunityDetailFragment;F)V

    .line 766
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$900(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 767
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$900(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 769
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$7;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$1000(Lcom/narvii/master/CommunityDetailFragment;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
