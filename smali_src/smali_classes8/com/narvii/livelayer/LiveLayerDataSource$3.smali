.class Lcom/narvii/livelayer/LiveLayerDataSource$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->c(Lcom/narvii/livelayer/LiveLayerDataSource;Ljava/util/List;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getAvatarCount()I

    .line 30
    move-result p2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lcom/narvii/livelayer/ILiveLayerView;->getMinAvatarCount()I

    .line 38
    move-result v0

    .line 39
    .line 40
    if-lt p2, v0, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getMinAvatarCount()I

    .line 48
    move-result p2

    .line 49
    .line 50
    if-ge p3, p2, :cond_3

    .line 51
    .line 52
    :cond_1
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    check-cast p2, Lcom/narvii/model/User;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->a(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 84
    .line 85
    iget-object p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p1, p3}, Lcom/narvii/livelayer/ILiveLayerView;->setUserList(Ljava/util/List;I)V

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    check-cast p2, Lcom/narvii/model/User;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->b(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V

    .line 115
    goto :goto_1

    .line 116
    .line 117
    :cond_4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    .line 125
    move-result p2

    .line 126
    sub-int/2addr p3, p2

    .line 127
    .line 128
    add-int/lit8 p3, p3, 0x1

    .line 129
    .line 130
    iput p3, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 133
    .line 134
    iget p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 135
    .line 136
    if-gez p2, :cond_5

    .line 137
    const/4 p2, 0x0

    .line 138
    .line 139
    iput p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 140
    .line 141
    :cond_5
    iget-object p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 142
    .line 143
    if-eqz p2, :cond_6

    .line 144
    .line 145
    iget p3, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 146
    .line 147
    .line 148
    invoke-interface {p2}, Lcom/narvii/livelayer/ILiveLayerView;->getAvatarCount()I

    .line 149
    move-result p2

    .line 150
    .line 151
    add-int/lit8 p2, p2, 0x1

    .line 152
    .line 153
    .line 154
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 155
    move-result p2

    .line 156
    .line 157
    iput p2, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 158
    .line 159
    :cond_6
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$3;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 162
    .line 163
    const-wide/16 p2, 0x7d0

    .line 164
    .line 165
    .line 166
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 167
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
