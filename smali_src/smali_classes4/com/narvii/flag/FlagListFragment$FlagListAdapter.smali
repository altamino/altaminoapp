.class Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/FlagListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlagListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/flag/model/Flag;",
        "Lcom/narvii/flag/model/FlagListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_EXTERNAL_POST:I = 0x1

.field private static final TYPE_NORMAL:I


# instance fields
.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/flag/FlagListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 16
    return-void
.end method

.method private isImodDisable(Lcom/narvii/flag/model/Flag;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->operator:Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/model/User;->role:I

    .line 11
    .line 12
    const/16 v1, 0xfe

    .line 13
    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v1, "resolved"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method

.method private showImodeOperationDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0d024a

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a0059

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    new-instance v3, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, p0, v0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;-><init>(Lcom/narvii/flag/FlagListFragment$FlagListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 47
    return-void
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
    const-string v0, "/flag"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "status"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->u(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "type"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/flag/model/Flag;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/flag/model/Flag;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/flag/model/Flag;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/flag/model/Flag;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    .line 15
    move-result p1

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    return v1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/flag/model/Flag;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/flag/model/Flag;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0d0284

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eq p1, v3, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    const v2, 0x7f0d0285

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget p1, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    if-ne p1, v3, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-ne p1, v5, :cond_2

    .line 39
    move p1, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move p1, v4

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    const p3, 0x7f0a0171

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 55
    .line 56
    .line 57
    const v2, 0x7f0a09f9

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    const v6, 0x7f0a0dda

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v6, Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    const v7, 0x7f0a05d0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    instance-of p1, v2, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    check-cast v2, Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getExternalOriginName(Landroid/content/Context;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_4
    if-eqz v1, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 123
    .line 124
    instance-of p1, v2, Lcom/narvii/widget/NicknameView;

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    :cond_6
    :goto_2
    iget p1, v0, Lcom/narvii/flag/model/Flag;->flaggedCount:I

    .line 148
    .line 149
    const/16 p3, 0x63

    .line 150
    .line 151
    if-le p1, p3, :cond_7

    .line 152
    .line 153
    const-string v1, "99+"

    .line 154
    goto :goto_3

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    if-le p1, p3, :cond_8

    .line 168
    .line 169
    const/high16 p1, 0x41800000    # 16.0f

    .line 170
    goto :goto_4

    .line 171
    .line 172
    :cond_8
    const/high16 p1, 0x41a00000    # 20.0f

    .line 173
    .line 174
    .line 175
    :goto_4
    invoke-virtual {v7, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    .line 177
    iget p1, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 178
    .line 179
    if-ne p1, v3, :cond_9

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    .line 183
    move-result p3

    .line 184
    .line 185
    if-eqz p3, :cond_9

    .line 186
    .line 187
    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 188
    .line 189
    .line 190
    invoke-static {p3}, Lcom/narvii/flag/FlagListFragment;->y(Lcom/narvii/flag/FlagListFragment;)Landroid/util/SparseArray;

    .line 191
    move-result-object p3

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, v1, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-result-object p1

    .line 204
    .line 205
    check-cast p1, Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result p1

    .line 210
    .line 211
    :cond_9
    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 212
    .line 213
    .line 214
    invoke-static {p3, p1}, Lcom/narvii/flag/FlagListFragment;->C(Lcom/narvii/flag/FlagListFragment;I)Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    const p3, 0x7f0a05cf

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object p3

    .line 223
    .line 224
    check-cast p3, Landroid/widget/TextView;

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    move-result v1

    .line 229
    .line 230
    if-eqz v1, :cond_a

    .line 231
    move v1, v5

    .line 232
    goto :goto_5

    .line 233
    :cond_a
    move v1, v4

    .line 234
    .line 235
    .line 236
    :goto_5
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    const p1, 0x7f0a0e37

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    check-cast p1, Lcom/narvii/flag/FlagTagLayout;

    .line 249
    .line 250
    iget-object p3, v0, Lcom/narvii/flag/model/Flag;->flaggedTypes:Ljava/util/List;

    .line 251
    .line 252
    .line 253
    invoke-static {p3}, Lcom/narvii/flag/FlagTag;->getFlagTagList(Ljava/util/List;)Ljava/util/List;

    .line 254
    move-result-object p3

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p3}, Lcom/narvii/flag/FlagTagLayout;->addTag(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 261
    .line 262
    .line 263
    const p1, 0x7f0a05ce

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    check-cast p1, Landroid/widget/TextView;

    .line 270
    .line 271
    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 272
    .line 273
    iget-object v1, v0, Lcom/narvii/flag/model/Flag;->modifiedTime:Ljava/util/Date;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 277
    move-result-object p3

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    const p1, 0x7f0a0c2f

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    move-result-object p1

    .line 288
    .line 289
    check-cast p1, Landroid/widget/TextView;

    .line 290
    .line 291
    .line 292
    const p3, 0x7f0a0c2e

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    move-result-object p3

    .line 297
    .line 298
    iget v1, v0, Lcom/narvii/flag/model/Flag;->status:I

    .line 299
    const/4 v2, 0x2

    .line 300
    .line 301
    if-ne v1, v2, :cond_b

    .line 302
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 309
    .line 310
    .line 311
    const v3, 0x7f120799

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 315
    move-result-object v2

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v2, " "

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 326
    .line 327
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->lastResolvedTime:Ljava/util/Date;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    goto :goto_6

    .line 346
    .line 347
    .line 348
    :cond_b
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_6
    return-object p2

    .line 350
    :cond_c
    const/4 p1, 0x0

    .line 351
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/flag/model/Flag;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    move-object v1, p3

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/flag/model/Flag;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->isImodDisable(Lcom/narvii/flag/model/Flag;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->showImodeOperationDialog()V

    .line 18
    return p2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    move-result v3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string p3, "resolved"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    :goto_0
    move-object v4, p1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->u(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :goto_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->x(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    return p2
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 3
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/flag/FlagListFragment;->B(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->v(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resolved"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->w(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->w(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/flag/model/FlagListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/flag/model/FlagListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/flag/model/FlagListResponse;

    return-object v0
.end method
