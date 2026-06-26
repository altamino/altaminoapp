.class Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;
.super Ljava/lang/Object;
.source "LiveLayerPreloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerPreloadHelper;->onUrlResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
