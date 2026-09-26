.class Lcom/narvii/util/NVToast$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/NVToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/NVToast;->g()Lcom/narvii/util/NVToast;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/narvii/util/NVToast;->k()Ljava/util/LinkedList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/NVToast;->j()Lcom/narvii/util/NVToast;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/util/NVToast;->o(Lcom/narvii/util/NVToast;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {}, Lcom/narvii/util/NVToast;->k()Ljava/util/LinkedList;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/util/NVToast;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_9

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-static {v0}, Lcom/narvii/util/NVToast;->a(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    const-string v4, "layout_inflater"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Landroid/view/LayoutInflater;

    .line 52
    .line 53
    sget v4, Lcom/narvii/lib/R$layout;->toast:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/narvii/util/NVToast;->f(Lcom/narvii/util/NVToast;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/util/NVToast;->e(Lcom/narvii/util/NVToast;)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    sget v3, Lcom/narvii/lib/R$id;->toast_message:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    check-cast v1, Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/narvii/util/NVToast;->d(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 82
    .line 83
    .line 84
    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 85
    .line 86
    const/16 v4, 0x11

    .line 87
    .line 88
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    const/4 v4, -0x2

    .line 90
    .line 91
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    .line 93
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    .line 95
    const/16 v4, 0x18

    .line 96
    .line 97
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    const/4 v4, -0x3

    .line 99
    .line 100
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 101
    .line 102
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v5, 0x1a

    .line 105
    .line 106
    if-ge v4, v5, :cond_2

    .line 107
    .line 108
    const/16 v4, 0x7d5

    .line 109
    .line 110
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_2
    const/16 v4, 0x7f6

    .line 116
    .line 117
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/NVToast;->a(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    const-string/jumbo v5, "window"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Landroid/view/WindowManager;

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/narvii/util/NVToast;->e(Lcom/narvii/util/NVToast;)Landroid/view/View;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    .line 137
    invoke-interface {v4, v5, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lcom/narvii/util/NVToast;->a(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    sget v4, Lcom/narvii/lib/R$anim;->toast_show:I

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_3

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    const-string v4, "permission denied"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v3

    .line 162
    .line 163
    if-eqz v3, :cond_3

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Lcom/narvii/util/NVToast;->n(Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 170
    goto :goto_3

    .line 171
    .line 172
    .line 173
    :cond_3
    const-string/jumbo v3, "toast fail"

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_3
    invoke-static {v0}, Lcom/narvii/util/NVToast;->m(Lcom/narvii/util/NVToast;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lcom/narvii/util/NVToast;->d(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    if-nez v1, :cond_4

    .line 186
    const/4 v1, 0x0

    .line 187
    goto :goto_4

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-static {v0}, Lcom/narvii/util/NVToast;->d(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    :goto_4
    invoke-static {v0}, Lcom/narvii/util/NVToast;->b(Lcom/narvii/util/NVToast;)I

    .line 199
    move-result v3

    .line 200
    .line 201
    const-wide/16 v4, 0x7d0

    .line 202
    .line 203
    if-ne v3, v2, :cond_5

    .line 204
    move-wide v6, v4

    .line 205
    goto :goto_5

    .line 206
    .line 207
    :cond_5
    const-wide/16 v6, 0x4b0

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-static {v0}, Lcom/narvii/util/NVToast;->b(Lcom/narvii/util/NVToast;)I

    .line 211
    move-result v0

    .line 212
    .line 213
    if-ne v0, v2, :cond_6

    .line 214
    .line 215
    const-wide/16 v4, 0xdac

    .line 216
    .line 217
    :cond_6
    const/16 v0, 0x8

    .line 218
    .line 219
    if-ge v1, v0, :cond_7

    .line 220
    goto :goto_6

    .line 221
    .line 222
    :cond_7
    const/16 v2, 0x14

    .line 223
    .line 224
    if-le v1, v2, :cond_8

    .line 225
    move-wide v6, v4

    .line 226
    goto :goto_6

    .line 227
    :cond_8
    sub-long/2addr v4, v6

    .line 228
    sub-int/2addr v1, v0

    .line 229
    int-to-long v0, v1

    .line 230
    mul-long/2addr v4, v0

    .line 231
    .line 232
    const-wide/16 v0, 0xc

    .line 233
    div-long/2addr v4, v0

    .line 234
    add-long/2addr v6, v4

    .line 235
    .line 236
    .line 237
    :goto_6
    invoke-static {}, Lcom/narvii/util/NVToast;->i()Landroid/os/Handler;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/narvii/util/NVToast;->l()Ljava/lang/Runnable;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    :cond_9
    return-void
.end method
