.class Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;
.super Ljava/lang/Object;
.source "LiveLayerPreloadHelper.java"

# interfaces
.implements Lcom/narvii/util/drawables/DrawableLoaderListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_0

    .line 128
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
