.class Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void
.end method
