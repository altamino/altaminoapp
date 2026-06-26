.class public final synthetic Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo;->f$0:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo;->f$0:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    check-cast p1, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->lambda$handleLiveLayerEventMessage$0(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method
