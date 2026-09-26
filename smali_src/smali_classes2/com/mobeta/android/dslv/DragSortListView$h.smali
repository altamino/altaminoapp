.class Lcom/mobeta/android/dslv/DragSortListView$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "mobeta"

    .line 3
    .line 4
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumInBuffer:I

    .line 18
    .line 19
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumFlushes:I

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 22
    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string v2, "dslv_state.txt"

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mFile:Ljava/io/File;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    :try_start_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mFile:Ljava/io/File;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 50
    .line 51
    const-string p1, "file created"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    .line 58
    const-string v1, "Could not create dslv_state.txt"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "<DSLVState>\n"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "    <Positions>"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v2, 0x0

    .line 33
    move v3, v2

    .line 34
    .line 35
    :goto_0
    const-string v4, ","

    .line 36
    .line 37
    if-ge v3, v0, :cond_1

    .line 38
    .line 39
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 40
    .line 41
    add-int v6, v1, v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "</Positions>\n"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "    <Tops>"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move v3, v2

    .line 66
    .line 67
    :goto_1
    if-ge v3, v0, :cond_2

    .line 68
    .line 69
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 79
    move-result v6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_2
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "</Tops>\n"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v5, "    <Bottoms>"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move v3, v2

    .line 104
    .line 105
    :goto_2
    if-ge v3, v0, :cond_3

    .line 106
    .line 107
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 108
    .line 109
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 117
    move-result v6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_3
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, "</Bottoms>\n"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v5, "    <FirstExpPos>"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 143
    .line 144
    .line 145
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->g(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 146
    move-result v5

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v5, "</FirstExpPos>\n"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v5, "    <FirstExpBlankHeight>"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 164
    .line 165
    .line 166
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->g(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 167
    move-result v6

    .line 168
    .line 169
    .line 170
    invoke-static {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->C(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 171
    move-result v5

    .line 172
    .line 173
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 174
    .line 175
    .line 176
    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->g(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 177
    move-result v7

    .line 178
    .line 179
    .line 180
    invoke-static {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->B(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 181
    move-result v6

    .line 182
    sub-int/2addr v5, v6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, "</FirstExpBlankHeight>\n"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v5, "    <SecondExpPos>"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 200
    .line 201
    .line 202
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->q(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 203
    move-result v5

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v5, "</SecondExpPos>\n"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v5, "    <SecondExpBlankHeight>"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 221
    .line 222
    .line 223
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->q(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 224
    move-result v6

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->C(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 228
    move-result v5

    .line 229
    .line 230
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 231
    .line 232
    .line 233
    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->q(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 234
    move-result v7

    .line 235
    .line 236
    .line 237
    invoke-static {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->B(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 238
    move-result v6

    .line 239
    sub-int/2addr v5, v6

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v5, "</SecondExpBlankHeight>\n"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v5, "    <SrcPos>"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 257
    .line 258
    .line 259
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->r(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 260
    move-result v5

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v5, "</SrcPos>\n"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v5, "    <SrcHeight>"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 278
    .line 279
    .line 280
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->j(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 281
    move-result v5

    .line 282
    .line 283
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    .line 287
    move-result v6

    .line 288
    add-int/2addr v5, v6

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v5, "</SrcHeight>\n"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v5, "    <ViewHeight>"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 309
    move-result v5

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v5, "</ViewHeight>\n"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v5, "    <LastY>"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 327
    .line 328
    .line 329
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->n(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 330
    move-result v5

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v5, "</LastY>\n"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v5, "    <FloatY>"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 348
    .line 349
    .line 350
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->l(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 351
    move-result v5

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v5, "</FloatY>\n"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v5, "    <ShuffleEdges>"

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    move v3, v2

    .line 368
    .line 369
    :goto_3
    if-ge v3, v0, :cond_4

    .line 370
    .line 371
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 372
    .line 373
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 374
    .line 375
    add-int v7, v1, v3

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 379
    move-result-object v8

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 383
    move-result v8

    .line 384
    .line 385
    .line 386
    invoke-static {v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->D(Lcom/mobeta/android/dslv/DragSortListView;II)I

    .line 387
    move-result v6

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    goto :goto_3

    .line 397
    .line 398
    :cond_4
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v1, "</ShuffleEdges>\n"

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v1, "</DSLVState>\n"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumInBuffer:I

    .line 413
    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 415
    .line 416
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumInBuffer:I

    .line 417
    .line 418
    const/16 v1, 0x3e8

    .line 419
    .line 420
    if-le v0, v1, :cond_5

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$h;->b()V

    .line 424
    .line 425
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumInBuffer:I

    .line 426
    :cond_5
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumFlushes:I

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v2

    .line 15
    .line 16
    :goto_0
    new-instance v3, Ljava/io/FileWriter;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mFile:Ljava/io/File;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 36
    move-result v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 46
    .line 47
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumFlushes:I

    .line 48
    add-int/2addr v0, v2

    .line 49
    .line 50
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "<DSLVStates>\n"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mNumFlushes:I

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 14
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mBuilder:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "</DSLVStates>\n"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$h;->b()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$h;->mTracking:Z

    .line 18
    :cond_0
    return-void
.end method
