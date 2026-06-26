.class Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment$1;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;
.source "LiveLayerDetailVvChattingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailVvChattingFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getPrivateChatTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "users-vv-chatting-private"

    return-object v0
.end method
