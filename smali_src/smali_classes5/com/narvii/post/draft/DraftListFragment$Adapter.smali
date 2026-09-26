.class Lcom/narvii/post/draft/DraftListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/draft/DraftListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/post/draft/DraftListFragment$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/post/draft/DraftListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private getIconBackgroundColor(I)I
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0603c0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x7f0603cd

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const p1, 0x7f0603c7

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const p1, 0x7f0603cf

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const p1, 0x7f0603ca

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const p1, 0x7f0603d0

    goto :goto_0

    :cond_5
    const p1, 0x106000b

    :goto_0
    return p1
.end method

.method private getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    const p1, 0x7f080234

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x4

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const p1, 0x7f080239

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x7

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    .line 19
    const p1, 0x7f080236

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x3

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    .line 26
    const p1, 0x7f08023a

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const/4 v0, 0x5

    .line 29
    .line 30
    if-ne p1, v0, :cond_4

    .line 31
    .line 32
    .line 33
    const p1, 0x7f080238

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    const/4 v0, 0x6

    .line 36
    .line 37
    if-ne p1, v0, :cond_5

    .line 38
    .line 39
    .line 40
    const p1, 0x7f08023b

    .line 41
    goto :goto_0

    .line 42
    :cond_5
    const/4 p1, 0x0

    .line 43
    .line 44
    :goto_0
    if-nez p1, :cond_6

    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    .line 48
    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
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
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "DraftList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;
    .locals 1

    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/draft/DraftListFragment$Stub;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p1

    .line 13
    int-to-long v0, p1

    .line 14
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "item"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "profile"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    const/4 p1, 0x2

    .line 32
    return p1

    .line 33
    .line 34
    :cond_1
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "thread"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    const/4 p1, 0x3

    .line 46
    return p1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->post:Lcom/narvii/post/PostObject;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x1

    .line 13
    .line 14
    if-eq v2, v4, :cond_2

    .line 15
    const/4 v5, 0x2

    .line 16
    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0d01ea

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    const v2, 0x7f0d01e9

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    const v2, 0x7f0d01eb

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    const v2, 0x7f0d01e6

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->title()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    const v5, 0x7f0a0799

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    iget-object p3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 54
    .line 55
    .line 56
    const v2, 0x7f12040c

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Landroid/widget/TextView;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    .line 75
    const v7, 0x7f06010e

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 79
    move-result v6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v6, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    const v7, 0x7f06010d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 102
    move-result v6

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    check-cast v2, Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const p3, 0x7f0a039d

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p3

    .line 122
    .line 123
    check-cast p3, Landroid/widget/TextView;

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->content()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    const p3, 0x7f0a04c8

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    check-cast p3, Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    if-eqz p3, :cond_4

    .line 146
    .line 147
    iget-wide v5, v2, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    .line 148
    .line 149
    const-wide/16 v7, 0x0

    .line 150
    .line 151
    cmp-long v2, v5, v7

    .line 152
    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    new-instance v2, Ljava/util/Date;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 158
    .line 159
    iget-wide v5, v0, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 163
    .line 164
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 165
    .line 166
    .line 167
    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    const p3, 0x7f0a0af7

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object p3

    .line 182
    .line 183
    const/16 v0, 0x8

    .line 184
    const/4 v2, 0x0

    .line 185
    .line 186
    if-eqz p3, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->hasVideo()Z

    .line 190
    move-result v5

    .line 191
    .line 192
    if-eqz v5, :cond_5

    .line 193
    move v5, v2

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    move v5, v0

    .line 196
    .line 197
    .line 198
    :goto_2
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :cond_6
    const p3, 0x7f0a06eb

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 208
    .line 209
    .line 210
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->icon()Ljava/lang/String;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    .line 214
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    move-result v5

    .line 216
    .line 217
    const-string v6, ""

    .line 218
    .line 219
    .line 220
    const v7, 0x7f0a0252

    .line 221
    .line 222
    .line 223
    const v8, 0x7f0a06fe

    .line 224
    .line 225
    if-nez v5, :cond_8

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    .line 229
    move-result p1

    .line 230
    .line 231
    if-ne p1, v4, :cond_7

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    :cond_7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->icon()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    .line 257
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 258
    .line 259
    iput-object v6, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_8
    iput-object v6, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 264
    .line 265
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    .line 270
    instance-of v5, v1, Lcom/narvii/blog/post/BlogPost;

    .line 271
    .line 272
    if-eqz v5, :cond_9

    .line 273
    .line 274
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    .line 275
    .line 276
    iget p1, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getIconBackgroundColor(I)I

    .line 291
    move-result p1

    .line 292
    .line 293
    .line 294
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 295
    move-result p1

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 299
    goto :goto_3

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    .line 303
    move-result v1

    .line 304
    .line 305
    if-ne v1, v3, :cond_a

    .line 306
    .line 307
    .line 308
    const p1, 0x7f080235

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    .line 318
    const v1, 0x7f060096

    .line 319
    .line 320
    .line 321
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 322
    move-result p1

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 326
    goto :goto_3

    .line 327
    .line 328
    .line 329
    :cond_a
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    .line 330
    move-result p1

    .line 331
    .line 332
    if-ne p1, v4, :cond_b

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    const p3, 0x7f080237

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 358
    move-result-object p3

    .line 359
    .line 360
    .line 361
    const v1, 0x7f0603d7

    .line 362
    .line 363
    .line 364
    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 365
    move-result p3

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 369
    goto :goto_3

    .line 370
    :cond_b
    const/4 p1, 0x0

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 377
    move-result-object p1

    .line 378
    .line 379
    .line 380
    const v1, 0x7f0603d9

    .line 381
    .line 382
    .line 383
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 384
    move-result p1

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 388
    .line 389
    .line 390
    :goto_3
    const p1, 0x7f0a0417

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 394
    move-result-object p1

    .line 395
    .line 396
    if-eqz p1, :cond_d

    .line 397
    .line 398
    iget-object p3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 399
    .line 400
    .line 401
    invoke-static {p3}, Lcom/narvii/post/draft/DraftListFragment;->v(Lcom/narvii/post/draft/DraftListFragment;)Z

    .line 402
    move-result p3

    .line 403
    .line 404
    if-eqz p3, :cond_c

    .line 405
    move v0, v2

    .line 406
    .line 407
    .line 408
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    :cond_d
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isListShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/post/draft/DraftListFragment;->v(Lcom/narvii/post/draft/DraftListFragment;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    const p3, 0x7f0a0417

    .line 23
    .line 24
    if-ne p1, p3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 53
    .line 54
    const-string p3, "blog"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p2

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    const-class p2, Lcom/narvii/blog/post/BlogPostActivity;

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 69
    .line 70
    const-string p3, "link"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p2

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    const-class p2, Lcom/narvii/blog/post/LinkPostActivity;

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 83
    .line 84
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 85
    .line 86
    const-string p3, "item"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 91
    .line 92
    if-eqz p2, :cond_4

    .line 93
    .line 94
    const-class p2, Lcom/narvii/item/post/ItemPostActivity;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_4
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 100
    .line 101
    const-string p3, "topic"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p2

    .line 106
    .line 107
    if-eqz p2, :cond_5

    .line 108
    .line 109
    const-class p2, Lcom/narvii/blog/post/TopicPostActivity;

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_5
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 115
    .line 116
    const-string p3, "quiz"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p2

    .line 121
    .line 122
    if-eqz p2, :cond_6

    .line 123
    .line 124
    const-class p2, Lcom/narvii/blog/post/QuizPostActivity;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_6
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 128
    .line 129
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 130
    .line 131
    const-string p3, "poll"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p2

    .line 136
    .line 137
    if-eqz p2, :cond_7

    .line 138
    .line 139
    const-class p2, Lcom/narvii/blog/post/PollPostActivity;

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :cond_7
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 143
    .line 144
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 145
    .line 146
    const-string p3, "image"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result p2

    .line 151
    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    const-class p2, Lcom/narvii/blog/post/ImagePostActivity;

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :cond_8
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 158
    .line 159
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 160
    .line 161
    const-string p3, "thread"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result p2

    .line 166
    .line 167
    if-eqz p2, :cond_9

    .line 168
    .line 169
    const-class p2, Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 170
    goto :goto_0

    .line 171
    .line 172
    :cond_9
    iget-object p2, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 173
    .line 174
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 175
    .line 176
    const-string p3, "profile"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result p2

    .line 181
    .line 182
    if-eqz p2, :cond_a

    .line 183
    .line 184
    const-class p2, Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 185
    goto :goto_0

    .line 186
    :cond_a
    const/4 p2, 0x0

    .line 187
    .line 188
    :goto_0
    if-nez p2, :cond_b

    .line 189
    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    const-string p3, "unknown draft type "

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 201
    .line 202
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 213
    goto :goto_1

    .line 214
    .line 215
    :cond_b
    new-instance p3, Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 219
    move-result-object p4

    .line 220
    .line 221
    .line 222
    invoke-direct {p3, p4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .line 224
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 227
    .line 228
    const-string p2, "draftId"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    .line 233
    const-string p1, "Source"

    .line 234
    .line 235
    const-string p2, "Drafts"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->DraftBox:Lcom/narvii/util/logging/LoggingSource;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    const-string p2, "loggingSource"

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    invoke-static {p0, p3}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 253
    :goto_1
    const/4 p1, 0x1

    .line 254
    return p1
.end method

.method public rebuild()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/narvii/post/DraftManager;->list(Ljava/lang/String;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_a

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/post/DraftInfo;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "blog"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    const-class v4, Lcom/narvii/blog/post/BlogPost;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 48
    .line 49
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    const-string v3, "link"

    .line 58
    .line 59
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 70
    .line 71
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_1
    const-string v3, "item"

    .line 80
    .line 81
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 92
    .line 93
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 94
    .line 95
    const-class v5, Lcom/narvii/item/post/ItemPost;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_2
    const-string v3, "topic"

    .line 104
    .line 105
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v3

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 116
    .line 117
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_3
    const-string v3, "quiz"

    .line 126
    .line 127
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 132
    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 138
    .line 139
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 143
    move-result-object v3

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_4
    const-string v3, "poll"

    .line 147
    .line 148
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v3

    .line 153
    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 159
    .line 160
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 164
    move-result-object v3

    .line 165
    goto :goto_1

    .line 166
    .line 167
    :cond_5
    const-string v3, "image"

    .line 168
    .line 169
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v3

    .line 174
    .line 175
    if-eqz v3, :cond_6

    .line 176
    .line 177
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 178
    .line 179
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 180
    .line 181
    iget-object v5, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v5, v4}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 185
    move-result-object v3

    .line 186
    goto :goto_1

    .line 187
    .line 188
    :cond_6
    const-string v3, "thread"

    .line 189
    .line 190
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v3

    .line 195
    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    iget-object v3, v2, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 199
    .line 200
    const-string v4, "userId"

    .line 201
    .line 202
    .line 203
    filled-new-array {v4}, [Ljava/lang/String;

    .line 204
    move-result-object v4

    .line 205
    .line 206
    .line 207
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 209
    .line 210
    if-nez v3, :cond_8

    .line 211
    .line 212
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 213
    .line 214
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 215
    .line 216
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 217
    .line 218
    const-class v5, Lcom/narvii/chat/post/ThreadPost;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 222
    move-result-object v3

    .line 223
    goto :goto_1

    .line 224
    .line 225
    :cond_7
    const-string v3, "profile"

    .line 226
    .line 227
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v3

    .line 232
    .line 233
    if-eqz v3, :cond_8

    .line 234
    .line 235
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 238
    .line 239
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 240
    .line 241
    const-class v5, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    .line 245
    move-result-object v3

    .line 246
    goto :goto_1

    .line 247
    :cond_8
    const/4 v3, 0x0

    .line 248
    .line 249
    :goto_1
    if-nez v3, :cond_9

    .line 250
    .line 251
    iget-object v3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 252
    .line 253
    iget-object v3, v3, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 254
    .line 255
    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 259
    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    const-string v4, "unknown draft type "

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    iget-object v2, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    .line 280
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_9
    new-instance v4, Lcom/narvii/post/draft/DraftListFragment$Stub;

    .line 285
    .line 286
    iget-object v5, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 287
    .line 288
    .line 289
    invoke-direct {v4, v5}, Lcom/narvii/post/draft/DraftListFragment$Stub;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 290
    .line 291
    iput-object v2, v4, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 292
    .line 293
    iput-object v3, v4, Lcom/narvii/post/draft/DraftListFragment$Stub;->post:Lcom/narvii/post/PostObject;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_a
    iput-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 310
    move-result v0

    .line 311
    .line 312
    if-eqz v0, :cond_b

    .line 313
    .line 314
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->w(Lcom/narvii/post/draft/DraftListFragment;)Landroidx/appcompat/widget/AppCompatButton;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    if-eqz v0, :cond_b

    .line 321
    .line 322
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 323
    const/4 v1, 0x0

    .line 324
    .line 325
    .line 326
    invoke-static {v0, v1}, Lcom/narvii/post/draft/DraftListFragment;->x(Lcom/narvii/post/draft/DraftListFragment;Z)V

    .line 327
    .line 328
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 329
    .line 330
    .line 331
    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->y(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 332
    .line 333
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->w(Lcom/narvii/post/draft/DraftListFragment;)Landroidx/appcompat/widget/AppCompatButton;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    :cond_b
    return-void
.end method
