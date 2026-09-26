.class Lcom/narvii/blog/detail/BlogDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->val$list:Landroid/widget/ListView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->val$list:Landroid/widget/ListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    iget-object p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    iget-object p3, p3, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 13
    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/model/Blog;

    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p4, 0x0

    .line 25
    move v0, p4

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, -0x1

    .line 31
    .line 32
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget-object v3, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 39
    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v0, v2

    .line 46
    .line 47
    :goto_1
    if-eq v0, v2, :cond_4

    .line 48
    .line 49
    if-le p2, v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->P(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 60
    .line 61
    iget-object p2, p3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 67
    const/4 p2, 0x1

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->S(Lcom/narvii/blog/detail/BlogDetailFragment;Z)V

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->P(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->T(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p4}, Lcom/narvii/blog/detail/BlogDetailFragment;->S(Lcom/narvii/blog/detail/BlogDetailFragment;Z)V

    .line 90
    :cond_4
    :goto_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
