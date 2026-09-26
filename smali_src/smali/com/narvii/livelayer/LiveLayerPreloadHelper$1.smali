.class Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void
.end method
