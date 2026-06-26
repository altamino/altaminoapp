.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment$PostListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.source "LiveLayerDetailPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment$PostListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailPostFragment;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAreaName()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->setTitleAndImgFromFeed(Ljava/lang/Object;Landroid/view/View;)Lcom/narvii/model/Feed;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->setFootToolbar(Lcom/narvii/model/Feed;Landroid/view/View;)V

    const p1, 0x7f090451

    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b04d0

    return v0
.end method

.method public bridge synthetic onAttach()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onAttach()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 0

    .line 72
    invoke-super/range {p0 .. p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
