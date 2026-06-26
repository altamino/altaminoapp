.class public final synthetic Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/util/ws/WsService;

.field private final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;->f$0:Lcom/narvii/util/ws/WsService;

    iput-object p2, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;->f$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;->f$1:Ljava/lang/Throwable;

    check-cast p1, Lcom/narvii/util/ws/WsService$WsListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->lambda$onDisconnect$2(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method
