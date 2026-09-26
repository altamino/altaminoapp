.class Lcom/narvii/livelayer/LiveLayerHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerHelper$1;

.field final synthetic val$resp:Lcom/narvii/model/api/UserListResponse;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerHelper$1;Lcom/narvii/model/api/UserListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1$1;->this$1:Lcom/narvii/livelayer/LiveLayerHelper$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHelper$1$1;->val$resp:Lcom/narvii/model/api/UserListResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper$1$1;->this$1:Lcom/narvii/livelayer/LiveLayerHelper$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHelper$1$1;->val$resp:Lcom/narvii/model/api/UserListResponse;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method
