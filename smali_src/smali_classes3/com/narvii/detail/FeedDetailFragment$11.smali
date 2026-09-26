.class Lcom/narvii/detail/FeedDetailFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 12
    move-result v0

    .line 13
    :goto_0
    add-int/2addr p3, p2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->A(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->B(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    const/16 v1, 0x32

    .line 30
    .line 31
    if-le v0, p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->B(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    sub-int p1, v0, p1

    .line 40
    .line 41
    if-le p1, v1, :cond_4

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->K(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->B(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 53
    move-result p1

    .line 54
    .line 55
    if-ge v0, p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->B(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 61
    move-result p1

    .line 62
    sub-int/2addr p1, v0

    .line 63
    .line 64
    if-le p1, v1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->J(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->A(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 76
    move-result p1

    .line 77
    .line 78
    if-ge p2, p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->K(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->J(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 90
    .line 91
    :cond_4
    :goto_1
    if-ne p3, p4, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->A(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 97
    .line 98
    :cond_5
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->F(Lcom/narvii/detail/FeedDetailFragment;I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->E(Lcom/narvii/detail/FeedDetailFragment;I)V

    .line 107
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
