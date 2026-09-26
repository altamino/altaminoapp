.class public abstract Lcom/narvii/item/list/ItemGridExAdapter;
.super Lcom/narvii/item/list/ItemGridAdapter;
.source "SourceFile"


# instance fields
.field private apiRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apiRequestTimeStamp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public detailOpenSource:Ljava/lang/String;

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field final inMyFavoritesMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public itemHelper:Lcom/narvii/item/ItemHelper;

.field private pageTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public showPin:Z

.field voteIconView:Landroid/view/View;

.field private voting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/item/list/ItemGridExAdapter$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/item/list/ItemGridExAdapter$1;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    .line 46
    .line 47
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/item/ItemHelper;

    .line 52
    move-object v1, p1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    const-string v1, "not fragment in "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 89
    .line 90
    :goto_0
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 96
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/item/list/ItemGridExAdapter;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    return-object p0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addToCategory(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 10
    :cond_0
    return-void
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Item;

    .line 7
    .line 8
    iget-boolean p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0633

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz p3, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 35
    .line 36
    .line 37
    const p3, 0x7f0a0af1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    const v3, 0x7f0a0af2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result p1

    .line 69
    const/4 v4, 0x1

    .line 70
    .line 71
    if-ne p1, v4, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move v4, v2

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    .line 82
    const v1, 0x7f08018d

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_1
    const v1, 0x7f08018b

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    .line 91
    if-eqz v4, :cond_2

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move v0, v2

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    .line 101
    const p1, 0x7f120e8c

    .line 102
    goto :goto_3

    .line 103
    .line 104
    .line 105
    :cond_3
    const p1, 0x7f120e8a

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    return-object p2

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object p3

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    .line 129
    .line 130
    const p3, 0x7f0a0635

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    check-cast p3, Lcom/narvii/widget/VoteIcon;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 140
    move-result v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 144
    move-result v1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a0634

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    check-cast v1, Landroid/widget/TextView;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 160
    move-result v3

    .line 161
    .line 162
    if-nez v3, :cond_5

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    .line 169
    const v4, 0x7f120b8c

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    goto :goto_4

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 178
    move-result v3

    .line 179
    .line 180
    .line 181
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    const v3, 0x7f0a0636

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    move-result-object v3

    .line 193
    .line 194
    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 195
    .line 196
    if-nez v4, :cond_6

    .line 197
    move p1, v2

    .line 198
    goto :goto_5

    .line 199
    .line 200
    :cond_6
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 204
    move-result p1

    .line 205
    .line 206
    :goto_5
    if-eqz p1, :cond_7

    .line 207
    move v4, v0

    .line 208
    goto :goto_6

    .line 209
    :cond_7
    move v4, v2

    .line 210
    .line 211
    .line 212
    :goto_6
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    if-eqz p1, :cond_8

    .line 215
    move p3, v0

    .line 216
    goto :goto_7

    .line 217
    :cond_8
    move p3, v2

    .line 218
    .line 219
    .line 220
    :goto_7
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    if-eqz p1, :cond_9

    .line 223
    move v0, v2

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d035a

    return v0

    :cond_0
    const v0, 0x7f0d035b

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Item;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    if-eqz p5, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result p4

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0633

    .line 15
    .line 16
    if-ne p4, v0, :cond_3

    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    return p1

    .line 32
    .line 33
    :cond_0
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 34
    .line 35
    check-cast p3, Lcom/narvii/model/Item;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result p2

    .line 52
    .line 53
    if-ne p2, p1, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    iget-object p4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3, p4}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    const p2, 0x7f0a0635

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    .line 81
    .line 82
    new-instance p2, Landroid/content/Intent;

    .line 83
    .line 84
    const-string p4, "vote"

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    const-string p4, "item"

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_3
    check-cast p3, Lcom/narvii/model/Item;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p3, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetail(Lcom/narvii/model/Item;I)V

    .line 106
    :goto_0
    return p1

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 110
    move-result p1

    .line 111
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "vote"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "voteValue"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    .line 35
    :goto_0
    const-string v1, "item"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-class v2, Lcom/narvii/model/Item;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/model/Item;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/narvii/item/list/ItemGridExAdapter;->vote(Lcom/narvii/model/Item;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Item;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0633

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 18
    const/4 p2, 0x1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    return p2

    .line 22
    .line 23
    .line 24
    :cond_0
    const p1, 0x7f0a0635

    .line 25
    .line 26
    .line 27
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance p4, Lcom/narvii/feed/vote/VotePopupDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-direct {p4, v0}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 38
    move-object v0, p3

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/model/Item;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p5}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 47
    .line 48
    new-instance p5, Lcom/narvii/item/list/ItemGridExAdapter$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {p5, p0, p1, p3}, Lcom/narvii/item/list/ItemGridExAdapter$2;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;Landroid/view/View;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4, p5}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4}, Lcom/narvii/app/NVDialog;->show()V

    .line 58
    return p2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 62
    move-result p1

    .line 63
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "delete"

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/Item;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    instance-of v1, v0, Lcom/narvii/item/ItemPinObject;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/item/ItemPinObject;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/item/ItemPinObject;->id()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/item/ItemPinObject;

    .line 44
    .line 45
    iget p1, p1, Lcom/narvii/item/ItemPinObject;->inMyFavorites:I

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 56
    return-void

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/item/list/ItemGridAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 60
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 5
    iget-object v1, p2, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 10
    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :cond_3
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    .line 16
    iget-object p1, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    .line 17
    iget-object p2, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method protected openItemDetail(Lcom/narvii/model/Item;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 8
    return-void
.end method

.method protected openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 13
    move-result v3

    .line 14
    .line 15
    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 22
    move-object v1, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/feed/FeedHelper;->getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string p2, "Source"

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    return-object p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 24
    return-void
.end method

.method public vote(Lcom/narvii/model/Item;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1, p2}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 29
    .line 30
    const-string v0, "api"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/story/detail/VoteHelper;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    new-instance v3, Lcom/narvii/item/list/ItemGridExAdapter$3;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter$3;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;Lcom/narvii/model/Item;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 54
    .line 55
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 56
    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    new-instance p2, Ljava/util/HashSet;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 65
    .line 66
    :cond_1
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
