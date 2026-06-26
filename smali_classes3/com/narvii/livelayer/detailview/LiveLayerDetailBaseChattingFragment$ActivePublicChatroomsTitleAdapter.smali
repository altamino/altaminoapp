.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;
.source "LiveLayerDetailBaseChattingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActivePublicChatroomsTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    .line 183
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerCategoryTitleAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getTitleIcon()I
    .locals 1

    const v0, 0x7f0803b6

    return v0
.end method

.method public getTitleIconBackgroundColor()I
    .locals 1

    const v0, -0xff9501

    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    const v1, 0x7f0f0af5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
