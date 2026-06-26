.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SpeedDialRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveItemRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge p1, v0, :cond_0

    return v2

    :cond_0
    add-int/2addr v1, v0

    if-ge p1, v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 261
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 262
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 263
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    instance-of v1, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    sub-int/2addr p2, v0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 211
    check-cast p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    iget-object v0, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    invoke-virtual {v0, p2}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 212
    iget-object p1, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 220
    :cond_0
    instance-of v0, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    if-eqz v0, :cond_6

    .line 221
    move-object v0, p1

    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->liveItemView:Lcom/narvii/chat/hangout/HangoutItem;

    .line 222
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v2, v2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    sub-int v1, p2, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 224
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 225
    invoke-static {p1, v1}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 227
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-static {p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->access$100(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 228
    :goto_1
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object p2, p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/narvii/model/PlayList;

    :goto_2
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V

    const p1, 0x7f0906dd

    .line 229
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 230
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f08013e

    goto :goto_3

    :cond_5
    const v2, 0x7f08013d

    .line 229
    :goto_3
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;

    invoke-direct {p1, p0, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 197
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b03e6

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 198
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b00ce

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 201
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V

    return-object p2
.end method
