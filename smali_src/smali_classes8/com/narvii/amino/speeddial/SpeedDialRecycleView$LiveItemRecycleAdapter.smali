.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-ge p1, v0, :cond_0

    .line 20
    return v2

    .line 21
    :cond_0
    add-int/2addr v1, v0

    .line 22
    .line 23
    if-ge p1, v1, :cond_4

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 28
    sub-int/2addr p1, v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    .line 41
    if-eq v0, v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x4

    .line 53
    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 59
    move-result p1

    .line 60
    const/4 v0, 0x5

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    return v1

    .line 64
    :cond_2
    const/4 p1, -0x1

    .line 65
    return p1

    .line 66
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    :cond_4
    const/4 p1, 0x2

    .line 69
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    instance-of v1, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 26
    sub-int/2addr p2, v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_0
    instance-of v0, p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    move-object v0, p1

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->liveItemView:Lcom/narvii/chat/hangout/HangoutItem;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    move-result v1

    .line 69
    .line 70
    if-ge p2, v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    :goto_0
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_1
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 86
    .line 87
    sub-int v1, p2, v1

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->getItemViewType(I)I

    .line 103
    move-result p1

    .line 104
    const/4 p2, 0x1

    .line 105
    const/4 v2, 0x0

    .line 106
    .line 107
    if-ne p1, p2, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->d(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object p1, v2

    .line 116
    .line 117
    :goto_2
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 118
    .line 119
    iget-object p2, p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    .line 120
    .line 121
    if-nez p2, :cond_4

    .line 122
    goto :goto_3

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object p2

    .line 131
    move-object v2, p2

    .line 132
    .line 133
    check-cast v2, Lcom/narvii/model/PlayList;

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const p1, 0x7f0a093e

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 153
    move-result v2

    .line 154
    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    .line 158
    const v2, 0x7f0801cd

    .line 159
    goto :goto_4

    .line 160
    .line 161
    .line 162
    :cond_5
    const v2, 0x7f0801cc

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p0, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;Lcom/narvii/model/ChatThread;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_6
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0d041c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V

    .line 29
    return-object p2

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    .line 32
    if-eq p2, v0, :cond_2

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    const/4 v0, 0x3

    .line 36
    .line 37
    if-ne p2, v0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0d00e4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V

    .line 65
    return-object p2
.end method
