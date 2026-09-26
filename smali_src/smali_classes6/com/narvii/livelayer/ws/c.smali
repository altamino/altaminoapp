.class public final synthetic Lcom/narvii/livelayer/ws/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/livelayer/ws/c;->a:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/livelayer/ws/c;->a:Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    check-cast p1, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->a(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method
