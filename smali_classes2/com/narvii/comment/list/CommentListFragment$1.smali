.class Lcom/narvii/comment/list/CommentListFragment$1;
.super Ljava/lang/Object;
.source "CommentListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    const/4 p3, 0x0

    .line 210
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 211
    iget-object p4, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {p4}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, p4

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float/2addr p4, p2

    .line 217
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 212
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
