.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;
.super Ljava/lang/Object;
.source "LiveLayerOnlineCategoryAdapter.java"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

.field final synthetic val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field final synthetic val$onlineCategory:Lcom/narvii/livelayer/category/OnlineCategory;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/livelayer/category/OnlineCategory;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineCategory:Lcom/narvii/livelayer/category/OnlineCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const v1, 0x7f090bc4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineCategory:Lcom/narvii/livelayer/category/OnlineCategory;

    iget-object p2, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onUserLeft(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
