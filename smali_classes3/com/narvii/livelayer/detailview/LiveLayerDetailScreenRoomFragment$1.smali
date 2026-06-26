.class Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$1;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;
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
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getHintInfoMultiStrId()I
    .locals 1

    const v0, 0x7f0f0bff

    return v0
.end method

.method protected getHintInfoSingleStrId()I
    .locals 1

    const v0, 0x7f0f0cd4

    return v0
.end method

.method protected getPrivateChatTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "users-watching-videos-private"

    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    const v0, 0x7f0803b2

    return v0
.end method
