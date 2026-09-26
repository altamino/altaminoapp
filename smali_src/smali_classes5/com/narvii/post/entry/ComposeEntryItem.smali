.class public Lcom/narvii/post/entry/ComposeEntryItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private levelNo:Landroid/widget/TextView;

.field private lockView:Lcom/narvii/widget/TintButton;

.field private plusView:Landroid/widget/ImageView;

.field private popButton:Lcom/narvii/widget/PopButton;

.field private tvLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private getIconDrawableByEntryItem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string v1, "wikiEntry"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_1
    const/16 v2, 0x9

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v1, "webLink"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x8

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v1, "go_live"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v2, 0x7

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :sswitch_3
    const-string v1, "image"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v2, 0x6

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :sswitch_4
    const-string v1, "draft"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x5

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :sswitch_5
    const-string v1, "quiz"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    const/4 v2, 0x4

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :sswitch_6
    const-string v1, "poll"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    const/4 v2, 0x3

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :sswitch_7
    const-string v1, "blog"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-nez p1, :cond_8

    .line 106
    goto :goto_0

    .line 107
    :cond_8
    const/4 v2, 0x2

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :sswitch_8
    const-string v1, "question"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_9

    .line 117
    goto :goto_0

    .line 118
    :cond_9
    const/4 v2, 0x1

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :sswitch_9
    const-string v1, "post_publicChat"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    if-nez p1, :cond_a

    .line 128
    goto :goto_0

    .line 129
    :cond_a
    const/4 v2, 0x0

    .line 130
    .line 131
    .line 132
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 133
    return-object v0

    .line 134
    .line 135
    .line 136
    :pswitch_0
    const p1, 0x7f080237

    .line 137
    goto :goto_1

    .line 138
    .line 139
    .line 140
    :pswitch_1
    const p1, 0x7f080238

    .line 141
    goto :goto_1

    .line 142
    .line 143
    .line 144
    :pswitch_2
    const p1, 0x7f0803e5

    .line 145
    goto :goto_1

    .line 146
    .line 147
    .line 148
    :pswitch_3
    const p1, 0x7f080236

    .line 149
    goto :goto_1

    .line 150
    .line 151
    .line 152
    :pswitch_4
    const p1, 0x7f08043a

    .line 153
    goto :goto_1

    .line 154
    .line 155
    .line 156
    :pswitch_5
    const p1, 0x7f08023b

    .line 157
    goto :goto_1

    .line 158
    .line 159
    .line 160
    :pswitch_6
    const p1, 0x7f080239

    .line 161
    goto :goto_1

    .line 162
    .line 163
    .line 164
    :pswitch_7
    const p1, 0x7f080234

    .line 165
    goto :goto_1

    .line 166
    .line 167
    .line 168
    :pswitch_8
    const p1, 0x7f08023a

    .line 169
    goto :goto_1

    .line 170
    .line 171
    .line 172
    :pswitch_9
    const p1, 0x7f080235

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    nop

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    :sswitch_data_0
    .sparse-switch
        -0x6d2189a0 -> :sswitch_9
        -0x457dc41a -> :sswitch_8
        0x2e2fa2 -> :sswitch_7
        0x3497bf -> :sswitch_6
        0x352255 -> :sswitch_5
        0x5b679a1 -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0xb792de3 -> :sswitch_2
        0x48e8256e -> :sswitch_1
        0x5a92b6a2 -> :sswitch_0
    .end sparse-switch

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPostEntryBackgroundColor(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0603c0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    .line 13
    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "wikiEntry"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    const/16 v2, 0x9

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "webLink"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v2, 0x8

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_2
    const-string v1, "go_live"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x7

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :sswitch_3
    const-string v1, "image"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const/4 v2, 0x6

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :sswitch_4
    const-string v1, "draft"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-nez p1, :cond_5

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, 0x5

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :sswitch_5
    const-string v1, "quiz"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const/4 v2, 0x4

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :sswitch_6
    const-string v1, "poll"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    goto :goto_0

    .line 98
    :cond_7
    const/4 v2, 0x3

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :sswitch_7
    const-string v1, "blog"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_8

    .line 108
    goto :goto_0

    .line 109
    :cond_8
    const/4 v2, 0x2

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :sswitch_8
    const-string v1, "question"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-nez p1, :cond_9

    .line 119
    goto :goto_0

    .line 120
    :cond_9
    const/4 v2, 0x1

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :sswitch_9
    const-string v1, "post_publicChat"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-nez p1, :cond_a

    .line 130
    goto :goto_0

    .line 131
    :cond_a
    const/4 v2, 0x0

    .line 132
    .line 133
    .line 134
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :pswitch_0
    const v0, 0x7f0603d7

    .line 139
    goto :goto_1

    .line 140
    .line 141
    .line 142
    :pswitch_1
    const v0, 0x7f0603ca

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :pswitch_2
    const v0, 0x7f060130

    .line 147
    goto :goto_1

    .line 148
    .line 149
    .line 150
    :pswitch_3
    const v0, 0x7f0603c7

    .line 151
    goto :goto_1

    .line 152
    .line 153
    .line 154
    :pswitch_4
    const v0, 0x7f0603c1

    .line 155
    goto :goto_1

    .line 156
    .line 157
    .line 158
    :pswitch_5
    const v0, 0x7f0603d0

    .line 159
    goto :goto_1

    .line 160
    .line 161
    .line 162
    :pswitch_6
    const v0, 0x7f0603cd

    .line 163
    goto :goto_1

    .line 164
    .line 165
    .line 166
    :pswitch_7
    const v0, 0x7f0603cf

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :pswitch_8
    const v0, 0x7f060096

    .line 171
    :goto_1
    :pswitch_9
    return v0

    .line 172
    nop

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    :sswitch_data_0
    .sparse-switch
        -0x6d2189a0 -> :sswitch_9
        -0x457dc41a -> :sswitch_8
        0x2e2fa2 -> :sswitch_7
        0x3497bf -> :sswitch_6
        0x352255 -> :sswitch_5
        0x5b679a1 -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0xb792de3 -> :sswitch_2
        0x48e8256e -> :sswitch_1
        0x5a92b6a2 -> :sswitch_0
    .end sparse-switch

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPostNameByEntryItem(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120ec5

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    .line 13
    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "wikiEntry"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    const/16 v2, 0x9

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "webLink"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v2, 0x8

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_2
    const-string v1, "go_live"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x7

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :sswitch_3
    const-string v1, "image"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const/4 v2, 0x6

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :sswitch_4
    const-string v1, "draft"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-nez p1, :cond_5

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    const/4 v2, 0x5

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :sswitch_5
    const-string v1, "quiz"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const/4 v2, 0x4

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :sswitch_6
    const-string v1, "poll"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    goto :goto_0

    .line 98
    :cond_7
    const/4 v2, 0x3

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :sswitch_7
    const-string v1, "blog"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_8

    .line 108
    goto :goto_0

    .line 109
    :cond_8
    const/4 v2, 0x2

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :sswitch_8
    const-string v1, "question"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-nez p1, :cond_9

    .line 119
    goto :goto_0

    .line 120
    :cond_9
    const/4 v2, 0x1

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :sswitch_9
    const-string v1, "post_publicChat"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-nez p1, :cond_a

    .line 130
    goto :goto_0

    .line 131
    :cond_a
    const/4 v2, 0x0

    .line 132
    .line 133
    .line 134
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :pswitch_0
    const v0, 0x7f120ec8

    .line 139
    goto :goto_1

    .line 140
    .line 141
    .line 142
    :pswitch_1
    const v0, 0x7f120ec9

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :pswitch_2
    const v0, 0x7f120239

    .line 147
    goto :goto_1

    .line 148
    .line 149
    .line 150
    :pswitch_3
    const v0, 0x7f120ec7

    .line 151
    goto :goto_1

    .line 152
    .line 153
    .line 154
    :pswitch_4
    const v0, 0x7f120ec1

    .line 155
    goto :goto_1

    .line 156
    .line 157
    .line 158
    :pswitch_5
    const v0, 0x7f120ecc

    .line 159
    goto :goto_1

    .line 160
    .line 161
    .line 162
    :pswitch_6
    const v0, 0x7f120eca

    .line 163
    goto :goto_1

    .line 164
    .line 165
    .line 166
    :pswitch_7
    const v0, 0x7f120ecb

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :pswitch_8
    const v0, 0x7f120ec6

    .line 171
    :goto_1
    :pswitch_9
    return v0

    .line 172
    nop

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    :sswitch_data_0
    .sparse-switch
        -0x6d2189a0 -> :sswitch_9
        -0x457dc41a -> :sswitch_8
        0x2e2fa2 -> :sswitch_7
        0x3497bf -> :sswitch_6
        0x352255 -> :sswitch_5
        0x5b679a1 -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0xb792de3 -> :sswitch_2
        0x48e8256e -> :sswitch_1
        0x5a92b6a2 -> :sswitch_0
    .end sparse-switch

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0b47

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/PopButton;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0b59

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a07db

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a07dc

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0b0a

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/post/entry/ComposeEntryItem;->plusView:Landroid/widget/ImageView;

    .line 59
    return-void
.end method

.method public setEntryItem(Lcom/narvii/app/NVContext;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;Ljava/lang/String;I)V
    .locals 7

    .line 1
    .line 2
    iget-boolean p2, p2, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lcom/narvii/modulization/entry/EntryManager;->getEntryItem(Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getIconDrawableByEntryItem(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "config"

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 37
    .line 38
    const-string v2, "draft"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getPostEntryBackgroundColor(Ljava/lang/String;)I

    .line 58
    move-result v6

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 62
    move-result v5

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4, v5}, Lcom/narvii/modulization/entry/EntryItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->popButton:Lcom/narvii/widget/PopButton;

    .line 72
    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 77
    move-result v3

    .line 78
    .line 79
    if-nez v3, :cond_0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    const/high16 v3, 0x30000000

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    const/4 v3, -0x1

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p3}, Lcom/narvii/post/entry/ComposeEntryItem;->getPostNameByEntryItem(Ljava/lang/String;)I

    .line 97
    move-result v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    if-lez p4, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    const v2, 0x7f120ec1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->tvLabel:Landroid/widget/TextView;

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p1, " ("

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p1, ")"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-static {p3}, Lcom/narvii/modulization/entry/EntryManager;->getEntryPath(Ljava/lang/String;)[Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    const/4 p4, 0x0

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    if-nez p2, :cond_5

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    iget-object p1, p1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 169
    .line 170
    if-nez p1, :cond_4

    .line 171
    goto :goto_2

    .line 172
    .line 173
    :cond_4
    iget p1, p1, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 174
    goto :goto_3

    .line 175
    :cond_5
    :goto_2
    move p1, p4

    .line 176
    .line 177
    :goto_3
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    .line 178
    .line 179
    const/16 v0, 0x8

    .line 180
    .line 181
    if-lez p1, :cond_6

    .line 182
    move v2, p4

    .line 183
    goto :goto_4

    .line 184
    :cond_6
    move v2, v0

    .line 185
    .line 186
    .line 187
    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    .line 190
    .line 191
    if-lez p1, :cond_7

    .line 192
    goto :goto_5

    .line 193
    :cond_7
    move p4, v0

    .line 194
    .line 195
    .line 196
    :goto_5
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    iget-object p2, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    .line 199
    .line 200
    new-instance p4, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    const-string v2, "LV"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 222
    move-result p1

    .line 223
    .line 224
    if-nez p1, :cond_9

    .line 225
    .line 226
    const-string p1, "post_publicChat"

    .line 227
    .line 228
    .line 229
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    move-result p1

    .line 231
    .line 232
    if-nez p1, :cond_8

    .line 233
    .line 234
    const-string p1, "go_live"

    .line 235
    .line 236
    .line 237
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    move-result p1

    .line 239
    .line 240
    if-eqz p1, :cond_9

    .line 241
    .line 242
    :cond_8
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->lockView:Lcom/narvii/widget/TintButton;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    iget-object p1, p0, Lcom/narvii/post/entry/ComposeEntryItem;->levelNo:Landroid/widget/TextView;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_9
    return-void
.end method
