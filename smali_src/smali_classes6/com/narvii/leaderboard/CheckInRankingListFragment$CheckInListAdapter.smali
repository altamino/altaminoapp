.class Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/CheckInRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckInListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/CheckInRanking;",
        ">;"
    }
.end annotation


# instance fields
.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation
.end field

.field oList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/CheckInRanking;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method private configCellUI(Lcom/narvii/model/CheckInRanking;Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p2, :cond_9

    .line 7
    .line 8
    if-eqz p1, :cond_9

    .line 9
    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->oList:Ljava/util/List;

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 29
    move-result v0

    .line 30
    :goto_0
    const/4 v2, 0x0

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    const/4 v1, 0x2

    .line 34
    .line 35
    if-le v0, v1, :cond_3

    .line 36
    :cond_2
    move v0, v2

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->getCellDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0809bd

    .line 46
    .line 47
    .line 48
    const v3, 0x7f07022d

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/4 v3, 0x1

    .line 51
    .line 52
    if-ne v0, v3, :cond_5

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0809bc

    .line 56
    .line 57
    .line 58
    const v3, 0x7f07022c

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_5
    const v0, 0x7f0809bb

    .line 63
    .line 64
    .line 65
    const v3, 0x7f07022b

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 77
    move-result v3

    .line 78
    .line 79
    .line 80
    const v4, 0x7f0a0f45

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 90
    move-result v5

    .line 91
    float-to-int v3, v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 95
    move-result v6

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 99
    move-result v7

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    :cond_6
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    const v1, 0x7f0a0d82

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    check-cast v1, Landroid/widget/ImageView;

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    const v0, 0x7f0a0e9e

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    iget-object v0, p1, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v0

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    const/16 v0, 0x8

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    :goto_2
    instance-of v0, p2, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    check-cast p2, Landroid/widget/TextView;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_9
    :goto_3
    return-void
.end method

.method private createGridCell(Landroid/view/View;Landroid/view/ViewGroup;Lcom/narvii/model/CheckInRanking;)Landroid/view/View;
    .locals 11

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v2

    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    iget-object v3, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    move-result v3

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v3, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 43
    .line 44
    :goto_2
    if-eqz p1, :cond_3

    .line 45
    goto :goto_3

    .line 46
    .line 47
    .line 48
    :cond_3
    const v4, 0x7f0d041a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4, p2, p1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    :goto_3
    const p2, 0x7f0a02d5

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    check-cast p2, Landroid/widget/Button;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p3, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->configCellUI(Lcom/narvii/model/CheckInRanking;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    const p2, 0x7f0a0f46

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    check-cast p2, Landroid/widget/GridLayout;

    .line 79
    .line 80
    const/16 v4, 0x8

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-object p1

    .line 87
    .line 88
    :cond_4
    iget-object v3, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 89
    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 94
    move-result v3

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v3, v1

    .line 97
    .line 98
    :goto_4
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 102
    move-result v5

    .line 103
    .line 104
    if-nez v5, :cond_6

    .line 105
    .line 106
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 107
    const/4 v6, 0x5

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->z(Lcom/narvii/leaderboard/CheckInRankingListFragment;I)V

    .line 111
    .line 112
    :cond_6
    iget-object v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 116
    move-result v5

    .line 117
    .line 118
    div-int v5, v3, v5

    .line 119
    .line 120
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 124
    move-result v6

    .line 125
    .line 126
    rem-int v6, v3, v6

    .line 127
    .line 128
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 132
    move-result v7

    .line 133
    .line 134
    div-int/lit8 v7, v7, 0x2

    .line 135
    .line 136
    if-le v6, v7, :cond_7

    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    :cond_7
    const/4 v6, 0x4

    .line 140
    .line 141
    if-le v5, v6, :cond_8

    .line 142
    move v5, v6

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 146
    move-result v6

    .line 147
    .line 148
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 149
    .line 150
    .line 151
    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 152
    move-result v7

    .line 153
    mul-int/2addr v7, v5

    .line 154
    .line 155
    if-le v6, v7, :cond_9

    .line 156
    move v8, v7

    .line 157
    .line 158
    :goto_5
    if-ge v8, v6, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 162
    .line 163
    add-int/lit8 v8, v8, 0x1

    .line 164
    goto :goto_5

    .line 165
    .line 166
    :cond_9
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 167
    .line 168
    .line 169
    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 170
    move-result v6

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v6}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 174
    .line 175
    .line 176
    :try_start_0
    invoke-virtual {p2, v5}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    :catch_0
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 179
    .line 180
    .line 181
    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->y(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    .line 182
    move-result v6

    .line 183
    float-to-int v6, v6

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 187
    move-result v7

    .line 188
    .line 189
    iget-object v8, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 190
    .line 191
    .line 192
    invoke-static {v8}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->y(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    .line 193
    move-result v8

    .line 194
    float-to-int v8, v8

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 198
    move-result v9

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 202
    .line 203
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 207
    move-result v6

    .line 208
    mul-int/2addr v6, v5

    .line 209
    .line 210
    if-le v6, v3, :cond_a

    .line 211
    goto :goto_6

    .line 212
    .line 213
    :cond_a
    iget-object v3, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I

    .line 217
    move-result v3

    .line 218
    mul-int/2addr v3, v5

    .line 219
    :goto_6
    move v5, v1

    .line 220
    .line 221
    :goto_7
    if-ge v5, v3, :cond_12

    .line 222
    .line 223
    iget-object v6, p3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 224
    .line 225
    .line 226
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    move-result-object v6

    .line 228
    .line 229
    check-cast v6, Lcom/narvii/model/User;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 233
    move-result v7

    .line 234
    .line 235
    if-le v7, v5, :cond_b

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 239
    move-result-object v7

    .line 240
    goto :goto_8

    .line 241
    :cond_b
    move-object v7, v2

    .line 242
    .line 243
    :goto_8
    if-nez v6, :cond_c

    .line 244
    .line 245
    if-eqz v7, :cond_10

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    goto :goto_b

    .line 250
    .line 251
    :cond_c
    if-nez v7, :cond_d

    .line 252
    .line 253
    iget-object v7, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 254
    .line 255
    .line 256
    const v8, 0x7f0d03dc

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v8, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    move-result-object v7

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    .line 276
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    const v8, 0x7f0a0f36

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    move-result-object v8

    .line 287
    .line 288
    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 292
    .line 293
    iget-object v8, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-static {v8, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    move-result v8

    .line 298
    .line 299
    if-eqz v8, :cond_e

    .line 300
    .line 301
    iget-object v9, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 302
    .line 303
    .line 304
    const v10, 0x7f120c2a

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 308
    move-result-object v9

    .line 309
    goto :goto_9

    .line 310
    .line 311
    :cond_e
    iget-object v9, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 312
    .line 313
    :goto_9
    iput-object v9, v6, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    const v9, 0x7f0a09f9

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    move-result-object v9

    .line 321
    .line 322
    check-cast v9, Lcom/narvii/widget/NicknameView;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 326
    .line 327
    if-eqz v8, :cond_f

    .line 328
    .line 329
    .line 330
    const v6, 0x7f0808ee

    .line 331
    goto :goto_a

    .line 332
    :cond_f
    move v6, v1

    .line 333
    .line 334
    .line 335
    :goto_a
    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 336
    .line 337
    :cond_10
    :goto_b
    if-eqz v7, :cond_11

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 341
    move-result-object v6

    .line 342
    .line 343
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 344
    .line 345
    .line 346
    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->w(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    .line 347
    move-result v7

    .line 348
    float-to-int v7, v7

    .line 349
    .line 350
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    .line 352
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 353
    .line 354
    if-eqz v7, :cond_11

    .line 355
    .line 356
    iget-object v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 357
    .line 358
    .line 359
    invoke-static {v7}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->w(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F

    .line 360
    move-result v7

    .line 361
    .line 362
    .line 363
    const v8, 0x3dcccccd    # 0.1f

    .line 364
    mul-float/2addr v7, v8

    .line 365
    float-to-int v7, v7

    .line 366
    .line 367
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 368
    .line 369
    div-int/lit8 v8, v7, 0x2

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v7, v8, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 373
    .line 374
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 375
    .line 376
    goto/16 :goto_7

    .line 377
    :cond_12
    return-object p1
.end method

.method private getCellDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    const p1, -0xad5401

    .line 7
    .line 8
    .line 9
    const v0, -0x714211

    .line 10
    .line 11
    .line 12
    filled-new-array {v0, p1, v0}, [I

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    const p1, -0x37a802

    .line 21
    .line 22
    .line 23
    const v0, -0x196f01

    .line 24
    .line 25
    .line 26
    const v1, -0x378414

    .line 27
    .line 28
    .line 29
    filled-new-array {v1, p1, v0}, [I

    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    const p1, -0x1346bf

    .line 35
    .line 36
    .line 37
    const v0, -0x1533a6

    .line 38
    .line 39
    .line 40
    const v1, -0x123072

    .line 41
    .line 42
    .line 43
    filled-new-array {v1, p1, v0}, [I

    .line 44
    move-result-object p1

    .line 45
    .line 46
    :goto_0
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter$1;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;[I)V

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/drawable/PaintDrawable;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 55
    .line 56
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const/high16 v2, 0x41200000    # 10.0f

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 79
    return-object p1
.end method

.method private reOrderUserList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 23
    move-result p2

    .line 24
    .line 25
    if-ltz p2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/model/User;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_1
    :goto_0
    return-object v0
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
.method public filterList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    const-string v0, "account"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .line 35
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    move-result v3

    .line 44
    .line 45
    if-ge v2, v3, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Lcom/narvii/model/CheckInRanking;

    .line 52
    .line 53
    iget-object v4, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    iget-object v4, v3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 73
    move-result v5

    .line 74
    .line 75
    if-lez v5, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v4, v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->reOrderUserList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    iput-object v4, v3, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    return-object v1

    .line 89
    .line 90
    :cond_5
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/CheckInRanking;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->createGridCell(Landroid/view/View;Landroid/view/ViewGroup;Lcom/narvii/model/CheckInRanking;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public isEmpty()Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v5

    .line 22
    .line 23
    if-ge v3, v5, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Lcom/narvii/model/CheckInRanking;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v5}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z

    .line 35
    move-result v5

    .line 36
    xor-int/2addr v5, v1

    .line 37
    add-int/2addr v4, v5

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    if-nez v4, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v2

    .line 45
    :cond_3
    :goto_1
    return v1
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    if-eqz p5, :cond_8

    .line 3
    .line 4
    instance-of v0, p3, Lcom/narvii/model/CheckInRanking;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    move-object v1, p3

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/model/CheckInRanking;

    .line 10
    .line 11
    iget v1, v1, Lcom/narvii/model/CheckInRanking;->minStreak:I

    .line 12
    const/4 v2, 0x7

    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/16 v2, 0xe

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x1e

    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string v1, "1MonthStreak"

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    const-string v1, "2WeekStreak"

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_2
    const-string v1, "1WeekStreak"

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_3
    :goto_0
    const-string v1, "DaysStreak"

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0a02d5

    .line 42
    const/4 v4, 0x1

    .line 43
    .line 44
    if-ne v2, v3, :cond_6

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 47
    .line 48
    iget-object p2, p1, Lcom/narvii/leaderboard/CheckInRankingListFragment;->leaderBoardHelper:Lcom/narvii/leaderboard/LeaderBoardHelper;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/narvii/leaderboard/LeaderBoardHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 56
    .line 57
    const-class p1, Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    check-cast p3, Lcom/narvii/model/CheckInRanking;

    .line 66
    .line 67
    iget p2, p3, Lcom/narvii/model/CheckInRanking;->minStreak:I

    .line 68
    .line 69
    const-string p4, "min_streak"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    const-string p2, "max_streak"

    .line 75
    .line 76
    iget p4, p3, Lcom/narvii/model/CheckInRanking;->maxStreak:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    const-string p2, "title"

    .line 82
    .line 83
    iget-object p3, p3, Lcom/narvii/model/CheckInRanking;->title:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    :cond_4
    if-nez p1, :cond_5

    .line 89
    return v4

    .line 90
    .line 91
    :cond_5
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 106
    return v4

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 113
    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Lcom/narvii/model/User;

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    if-nez p2, :cond_7

    .line 127
    return v4

    .line 128
    .line 129
    :cond_7
    const-string p3, "Source"

    .line 130
    .line 131
    const-string p4, "Leaderboard"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 137
    .line 138
    .line 139
    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 140
    move-result-object p3

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 144
    move-result-object p3

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p2}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 155
    return v4

    .line 156
    .line 157
    .line 158
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 159
    move-result p1

    .line 160
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
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
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->access$000(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 12
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/CheckInRanking;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->oList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filterList(Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filteredList:Ljava/util/List;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->filteredList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    return-void
.end method

.method public setFragmentVisible(Z)V
    .locals 0

    return-void
.end method
