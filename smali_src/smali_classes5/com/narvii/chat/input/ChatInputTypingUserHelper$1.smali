.class Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputTypingUserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->a(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->a(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 27
    .line 28
    :cond_1
    if-nez p2, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    :cond_2
    const-string p3, "users-start-typing-at"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p3

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    if-eqz p3, :cond_5

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 53
    .line 54
    new-instance p3, Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->h(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)V

    .line 61
    .line 62
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result p3

    .line 75
    .line 76
    if-eqz p3, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    check-cast p3, Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 102
    const/4 p2, 0x1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->g(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)V

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_5
    const-string p3, "users-end-typing-at"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    move-result p3

    .line 114
    .line 115
    if-eqz p3, :cond_6

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    if-eqz p1, :cond_a

    .line 124
    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result p2

    .line 132
    .line 133
    if-eqz p2, :cond_a

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    check-cast p2, Lcom/narvii/model/User;

    .line 140
    .line 141
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 142
    .line 143
    .line 144
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 145
    move-result-object p3

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    .line 152
    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 153
    goto :goto_1

    .line 154
    .line 155
    :cond_6
    const-string p3, "users-start-recording-at"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    move-result p3

    .line 160
    .line 161
    if-eqz p3, :cond_9

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->c(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    if-nez p1, :cond_7

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 172
    .line 173
    new-instance p3, Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-static {p1, p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->f(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)V

    .line 180
    .line 181
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    .line 192
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    move-result p3

    .line 194
    .line 195
    if-eqz p3, :cond_8

    .line 196
    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    move-result-object p3

    .line 200
    .line 201
    check-cast p3, Lcom/narvii/model/User;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    .line 208
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 209
    goto :goto_2

    .line 210
    .line 211
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->c(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    .line 220
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 221
    .line 222
    .line 223
    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->g(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)V

    .line 224
    goto :goto_4

    .line 225
    .line 226
    :cond_9
    const-string p3, "users-end-recording-at"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    move-result p1

    .line 231
    .line 232
    if-eqz p1, :cond_a

    .line 233
    .line 234
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->c(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    if-eqz p1, :cond_a

    .line 241
    .line 242
    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    .line 247
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    move-result p2

    .line 249
    .line 250
    if-eqz p2, :cond_a

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    move-result-object p2

    .line 255
    .line 256
    check-cast p2, Lcom/narvii/model/User;

    .line 257
    .line 258
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 259
    .line 260
    .line 261
    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->c(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 262
    move-result-object p3

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 266
    move-result-object p2

    .line 267
    .line 268
    .line 269
    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 270
    goto :goto_3

    .line 271
    .line 272
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 273
    .line 274
    .line 275
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->d(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Z

    .line 276
    move-result p1

    .line 277
    .line 278
    if-eqz p1, :cond_c

    .line 279
    .line 280
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    if-eqz p1, :cond_b

    .line 287
    .line 288
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 289
    .line 290
    .line 291
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    .line 292
    move-result-object p1

    .line 293
    .line 294
    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 296
    move-result p1

    .line 297
    .line 298
    if-nez p1, :cond_c

    .line 299
    .line 300
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 301
    .line 302
    .line 303
    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->g(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)V

    .line 304
    .line 305
    :cond_c
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    .line 306
    .line 307
    .line 308
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->i(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    .line 309
    return-void
.end method

.method public onUserLeft(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
