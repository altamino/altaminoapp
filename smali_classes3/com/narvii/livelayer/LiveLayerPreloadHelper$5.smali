.class Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;
.super Ljava/lang/Object;
.source "LiveLayerPreloadHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadUserIcons(Ljava/util/List;IIILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;->this$0:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->access$000(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Ljava/lang/String;)V

    return-void
.end method
