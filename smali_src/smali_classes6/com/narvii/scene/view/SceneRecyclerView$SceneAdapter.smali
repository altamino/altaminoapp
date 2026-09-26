.class Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/view/SceneRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SceneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

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
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    :cond_1
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "onBindViewHolder  >>> position = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "SceneRecyclerView"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    instance-of v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    const/high16 v2, 0x41800000    # 16.0f

    .line 28
    const/4 v3, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_8

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    .line 48
    move-result v4

    .line 49
    sub-int/2addr v4, v3

    .line 50
    .line 51
    if-eq p2, v4, :cond_0

    .line 52
    move v4, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v4}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->showSplit(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V

    .line 61
    .line 62
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    if-nez p2, :cond_1

    .line 77
    move v6, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v6, v1

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 83
    move-result v5

    .line 84
    float-to-int v5, v5

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    iget-object v5, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    .line 97
    move-result v6

    .line 98
    sub-int/2addr v6, v3

    .line 99
    .line 100
    if-ne p2, v6, :cond_2

    .line 101
    move v1, v2

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static {v5, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 105
    move-result p2

    .line 106
    float-to-int p2, p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 110
    .line 111
    iget-object p2, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getAttachDataStatus()I

    .line 120
    move-result p2

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    if-eq p2, v3, :cond_6

    .line 125
    const/4 v0, 0x2

    .line 126
    .line 127
    if-eq p2, v0, :cond_5

    .line 128
    const/4 v0, 0x3

    .line 129
    .line 130
    if-eq p2, v0, :cond_4

    .line 131
    const/4 v0, 0x4

    .line 132
    .line 133
    if-eq p2, v0, :cond_3

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_3
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 137
    .line 138
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll_uneditable:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    goto :goto_2

    .line 143
    .line 144
    :cond_4
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 145
    .line 146
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_5
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 153
    .line 154
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_quiz:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_6
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 161
    .line 162
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    goto :goto_2

    .line 167
    .line 168
    :cond_7
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 169
    .line 170
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_empty:I

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    goto :goto_2

    .line 175
    .line 176
    :cond_8
    instance-of v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 181
    .line 182
    iget-object v0, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    iget-object v4, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->getItemCount()I

    .line 198
    move-result v5

    .line 199
    sub-int/2addr v5, v3

    .line 200
    .line 201
    if-ne p2, v5, :cond_9

    .line 202
    move v1, v2

    .line 203
    .line 204
    .line 205
    :cond_9
    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 206
    move-result p2

    .line 207
    float-to-int p2, p2

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 211
    .line 212
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->ivAdd:Landroid/widget/ImageView;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 216
    :cond_a
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    new-instance p2, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    sget v3, Lcom/narvii/mediaeditor/R$layout;->story_recycler_scene_add_more_item:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V

    .line 26
    return-object p2

    .line 27
    .line 28
    :cond_0
    new-instance p2, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget v3, Lcom/narvii/mediaeditor/R$layout;->story_recycler_scene_item:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V

    .line 48
    return-object p2
.end method
