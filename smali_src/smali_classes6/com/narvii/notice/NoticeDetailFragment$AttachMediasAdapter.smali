.class Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachMediasAdapter"
.end annotation


# instance fields
.field adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/util/List;)V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 17
    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-lez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0438

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a014d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {p3, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    instance-of p3, p3, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 44
    .line 45
    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->notifyImageChanged(Ljava/util/List;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 65
    .line 66
    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {p3}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->notifyImageChanged(Ljava/util/List;)V

    .line 78
    :goto_0
    return-object p1
.end method
