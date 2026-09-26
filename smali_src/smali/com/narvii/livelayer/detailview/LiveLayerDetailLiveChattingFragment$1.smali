.class Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment$1;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment$1;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getPrivateChatTopic()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "users-live-chatting-private"

    return-object v0
.end method
