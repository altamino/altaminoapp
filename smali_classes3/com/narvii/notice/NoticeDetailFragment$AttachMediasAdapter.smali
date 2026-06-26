.class Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "NoticeDetailFragment.java"


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

    .line 224
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 225
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 226
    new-instance p2, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/util/List;)V

    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 232
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 233
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 234
    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b0402

    .line 239
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900c7

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 241
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 242
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    if-eqz p3, :cond_0

    .line 243
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p3}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->notifyImageChanged(Ljava/util/List;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 246
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->adapter:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iget-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p3}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/account/notice/AccountNotice;->getAttachMedias()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->notifyImageChanged(Ljava/util/List;)V

    :goto_0
    return-object p1
.end method
