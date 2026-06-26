.class Lcom/narvii/livelayer/LiveLayerMainFragment$1;
.super Ljava/lang/Object;
.source "LiveLayerMainFragment.java"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$1;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method
