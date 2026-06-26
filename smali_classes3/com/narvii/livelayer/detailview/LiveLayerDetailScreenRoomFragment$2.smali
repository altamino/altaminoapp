.class Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$2;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;
.source "LiveLayerDetailScreenRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    invoke-direct {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;)V

    return-void
.end method


# virtual methods
.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$2;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    const v1, 0x7f0f0066

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
