.class Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/review/CatalogSubmissionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/catalog/review/ItemSubmission;",
        "Lcom/narvii/catalog/review/ItemSubmissionResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final expands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final fmt:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 20
    return-void
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
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/knowledge-base-request"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    .line 13
    .line 14
    const-string v1, "type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/catalog/review/ItemSubmission;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/catalog/review/ItemSubmission;

    return-object v0
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
    .locals 5

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/catalog/review/ItemSubmission;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d0097

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0a0c09

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x4

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-ne v1, v4, :cond_0

    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const p3, 0x7f0a0141

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 48
    .line 49
    if-ne v1, v4, :cond_1

    .line 50
    move v1, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v1, v3

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    const p3, 0x7f0a0df7

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 74
    .line 75
    if-eq v1, v4, :cond_2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v2, v3

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    check-cast p3, Landroid/widget/TextView;

    .line 87
    .line 88
    iget v0, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    .line 89
    const/4 v1, 0x2

    .line 90
    .line 91
    if-eq v0, v1, :cond_5

    .line 92
    const/4 v1, 0x3

    .line 93
    .line 94
    if-eq v0, v1, :cond_4

    .line 95
    .line 96
    if-eq v0, v3, :cond_3

    .line 97
    goto :goto_3

    .line 98
    .line 99
    .line 100
    :cond_3
    const v0, 0x7f1201e4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    .line 105
    .line 106
    const v0, 0x7f0809db

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    .line 111
    .line 112
    const v0, -0x555556

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    goto :goto_3

    .line 117
    .line 118
    .line 119
    :cond_4
    const v0, 0x7f120fcf

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0809dd

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    const v0, -0x1afff0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    goto :goto_3

    .line 136
    .line 137
    .line 138
    :cond_5
    const v0, 0x7f12016e

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .line 143
    .line 144
    const v0, 0x7f0809dc

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    .line 149
    .line 150
    const v0, -0xcd56ee

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    :goto_3
    const p3, 0x7f0a0756

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 163
    .line 164
    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object p3

    .line 172
    .line 173
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    const p3, 0x7f0a0e51

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->message:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    check-cast p3, Lcom/narvii/widget/ExpandTextView;

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    .line 199
    .line 200
    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 204
    move-result v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    .line 208
    .line 209
    .line 210
    const p3, 0x7f0a053c

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object p3

    .line 215
    .line 216
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    iget-object p3, p1, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    .line 222
    const/4 v0, 0x0

    .line 223
    .line 224
    if-eqz p3, :cond_6

    .line 225
    .line 226
    iget-object p3, p3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 227
    goto :goto_4

    .line 228
    :cond_6
    move-object p3, v0

    .line 229
    .line 230
    .line 231
    :goto_4
    const v1, 0x7f0a0171

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 238
    .line 239
    if-nez p3, :cond_7

    .line 240
    goto :goto_5

    .line 241
    .line 242
    .line 243
    :cond_7
    invoke-virtual {p3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    :goto_5
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    const v0, 0x7f0a09f9

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, p3, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    move-result-object p3

    .line 264
    .line 265
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object p3

    .line 273
    .line 274
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    const p3, 0x7f0a0408

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    move-result-object p3

    .line 285
    .line 286
    check-cast p3, Landroid/widget/TextView;

    .line 287
    .line 288
    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 289
    .line 290
    iget-object p1, p1, Lcom/narvii/catalog/review/ItemSubmission;->createdTime:Ljava/util/Date;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    move-object v0, p3

    .line 2
    .line 3
    check-cast v0, Lcom/narvii/catalog/review/ItemSubmission;

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    const v3, 0x7f0a0c09

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->reject(Lcom/narvii/catalog/review/ItemSubmission;)V

    .line 21
    return v1

    .line 22
    .line 23
    :cond_0
    if-eqz p5, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    const v3, 0x7f0a0141

    .line 31
    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->approve(Lcom/narvii/catalog/review/ItemSubmission;)V

    .line 38
    return v1

    .line 39
    .line 40
    :cond_1
    if-eqz p5, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    const v3, 0x7f0a0756

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget-object p1, v0, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 59
    return v1

    .line 60
    .line 61
    :cond_2
    if-eqz p5, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    const v3, 0x7f0a053c

    .line 69
    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    .line 73
    .line 74
    iget-object p2, v0, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    return v1

    .line 82
    .line 83
    :cond_3
    if-eqz p5, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 87
    move-result v2

    .line 88
    .line 89
    .line 90
    const v3, 0x7f0a0171

    .line 91
    .line 92
    if-eq v2, v3, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 96
    move-result v2

    .line 97
    .line 98
    .line 99
    const v3, 0x7f0a09f9

    .line 100
    .line 101
    if-ne v2, v3, :cond_6

    .line 102
    .line 103
    :cond_4
    iget-object p1, v0, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 106
    .line 107
    .line 108
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-nez p1, :cond_5

    .line 112
    return v1

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-static {p0, p1}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 116
    return v1

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 120
    move-result p1

    .line 121
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/catalog/review/ItemSubmission;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/catalog/review/ItemSubmissionResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/catalog/review/ItemSubmissionResponse;

    return-object v0
.end method
