.class Lcom/narvii/livelayer/LiveLayerDataSource$3;
.super Ljava/lang/Object;
.source "LiveLayerDataSource.java"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerDataSource;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-static {p1, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->access$000(Lcom/narvii/livelayer/LiveLayerDataSource;Ljava/util/List;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getAvatarCount()I

    move-result p2

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    invoke-interface {v0}, Lcom/narvii/livelayer/ILiveLayerView;->getMinAvatarCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getMinAvatarCount()I

    move-result p2

    if-ge p3, p2, :cond_3

    .line 158
    :cond_1
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 160
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-static {v0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->access$100(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/narvii/livelayer/ILiveLayerView;->setUserList(Ljava/util/List;I)V

    return-void

    .line 166
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 167
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-static {v0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->access$200(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V

    goto :goto_1

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 171
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    if-gez p2, :cond_5

    const/4 p2, 0x0

    .line 172
    iput p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    if-eqz p2, :cond_6

    .line 176
    iget p3, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getAvatarCount()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 179
    :cond_6
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x7d0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

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
