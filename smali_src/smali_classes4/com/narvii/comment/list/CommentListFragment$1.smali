.class Lcom/narvii/comment/list/CommentListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    iget-object p4, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lcom/narvii/comment/list/CommentListFragment;->isDarkTheme()Z

    .line 11
    move-result p4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    iget-object p4, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 19
    move-result p4

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v0

    .line 43
    add-int/2addr p2, v0

    .line 44
    int-to-float p2, p2

    .line 45
    mul-float/2addr p2, p4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 49
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    div-float/2addr p2, p1

    .line 52
    sub-float/2addr p4, p2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$1;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->t(Lcom/narvii/comment/list/CommentListFragment;)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    const/16 p2, 0x8

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
