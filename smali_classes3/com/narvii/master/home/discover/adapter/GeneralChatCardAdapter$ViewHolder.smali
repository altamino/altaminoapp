.class public final Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "GeneralChatCardAdapter.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901eb

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/hangout/HangoutItem;

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/narvii/model/ChatThread;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getConfigService$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    :cond_3
    return-void
.end method

.method public final getHantoutItem()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->hantoutItem:Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method
