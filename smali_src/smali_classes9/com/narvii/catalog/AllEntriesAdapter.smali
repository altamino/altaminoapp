.class public Lcom/narvii/catalog/AllEntriesAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# instance fields
.field public allEntryCategoryId:Ljava/lang/String;

.field public count:I

.field private dataLoded:Z

.field protected previewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field final previewListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryPreviewResponse;",
            ">;"
        }
    .end annotation
.end field

.field public showLoading:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/catalog/AllEntriesAdapter$1;

    .line 9
    .line 10
    const-class v0, Lcom/narvii/model/api/CategoryPreviewResponse;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/narvii/catalog/AllEntriesAdapter$1;-><init>(Lcom/narvii/catalog/AllEntriesAdapter;Ljava/lang/Class;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 16
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    :cond_2
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    move-object p1, p0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 7
    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p1

    .line 7
    int-to-long v0, p1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const-wide/16 v0, 0x3

    .line 11
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_a

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0d008b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a0799

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    const v0, 0x7f1201ed

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    iget v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    if-gez v0, :cond_0

    .line 35
    move-object v0, v1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget v2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    :goto_0
    const/4 v2, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static {p3, v0, v2}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0a0e51

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    .line 78
    .line 79
    if-nez p2, :cond_1

    .line 80
    move p2, v2

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 85
    move-result p2

    .line 86
    .line 87
    :goto_1
    sget-object p3, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a0757

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 97
    .line 98
    .line 99
    const v1, 0x7f0a0758

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/widget/CardView;

    .line 106
    .line 107
    .line 108
    const v3, 0x7f0a0759

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    check-cast v3, Lcom/narvii/widget/CardView;

    .line 115
    const/4 v4, 0x4

    .line 116
    .line 117
    if-lez p2, :cond_2

    .line 118
    move v5, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move v5, v4

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const/4 v5, 0x1

    .line 125
    .line 126
    if-le p2, v5, :cond_3

    .line 127
    move v6, v2

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    move v6, v4

    .line 130
    .line 131
    .line 132
    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const/4 v6, 0x2

    .line 134
    .line 135
    if-le p2, v6, :cond_4

    .line 136
    move v4, v2

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 143
    move-result-object v4

    .line 144
    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    if-lez p2, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    .line 154
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Lcom/narvii/model/Item;

    .line 158
    goto :goto_4

    .line 159
    :cond_5
    move-object v2, p3

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v0, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    if-le p2, v5, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    check-cast v0, Lcom/narvii/model/Item;

    .line 181
    goto :goto_5

    .line 182
    :cond_6
    move-object v0, p3

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-virtual {v1, v0}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    if-le p2, v6, :cond_7

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    .line 197
    move-result-object p2

    .line 198
    .line 199
    .line 200
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object p2

    .line 202
    move-object p3, p2

    .line 203
    .line 204
    check-cast p3, Lcom/narvii/model/Item;

    .line 205
    .line 206
    .line 207
    :cond_7
    invoke-virtual {v3, p3}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 208
    .line 209
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    move-result p2

    .line 214
    .line 215
    if-nez p2, :cond_9

    .line 216
    .line 217
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    .line 218
    .line 219
    if-eqz p2, :cond_8

    .line 220
    .line 221
    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 223
    move-result p2

    .line 224
    .line 225
    if-nez p2, :cond_9

    .line 226
    .line 227
    :cond_8
    iget-boolean p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->dataLoded:Z

    .line 228
    .line 229
    if-nez p2, :cond_9

    .line 230
    .line 231
    iput-boolean v5, p0, Lcom/narvii/catalog/AllEntriesAdapter;->dataLoded:Z

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 235
    move-result-object p2

    .line 236
    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    const-string v0, "/item-category/"

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v0, "/item-previews"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object p3

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 267
    move-result-object p2

    .line 268
    .line 269
    const-string p3, "api"

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    move-result-object p3

    .line 274
    .line 275
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 276
    .line 277
    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 281
    :cond_9
    return-object p1

    .line 282
    .line 283
    .line 284
    :cond_a
    const p1, 0x7f0d04e5

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 288
    move-result-object p1

    .line 289
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOfficalEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    return-object v0
.end method
