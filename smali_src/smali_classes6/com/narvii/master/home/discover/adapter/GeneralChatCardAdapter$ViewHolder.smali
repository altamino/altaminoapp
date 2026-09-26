.class public final Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a02a2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/chat/hangout/HangoutItem;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    .line 22
    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/narvii/model/ChatThread;)V
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/model/PlayList;

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getConfigService$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Lcom/narvii/config/ConfigService;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 83
    move-result v0

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    iget v0, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 88
    const/4 v1, 0x1

    .line 89
    .line 90
    if-ne v0, v1, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/model/Community;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    .line 114
    :cond_3
    return-void
.end method

.method public final getHantoutItem()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method
