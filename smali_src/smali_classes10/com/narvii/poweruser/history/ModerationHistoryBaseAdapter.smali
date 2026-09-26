.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/poweruser/history/ModerationHistory;",
        "Lcom/narvii/poweruser/history/ModerationHistoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 12
    return-void
.end method

.method private getOperationLevelDrawable(Lcom/narvii/poweruser/history/ModerationHistory;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$drawable;->tag_rounded_bg:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    return-object v1

    .line 43
    .line 44
    :cond_0
    iget-object v3, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationLevel:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_default:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    move-result v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    sget v6, Lcom/narvii/lib/R$color;->moderation_operation_level_default_pressed:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result v5

    .line 73
    .line 74
    const-string v6, "danger"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v6

    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_danger:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 94
    move-result v4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_danger_pressed:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 108
    move-result v5

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_1
    const-string v6, "success"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v6

    .line 116
    .line 117
    if-eqz v6, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_success:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 131
    move-result v4

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v3

    .line 140
    .line 141
    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_success_pressed:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 145
    move-result v5

    .line 146
    goto :goto_0

    .line 147
    .line 148
    :cond_2
    const-string v6, "warning"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v3

    .line 153
    .line 154
    if-eqz v3, :cond_3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 158
    move-result-object v3

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    sget v4, Lcom/narvii/lib/R$color;->moderation_operation_level_warning:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 168
    move-result v4

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 172
    move-result-object v3

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    sget v5, Lcom/narvii/lib/R$color;->moderation_operation_level_warning_pressed:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 182
    move-result v5

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 189
    .line 190
    iget-object p1, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    move-result p1

    .line 195
    .line 196
    if-eqz p1, :cond_4

    .line 197
    return-object v1

    .line 198
    .line 199
    .line 200
    :cond_4
    const p1, 0x10100a7

    .line 201
    .line 202
    .line 203
    filled-new-array {p1}, [I

    .line 204
    move-result-object p1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    .line 209
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 213
    return-object v0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "/admin/operation"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getCid()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectType()I

    .line 29
    move-result v0

    .line 30
    const/4 v1, -0x1

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    const-string v0, "objectId"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectId()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->objectType()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "objectType"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->operatorUid()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const-string v0, "operatorUid"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->operatorUid()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/poweruser/history/ModerationHistory;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/poweruser/history/ModerationHistory;

    return-object v0
.end method

.method protected disableAllItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCid()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/poweruser/history/ModerationHistory;

    .line 3
    .line 4
    sget v0, Lcom/narvii/lib/R$layout;->item_modeartion_history:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget p3, Lcom/narvii/lib/R$id;->avatar:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    instance-of v0, p3, Lcom/narvii/widget/ThumbImageView;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    move-object v2, p3

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->disableAllItem()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 51
    .line 52
    :cond_1
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->nickname:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    move-object v2, p3

    .line 66
    .line 67
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->disableAllItem()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    :cond_2
    sget p3, Lcom/narvii/lib/R$id;->logtime:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    instance-of v0, p3, Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    check-cast p3, Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 96
    .line 97
    iget-object v2, p1, Lcom/narvii/poweruser/history/ModerationHistory;->createdTime:Ljava/util/Date;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    :cond_3
    sget p3, Lcom/narvii/lib/R$id;->operation_name:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    instance-of v0, p3, Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz v0, :cond_8

    .line 115
    move-object v0, p3

    .line 116
    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v2, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationName:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;->getOperationLevelDrawable(Lcom/narvii/poweruser/history/ModerationHistory;)Landroid/graphics/drawable/Drawable;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectUrl:Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 140
    .line 141
    .line 142
    const v2, -0x7f000001

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    .line 152
    :cond_4
    invoke-virtual {p3, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    const/high16 v2, 0x42f00000    # 120.0f

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 162
    move-result v0

    .line 163
    float-to-int v0, v0

    .line 164
    .line 165
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 166
    .line 167
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 168
    .line 169
    if-eqz v3, :cond_5

    .line 170
    .line 171
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 175
    move-result-object v2

    .line 176
    goto :goto_2

    .line 177
    .line 178
    :cond_5
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    .line 179
    .line 180
    if-eqz v3, :cond_6

    .line 181
    .line 182
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 183
    goto :goto_2

    .line 184
    :cond_6
    move-object v2, v1

    .line 185
    .line 186
    :goto_2
    if-eqz v2, :cond_7

    .line 187
    .line 188
    .line 189
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 193
    .line 194
    mul-int/lit8 v0, v0, 0x3

    .line 195
    int-to-float v0, v0

    .line 196
    .line 197
    const/high16 v2, 0x40a00000    # 5.0f

    .line 198
    div-float/2addr v0, v2

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    const/high16 v3, 0x41a00000    # 20.0f

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 208
    move-result v2

    .line 209
    sub-float/2addr v0, v2

    .line 210
    float-to-int v0, v0

    .line 211
    .line 212
    :cond_7
    check-cast p3, Landroid/widget/TextView;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 216
    .line 217
    :cond_8
    sget p3, Lcom/narvii/lib/R$id;->note:I

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object p3

    .line 222
    .line 223
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationDetail:Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    move-result v0

    .line 228
    .line 229
    const/16 v2, 0x8

    .line 230
    const/4 v3, 0x0

    .line 231
    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    .line 235
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    goto :goto_3

    .line 237
    .line 238
    .line 239
    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    :goto_3
    instance-of v0, p3, Landroid/widget/TextView;

    .line 242
    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    check-cast p3, Landroid/widget/TextView;

    .line 246
    .line 247
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operationDetail:Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    :cond_a
    sget p3, Lcom/narvii/lib/R$id;->list_time_section_name:I

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 256
    .line 257
    iget p3, p1, Lcom/narvii/poweruser/history/ModerationHistory;->operation:I

    .line 258
    .line 259
    const/16 v0, 0x10b

    .line 260
    .line 261
    if-eq p3, v0, :cond_c

    .line 262
    .line 263
    const/16 v0, 0xcd

    .line 264
    .line 265
    if-ne p3, v0, :cond_b

    .line 266
    goto :goto_4

    .line 267
    :cond_b
    move p3, v3

    .line 268
    goto :goto_5

    .line 269
    :cond_c
    :goto_4
    const/4 p3, 0x1

    .line 270
    .line 271
    :goto_5
    iget-object v0, p1, Lcom/narvii/poweruser/history/ModerationHistory;->refObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 272
    .line 273
    if-nez v0, :cond_d

    .line 274
    goto :goto_6

    .line 275
    .line 276
    :cond_d
    const-string v1, "nickname"

    .line 277
    .line 278
    .line 279
    filled-new-array {v1}, [Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    .line 283
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 284
    move-result-object v1

    .line 285
    .line 286
    :goto_6
    sget v0, Lcom/narvii/lib/R$id;->target_container:I

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    move-result-object v0

    .line 291
    .line 292
    iget p1, p1, Lcom/narvii/poweruser/history/ModerationHistory;->objectType:I

    .line 293
    .line 294
    if-nez p1, :cond_e

    .line 295
    .line 296
    if-eqz p3, :cond_e

    .line 297
    .line 298
    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    move-result p1

    .line 301
    .line 302
    if-nez p1, :cond_e

    .line 303
    move v2, v3

    .line 304
    .line 305
    .line 306
    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    sget p1, Lcom/narvii/lib/R$id;->target_name:I

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object p1

    .line 318
    .line 319
    check-cast p1, Landroid/widget/TextView;

    .line 320
    .line 321
    new-instance p3, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    const-string v0, " "

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object p3

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    return-object p2
.end method

.method protected objectId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected operatorUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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
    or-int/lit16 p1, p1, 0x200

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/poweruser/history/ModerationHistoryListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;

    return-object v0
.end method
