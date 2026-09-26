.class public final Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final disabledView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final image$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final probationView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

.field private final title$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/MyCommunityListAdapter;
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
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a06eb

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->image$delegate:Lw7/m;

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0a06d5

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->icon$delegate:Lw7/m;

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a0e9e

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->title$delegate:Lw7/m;

    .line 38
    .line 39
    .line 40
    const p2, 0x7f0a0b8a

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->progress$delegate:Lw7/m;

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0a0b88

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->probationView$delegate:Lw7/m;

    .line 56
    .line 57
    .line 58
    const p2, 0x7f0a0441

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->disabledView$delegate:Lw7/m;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    .line 68
    move-result-object p1

    .line 69
    const/4 p2, 0x1

    .line 70
    .line 71
    iput-boolean p2, p1, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-boolean p2, p1, Lcom/narvii/widget/PromotionalImageView;->preloadCachedImage:Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 85
    return-void
.end method


# virtual methods
.method public final getDisabledView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->disabledView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getIcon()Lcom/narvii/widget/CommunityIconView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->icon$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    .line 9
    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/PromotionalImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->image$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    .line 9
    return-object v0
.end method

.method public final getProbationView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->probationView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getProgress()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->progress$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->title$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final updateData(Lcom/narvii/model/Community;)V
    .locals 6
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "c"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityHelper;->getUserProfile(I)Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget v1, p1, Lcom/narvii/model/Community;->status:I

    .line 20
    .line 21
    const/16 v2, 0x9

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v4

    .line 29
    .line 30
    :goto_0
    iget v2, p1, Lcom/narvii/model/Community;->probationStatus:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    move v0, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v0, v4

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getImage()Lcom/narvii/widget/PromotionalImageView;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getIcon()Lcom/narvii/widget/CommunityIconView;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iget-object v5, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getIcon()Lcom/narvii/widget/CommunityIconView;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 67
    move-result v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    iget-object v5, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getProbationView()Landroid/view/View;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    move v0, v4

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move v0, v5

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->getDisabledView()Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    move v5, v4

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0b8a

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchProgress()Lcom/narvii/widget/SmoothProgressBar;

    .line 120
    move-result-object v1

    .line 121
    const/4 v2, 0x4

    .line 122
    .line 123
    if-ne v0, v1, :cond_4

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchCommunity()Lcom/narvii/model/Community;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->launchCommunity()Lcom/narvii/model/Community;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 141
    .line 142
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 143
    .line 144
    iget v5, p1, Lcom/narvii/model/Community;->id:I

    .line 145
    .line 146
    if-eq v1, v5, :cond_5

    .line 147
    .line 148
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    .line 156
    :cond_4
    move v4, v2

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 168
    .line 169
    const-string v2, "itemView"

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1, p1, v3}, Lcom/narvii/community/MyCommunityHelper;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1, p1}, Lcom/narvii/community/MyCommunityHelper;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 190
    .line 191
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .line 202
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    return-void
.end method
