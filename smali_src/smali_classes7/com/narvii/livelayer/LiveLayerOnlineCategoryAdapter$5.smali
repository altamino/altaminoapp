.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineCategory:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0ee1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;->val$onlineCategory:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
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
