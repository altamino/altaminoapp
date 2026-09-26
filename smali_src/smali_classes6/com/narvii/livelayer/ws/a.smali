.class public final synthetic Lcom/narvii/livelayer/ws/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/ws/WsService;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/livelayer/ws/a;->a:Lcom/narvii/util/ws/WsService;

    iput-object p2, p0, Lcom/narvii/livelayer/ws/a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/livelayer/ws/a;->a:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/livelayer/ws/a;->b:Ljava/lang/Throwable;

    check-cast p1, Lcom/narvii/util/ws/WsService$WsListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->c(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method
