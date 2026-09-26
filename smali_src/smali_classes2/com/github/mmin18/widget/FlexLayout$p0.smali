.class Lcom/github/mmin18/widget/FlexLayout$p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p0"
.end annotation


# instance fields
.field private chars:[C

.field private from:Ljava/lang/String;

.field private i:I

.field private n:I

.field private orig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->chars:[C

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->n:I

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 21
    .line 22
    iput-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/StringBuilder;I)F
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    const-string v1, ", "

    .line 4
    .line 5
    const-string v2, "="

    .line 6
    .line 7
    if-eq p3, v0, :cond_4

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    add-int/2addr p3, v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    const-string v0, "dimen"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    const-string v5, "unknown identifier "

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    const-string v4, "android:dimen"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    const-string v3, "android"

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p3, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-result p3

    .line 51
    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p2, " is not supported in AndroidStudio Preview, "

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1

    .line 93
    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 137
    move-result p1

    .line 138
    return p1

    .line 139
    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p1

    .line 176
    .line 177
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v0, "unknown token "

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p2

    .line 211
    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    const-string v1, "unknown token "

    .line 4
    .line 5
    const-string v2, "="

    .line 6
    .line 7
    const-string v3, ", "

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    if-ne p3, v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object p2, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 17
    array-length p3, p2

    .line 18
    .line 19
    :goto_0
    if-ge v4, p3, :cond_1

    .line 20
    .line 21
    aget-object v0, p2, v4

    .line 22
    .line 23
    iget-object v5, v0, Lcom/github/mmin18/widget/FlexLayout$m0;->op:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v5

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p2

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p2, v4, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    const/4 v5, 0x1

    .line 76
    add-int/2addr p3, v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    const-string p3, "this"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p3

    .line 87
    const/4 v6, 0x4

    .line 88
    const/4 v7, 0x3

    .line 89
    const/4 v8, 0x2

    .line 90
    .line 91
    if-eqz p3, :cond_3

    .line 92
    move p1, v4

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    const-string p3, "prev"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p3

    .line 101
    .line 102
    if-eqz p3, :cond_4

    .line 103
    move p1, v5

    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :cond_4
    const-string p3, "next"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p3

    .line 112
    .line 113
    if-eqz p3, :cond_5

    .line 114
    move p1, v8

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_5
    const-string p3, "parent"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p3

    .line 123
    .line 124
    if-eqz p3, :cond_6

    .line 125
    move p1, v7

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_6
    const-string p3, "screen"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result p3

    .line 133
    .line 134
    if-eqz p3, :cond_7

    .line 135
    move p1, v6

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_7
    const-string p3, "android:"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    move-result p3

    .line 143
    .line 144
    const-string v9, "id"

    .line 145
    .line 146
    if-eqz p3, :cond_8

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const/16 p3, 0x8

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 156
    move-result-object p3

    .line 157
    .line 158
    const-string v10, "android"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-result p1

    .line 163
    goto :goto_1

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v0, v9, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-result p1

    .line 176
    .line 177
    :goto_1
    if-nez p1, :cond_a

    .line 178
    .line 179
    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    .line 180
    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeId(Ljava/lang/String;)I

    .line 185
    move-result p1

    .line 186
    goto :goto_2

    .line 187
    .line 188
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    const-string p3, "unknown identifier "

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    iget-object p3, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    iget-object p3, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p2

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p1

    .line 226
    .line 227
    :cond_a
    :goto_2
    const-string p3, "left"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p3

    .line 232
    .line 233
    if-eqz p3, :cond_b

    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_b
    const-string p3, "top"

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result p3

    .line 242
    .line 243
    if-eqz p3, :cond_c

    .line 244
    move v4, v5

    .line 245
    goto :goto_3

    .line 246
    .line 247
    :cond_c
    const-string p3, "right"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result p3

    .line 252
    .line 253
    if-eqz p3, :cond_d

    .line 254
    move v4, v8

    .line 255
    goto :goto_3

    .line 256
    .line 257
    :cond_d
    const-string p3, "bottom"

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result p3

    .line 262
    .line 263
    if-eqz p3, :cond_e

    .line 264
    move v4, v7

    .line 265
    goto :goto_3

    .line 266
    .line 267
    :cond_e
    const-string p3, "centerX"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result p3

    .line 272
    .line 273
    if-eqz p3, :cond_f

    .line 274
    move v4, v6

    .line 275
    goto :goto_3

    .line 276
    .line 277
    :cond_f
    const-string p3, "centerY"

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result p3

    .line 282
    .line 283
    if-eqz p3, :cond_10

    .line 284
    const/4 v4, 0x5

    .line 285
    goto :goto_3

    .line 286
    .line 287
    :cond_10
    const-string/jumbo p3, "width"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result p3

    .line 292
    .line 293
    if-eqz p3, :cond_11

    .line 294
    const/4 v4, 0x6

    .line 295
    goto :goto_3

    .line 296
    .line 297
    :cond_11
    const-string p3, "height"

    .line 298
    .line 299
    .line 300
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result p3

    .line 302
    .line 303
    if-eqz p3, :cond_12

    .line 304
    const/4 v4, 0x7

    .line 305
    goto :goto_3

    .line 306
    .line 307
    :cond_12
    const-string p3, "visible"

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result p3

    .line 312
    .line 313
    if-eqz p3, :cond_13

    .line 314
    .line 315
    const/16 v4, 0xa

    .line 316
    goto :goto_3

    .line 317
    .line 318
    :cond_13
    const-string p3, "gone"

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result p3

    .line 323
    .line 324
    if-eqz p3, :cond_14

    .line 325
    .line 326
    const/16 v4, 0xb

    .line 327
    goto :goto_3

    .line 328
    .line 329
    :cond_14
    const-string p3, "tag"

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    move-result p3

    .line 334
    .line 335
    if-eqz p3, :cond_15

    .line 336
    .line 337
    const/16 v4, 0xf

    .line 338
    .line 339
    :goto_3
    new-instance p2, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 340
    .line 341
    .line 342
    invoke-direct {p2, p1, v4}, Lcom/github/mmin18/widget/FlexLayout$o0;-><init>(II)V

    .line 343
    return-object p2

    .line 344
    .line 345
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    new-instance p3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object p2

    .line 377
    .line 378
    .line 379
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    throw p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, -0x1

    .line 9
    const/4 v8, -0x1

    .line 10
    .line 11
    :goto_0
    iget v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 12
    .line 13
    iget v10, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->n:I

    .line 14
    .line 15
    if-ge v9, v10, :cond_24

    .line 16
    .line 17
    iget-object v11, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->chars:[C

    .line 18
    .line 19
    aget-char v12, v11, v9

    .line 20
    .line 21
    const/16 v3, 0x61

    .line 22
    .line 23
    const/16 v13, 0x2e

    .line 24
    .line 25
    const/16 v14, 0x39

    .line 26
    .line 27
    const/16 v15, 0x30

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-nez v4, :cond_12

    .line 31
    .line 32
    if-nez v5, :cond_12

    .line 33
    .line 34
    if-nez v6, :cond_12

    .line 35
    .line 36
    if-lt v12, v15, :cond_0

    .line 37
    .line 38
    if-le v12, v14, :cond_1

    .line 39
    .line 40
    :cond_0
    if-ne v12, v13, :cond_3

    .line 41
    .line 42
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_2
    :goto_1
    const/4 v10, -0x1

    .line 50
    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :cond_3
    const/16 v13, 0x20

    .line 54
    .line 55
    if-eq v12, v13, :cond_2

    .line 56
    .line 57
    const/16 v13, 0x9

    .line 58
    .line 59
    if-ne v12, v13, :cond_4

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_4
    const/16 v13, 0x40

    .line 63
    .line 64
    if-ne v12, v13, :cond_5

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_5
    if-lt v12, v3, :cond_6

    .line 76
    .line 77
    const/16 v3, 0x7a

    .line 78
    .line 79
    if-le v12, v3, :cond_11

    .line 80
    .line 81
    :cond_6
    const/16 v3, 0x5f

    .line 82
    .line 83
    if-eq v12, v3, :cond_11

    .line 84
    .line 85
    const/16 v3, 0x41

    .line 86
    .line 87
    if-lt v12, v3, :cond_7

    .line 88
    .line 89
    const/16 v3, 0x5a

    .line 90
    .line 91
    if-gt v12, v3, :cond_7

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_7
    add-int/lit8 v1, v9, 0x1

    .line 96
    const/4 v3, 0x0

    .line 97
    .line 98
    if-ge v1, v10, :cond_8

    .line 99
    .line 100
    add-int/lit8 v1, v9, 0x1

    .line 101
    .line 102
    aget-char v1, v11, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_8
    move v1, v3

    .line 105
    .line 106
    :goto_2
    const/16 v4, 0x3d

    .line 107
    .line 108
    if-ne v1, v4, :cond_c

    .line 109
    .line 110
    if-ne v12, v4, :cond_9

    .line 111
    .line 112
    add-int/lit8 v9, v9, 0x2

    .line 113
    .line 114
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 115
    .line 116
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 117
    return-object v1

    .line 118
    .line 119
    :cond_9
    const/16 v1, 0x21

    .line 120
    .line 121
    if-ne v12, v1, :cond_a

    .line 122
    .line 123
    add-int/lit8 v9, v9, 0x2

    .line 124
    .line 125
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 126
    .line 127
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 128
    return-object v1

    .line 129
    .line 130
    :cond_a
    const/16 v1, 0x3c

    .line 131
    .line 132
    if-ne v12, v1, :cond_b

    .line 133
    .line 134
    add-int/lit8 v9, v9, 0x2

    .line 135
    .line 136
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 137
    .line 138
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 139
    return-object v1

    .line 140
    .line 141
    :cond_b
    const/16 v1, 0x3e

    .line 142
    .line 143
    if-ne v12, v1, :cond_e

    .line 144
    .line 145
    add-int/lit8 v9, v9, 0x2

    .line 146
    .line 147
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 148
    .line 149
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 150
    return-object v1

    .line 151
    .line 152
    :cond_c
    const/16 v4, 0x26

    .line 153
    .line 154
    if-ne v12, v4, :cond_d

    .line 155
    .line 156
    if-ne v1, v4, :cond_d

    .line 157
    .line 158
    add-int/lit8 v9, v9, 0x2

    .line 159
    .line 160
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 161
    .line 162
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_AND:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 163
    return-object v1

    .line 164
    .line 165
    :cond_d
    const/16 v4, 0x7c

    .line 166
    .line 167
    if-ne v12, v4, :cond_e

    .line 168
    .line 169
    if-ne v1, v4, :cond_e

    .line 170
    .line 171
    add-int/lit8 v9, v9, 0x2

    .line 172
    .line 173
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 174
    .line 175
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_OR:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 176
    return-object v1

    .line 177
    .line 178
    :cond_e
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 179
    array-length v4, v1

    .line 180
    move v5, v3

    .line 181
    .line 182
    :goto_3
    if-ge v5, v4, :cond_10

    .line 183
    .line 184
    aget-object v6, v1, v5

    .line 185
    .line 186
    iget-object v7, v6, Lcom/github/mmin18/widget/FlexLayout$m0;->op:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 190
    move-result v7

    .line 191
    .line 192
    if-ne v7, v2, :cond_f

    .line 193
    .line 194
    iget-object v7, v6, Lcom/github/mmin18/widget/FlexLayout$m0;->op:Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    .line 198
    move-result v7

    .line 199
    .line 200
    if-ne v7, v12, :cond_f

    .line 201
    .line 202
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 203
    add-int/2addr v1, v2

    .line 204
    .line 205
    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 206
    return-object v6

    .line 207
    .line 208
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 209
    goto :goto_3

    .line 210
    .line 211
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    const-string v3, "syntax error: "

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->from:Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "="

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->orig:Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v2

    .line 241
    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    throw v1

    .line 245
    .line 246
    :cond_11
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_12
    if-eqz v4, :cond_16

    .line 257
    .line 258
    if-lt v12, v15, :cond_13

    .line 259
    .line 260
    if-le v12, v14, :cond_14

    .line 261
    .line 262
    :cond_13
    if-ne v12, v13, :cond_15

    .line 263
    .line 264
    .line 265
    :cond_14
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    .line 270
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 275
    move-result v1

    .line 276
    .line 277
    .line 278
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    move-result-object v1

    .line 280
    return-object v1

    .line 281
    .line 282
    :cond_16
    const/16 v9, 0x3a

    .line 283
    .line 284
    if-eqz v5, :cond_1d

    .line 285
    .line 286
    if-lt v12, v15, :cond_18

    .line 287
    .line 288
    if-le v12, v14, :cond_17

    .line 289
    goto :goto_6

    .line 290
    :cond_17
    :goto_5
    const/4 v10, -0x1

    .line 291
    goto :goto_7

    .line 292
    .line 293
    :cond_18
    :goto_6
    if-lt v12, v3, :cond_19

    .line 294
    .line 295
    const/16 v3, 0x7a

    .line 296
    .line 297
    if-le v12, v3, :cond_17

    .line 298
    .line 299
    :cond_19
    const/16 v3, 0x5f

    .line 300
    .line 301
    if-eq v12, v3, :cond_17

    .line 302
    .line 303
    const/16 v3, 0x41

    .line 304
    .line 305
    if-lt v12, v3, :cond_1a

    .line 306
    .line 307
    const/16 v3, 0x5a

    .line 308
    .line 309
    if-gt v12, v3, :cond_1a

    .line 310
    goto :goto_5

    .line 311
    .line 312
    :cond_1a
    const/16 v3, 0x2f

    .line 313
    const/4 v10, -0x1

    .line 314
    .line 315
    if-ne v12, v3, :cond_1b

    .line 316
    .line 317
    if-ne v7, v10, :cond_1b

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 321
    move-result v7

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    goto :goto_9

    .line 326
    .line 327
    :cond_1b
    if-ne v12, v9, :cond_1c

    .line 328
    .line 329
    const-string v3, "@android"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v9

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v3

    .line 338
    .line 339
    if-eqz v3, :cond_1c

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    goto :goto_9

    .line 344
    .line 345
    .line 346
    :cond_1c
    invoke-direct {v0, v1, v5, v7}, Lcom/github/mmin18/widget/FlexLayout$p0;->a(Landroid/content/Context;Ljava/lang/StringBuilder;I)F

    .line 347
    move-result v1

    .line 348
    .line 349
    .line 350
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    move-result-object v1

    .line 352
    return-object v1

    .line 353
    .line 354
    .line 355
    :goto_7
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    goto :goto_9

    .line 357
    :cond_1d
    const/4 v10, -0x1

    .line 358
    .line 359
    if-lt v12, v15, :cond_1e

    .line 360
    .line 361
    if-le v12, v14, :cond_23

    .line 362
    .line 363
    :cond_1e
    if-lt v12, v3, :cond_1f

    .line 364
    .line 365
    const/16 v3, 0x7a

    .line 366
    .line 367
    if-le v12, v3, :cond_23

    .line 368
    .line 369
    :cond_1f
    const/16 v3, 0x5f

    .line 370
    .line 371
    if-eq v12, v3, :cond_23

    .line 372
    .line 373
    const/16 v3, 0x41

    .line 374
    .line 375
    if-lt v12, v3, :cond_20

    .line 376
    .line 377
    const/16 v3, 0x5a

    .line 378
    .line 379
    if-gt v12, v3, :cond_20

    .line 380
    goto :goto_8

    .line 381
    .line 382
    :cond_20
    if-ne v12, v13, :cond_21

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 386
    move-result v8

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    goto :goto_9

    .line 391
    .line 392
    :cond_21
    if-ne v12, v9, :cond_22

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v3

    .line 397
    .line 398
    const-string v9, "android"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v3

    .line 403
    .line 404
    if-eqz v3, :cond_22

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    goto :goto_9

    .line 409
    .line 410
    .line 411
    :cond_22
    invoke-direct {v0, v1, v6, v8}, Lcom/github/mmin18/widget/FlexLayout$p0;->b(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;

    .line 412
    move-result-object v1

    .line 413
    return-object v1

    .line 414
    .line 415
    .line 416
    :cond_23
    :goto_8
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    :goto_9
    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 419
    add-int/2addr v3, v2

    .line 420
    .line 421
    iput v3, v0, Lcom/github/mmin18/widget/FlexLayout$p0;->i:I

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_24
    if-eqz v4, :cond_25

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 430
    .line 431
    .line 432
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 433
    move-result v1

    .line 434
    .line 435
    .line 436
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 437
    move-result-object v1

    .line 438
    return-object v1

    .line 439
    .line 440
    :cond_25
    if-eqz v5, :cond_26

    .line 441
    .line 442
    .line 443
    invoke-direct {v0, v1, v5, v7}, Lcom/github/mmin18/widget/FlexLayout$p0;->a(Landroid/content/Context;Ljava/lang/StringBuilder;I)F

    .line 444
    move-result v1

    .line 445
    .line 446
    .line 447
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    move-result-object v1

    .line 449
    return-object v1

    .line 450
    .line 451
    :cond_26
    if-eqz v6, :cond_27

    .line 452
    .line 453
    .line 454
    invoke-direct {v0, v1, v6, v8}, Lcom/github/mmin18/widget/FlexLayout$p0;->b(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;

    .line 455
    move-result-object v1

    .line 456
    return-object v1

    .line 457
    :cond_27
    const/4 v1, 0x0

    .line 458
    return-object v1
.end method
