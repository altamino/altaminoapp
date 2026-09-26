.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/livelayer/category/OnlineCategoryListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

.field final synthetic val$category:Lcom/narvii/livelayer/category/OnlineCategory;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;Lcom/narvii/livelayer/category/OnlineCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 3
    .line 4
    iput p3, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/util/LinkedList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/model/User;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 65
    move-result v2

    .line 66
    .line 67
    const/16 v3, 0x1e

    .line 68
    .line 69
    if-le v2, v3, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    .line 107
    :cond_3
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
