.class Lcom/narvii/poweruser/AdvancedOptionDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVDialog_startActivity_2781f61591f8405cec5ec055f389bd0c(Lcom/narvii/app/NVDialog;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVDialog;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVDialog;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_19

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f1200af

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/poweruser/PowerChatHelper;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/poweruser/PowerChatHelper;->showFeatureDialog()V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 59
    .line 60
    .line 61
    const v1, 0x7f1200b9

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    new-instance p1, Lcom/narvii/poweruser/PowerChatHelper;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/poweruser/PowerChatHelper;->unfeatureChat()V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_1
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 109
    .line 110
    .line 111
    const v1, 0x7f1200ae

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    check-cast v1, Lcom/narvii/model/Feed;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 147
    .line 148
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$1;

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 159
    .line 160
    .line 161
    const v1, 0x7f1200b8

    .line 162
    .line 163
    .line 164
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 165
    move-result v0

    .line 166
    .line 167
    const-wide/16 v1, 0x0

    .line 168
    const/4 v3, 0x0

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 179
    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 191
    .line 192
    .line 193
    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    check-cast v4, Lcom/narvii/model/Feed;

    .line 197
    .line 198
    .line 199
    invoke-direct {p1, v0, v4}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 200
    .line 201
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$2;

    .line 202
    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_3
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 212
    .line 213
    .line 214
    const v4, 0x7f12074f

    .line 215
    .line 216
    .line 217
    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 218
    move-result v0

    .line 219
    .line 220
    if-eqz v0, :cond_4

    .line 221
    .line 222
    new-instance p1, Lcom/narvii/user/feature/FeatureUserHelper;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 225
    .line 226
    .line 227
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 231
    .line 232
    .line 233
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    check-cast v1, Lcom/narvii/model/User;

    .line 237
    .line 238
    .line 239
    invoke-direct {p1, v0, v1}, Lcom/narvii/user/feature/FeatureUserHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 240
    .line 241
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$3;

    .line 242
    .line 243
    .line 244
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_4
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 252
    .line 253
    .line 254
    const v4, 0x7f12120a

    .line 255
    .line 256
    .line 257
    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 258
    move-result v0

    .line 259
    .line 260
    if-eqz v0, :cond_5

    .line 261
    .line 262
    new-instance p1, Lcom/narvii/user/feature/FeatureUserHelper;

    .line 263
    .line 264
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 271
    .line 272
    .line 273
    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 274
    move-result-object v4

    .line 275
    .line 276
    check-cast v4, Lcom/narvii/model/User;

    .line 277
    .line 278
    .line 279
    invoke-direct {p1, v0, v4}, Lcom/narvii/user/feature/FeatureUserHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 280
    .line 281
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$4;

    .line 282
    .line 283
    .line 284
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$4;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->featureUser(IJLcom/narvii/util/Callback;)V

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_5
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 292
    .line 293
    .line 294
    const v4, 0x7f1200bb

    .line 295
    .line 296
    .line 297
    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 298
    move-result v0

    .line 299
    .line 300
    if-eqz v0, :cond_6

    .line 301
    .line 302
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 309
    .line 310
    if-eqz v0, :cond_6

    .line 311
    .line 312
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 313
    .line 314
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 321
    .line 322
    .line 323
    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 324
    move-result-object v4

    .line 325
    .line 326
    check-cast v4, Lcom/narvii/model/Feed;

    .line 327
    .line 328
    .line 329
    invoke-direct {p1, v0, v4}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 330
    .line 331
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$5;

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$5;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_6
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 342
    .line 343
    .line 344
    const v4, 0x7f1200b3

    .line 345
    .line 346
    .line 347
    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 348
    move-result v0

    .line 349
    .line 350
    if-eqz v0, :cond_7

    .line 351
    .line 352
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 353
    .line 354
    .line 355
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 356
    move-result-object v0

    .line 357
    .line 358
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 359
    .line 360
    if-eqz v0, :cond_7

    .line 361
    .line 362
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 363
    .line 364
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 365
    .line 366
    .line 367
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 371
    .line 372
    .line 373
    invoke-static {v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 374
    move-result-object v3

    .line 375
    .line 376
    check-cast v3, Lcom/narvii/model/Feed;

    .line 377
    .line 378
    .line 379
    invoke-direct {p1, v0, v3}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 380
    .line 381
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;

    .line 382
    .line 383
    .line 384
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    .line 385
    const/4 v3, 0x2

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 393
    .line 394
    .line 395
    const v1, 0x7f1200a9

    .line 396
    .line 397
    .line 398
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 399
    move-result v0

    .line 400
    .line 401
    if-eqz v0, :cond_8

    .line 402
    .line 403
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 404
    .line 405
    .line 406
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 407
    move-result-object v0

    .line 408
    .line 409
    .line 410
    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 411
    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 415
    .line 416
    .line 417
    const v1, 0x7f1200ad

    .line 418
    .line 419
    .line 420
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 421
    move-result v0

    .line 422
    const/4 v1, 0x1

    .line 423
    .line 424
    if-eqz v0, :cond_9

    .line 425
    .line 426
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 427
    .line 428
    .line 429
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 430
    move-result-object v0

    .line 431
    .line 432
    .line 433
    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_9
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 438
    .line 439
    .line 440
    const v2, 0x7f1200a8

    .line 441
    .line 442
    .line 443
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 444
    move-result v0

    .line 445
    .line 446
    if-eqz v0, :cond_a

    .line 447
    .line 448
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 449
    .line 450
    .line 451
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 452
    move-result-object v0

    .line 453
    .line 454
    .line 455
    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_a
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 460
    .line 461
    .line 462
    const v2, 0x7f1200ac

    .line 463
    .line 464
    .line 465
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 466
    move-result v0

    .line 467
    .line 468
    if-eqz v0, :cond_b

    .line 469
    .line 470
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 471
    .line 472
    .line 473
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 474
    move-result-object v0

    .line 475
    .line 476
    .line 477
    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_b
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 482
    .line 483
    .line 484
    const v2, 0x7f1200a5

    .line 485
    .line 486
    .line 487
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 488
    move-result v0

    .line 489
    .line 490
    if-eqz v0, :cond_c

    .line 491
    .line 492
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 493
    .line 494
    .line 495
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 496
    move-result-object v0

    .line 497
    .line 498
    .line 499
    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_c
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 504
    .line 505
    .line 506
    const v2, 0x7f1200a6

    .line 507
    .line 508
    .line 509
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 510
    move-result v0

    .line 511
    .line 512
    if-eqz v0, :cond_d

    .line 513
    .line 514
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 515
    .line 516
    .line 517
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 518
    move-result-object v0

    .line 519
    .line 520
    .line 521
    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->i(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    .line 522
    .line 523
    goto/16 :goto_0

    .line 524
    .line 525
    :cond_d
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 526
    .line 527
    .line 528
    const v2, 0x7f1200a4

    .line 529
    .line 530
    .line 531
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 532
    move-result v0

    .line 533
    .line 534
    if-eqz v0, :cond_e

    .line 535
    .line 536
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 537
    .line 538
    .line 539
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 540
    move-result-object v0

    .line 541
    .line 542
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 543
    .line 544
    .line 545
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->k(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_e
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 550
    .line 551
    .line 552
    const v2, 0x7f1200a3

    .line 553
    .line 554
    .line 555
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 556
    move-result v0

    .line 557
    .line 558
    if-eqz v0, :cond_f

    .line 559
    .line 560
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 561
    .line 562
    .line 563
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->h(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :cond_f
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 568
    .line 569
    .line 570
    const v2, 0x7f1200ab

    .line 571
    .line 572
    .line 573
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 574
    move-result v0

    .line 575
    .line 576
    if-eqz v0, :cond_10

    .line 577
    .line 578
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 579
    .line 580
    .line 581
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 582
    move-result-object v0

    .line 583
    .line 584
    check-cast v0, Lcom/narvii/model/User;

    .line 585
    .line 586
    .line 587
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->j(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    .line 588
    .line 589
    goto/16 :goto_0

    .line 590
    .line 591
    :cond_10
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 592
    .line 593
    .line 594
    const v2, 0x7f1200a7

    .line 595
    .line 596
    .line 597
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 598
    move-result v0

    .line 599
    .line 600
    if-eqz v0, :cond_11

    .line 601
    .line 602
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 603
    .line 604
    .line 605
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 606
    move-result-object v0

    .line 607
    .line 608
    check-cast v0, Lcom/narvii/model/Comment;

    .line 609
    .line 610
    .line 611
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->l(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    .line 612
    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :cond_11
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 616
    .line 617
    .line 618
    const v2, 0x7f120207

    .line 619
    .line 620
    .line 621
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 622
    move-result v0

    .line 623
    .line 624
    if-eqz v0, :cond_12

    .line 625
    .line 626
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 627
    .line 628
    .line 629
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 630
    move-result-object v0

    .line 631
    .line 632
    check-cast v0, Lcom/narvii/model/Item;

    .line 633
    .line 634
    .line 635
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    .line 636
    .line 637
    goto/16 :goto_0

    .line 638
    .line 639
    :cond_12
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 640
    .line 641
    .line 642
    const v2, 0x7f1201c7

    .line 643
    .line 644
    .line 645
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 646
    move-result v0

    .line 647
    .line 648
    if-eqz v0, :cond_13

    .line 649
    .line 650
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 654
    .line 655
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 656
    .line 657
    .line 658
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->a(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 659
    move-result-object p1

    .line 660
    .line 661
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 662
    .line 663
    .line 664
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 665
    move-result-object v0

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    .line 669
    .line 670
    goto/16 :goto_0

    .line 671
    .line 672
    :cond_13
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 673
    .line 674
    .line 675
    const v2, 0x7f1200b2

    .line 676
    .line 677
    .line 678
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 679
    move-result v0

    .line 680
    .line 681
    if-eqz v0, :cond_14

    .line 682
    .line 683
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 684
    .line 685
    .line 686
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 687
    .line 688
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 689
    .line 690
    .line 691
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->q(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    .line 692
    .line 693
    goto/16 :goto_0

    .line 694
    .line 695
    :cond_14
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 696
    .line 697
    .line 698
    const v2, 0x7f1200b5

    .line 699
    .line 700
    .line 701
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 702
    move-result v0

    .line 703
    .line 704
    if-eqz v0, :cond_15

    .line 705
    .line 706
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 707
    .line 708
    .line 709
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 710
    .line 711
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 712
    .line 713
    .line 714
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->s(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :cond_15
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 719
    .line 720
    .line 721
    const v2, 0x7f1200a1

    .line 722
    .line 723
    .line 724
    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 725
    move-result v0

    .line 726
    .line 727
    if-eqz v0, :cond_16

    .line 728
    .line 729
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 730
    .line 731
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 732
    .line 733
    .line 734
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 735
    move-result-object v0

    .line 736
    .line 737
    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 738
    .line 739
    .line 740
    invoke-static {v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 741
    move-result-object v2

    .line 742
    .line 743
    check-cast v2, Lcom/narvii/model/Feed;

    .line 744
    .line 745
    .line 746
    invoke-direct {p1, v0, v2}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p1, v1}, Lcom/narvii/poweruser/PowerFeedHelper;->changeBestQuizStatus(Z)V

    .line 750
    .line 751
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 752
    .line 753
    .line 754
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 755
    goto :goto_0

    .line 756
    .line 757
    :cond_16
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 758
    .line 759
    .line 760
    const v1, 0x7f1200b4

    .line 761
    .line 762
    .line 763
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 764
    move-result v0

    .line 765
    .line 766
    if-eqz v0, :cond_17

    .line 767
    .line 768
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 769
    .line 770
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 771
    .line 772
    .line 773
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 774
    move-result-object v0

    .line 775
    .line 776
    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 777
    .line 778
    .line 779
    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 780
    move-result-object v1

    .line 781
    .line 782
    check-cast v1, Lcom/narvii/model/Feed;

    .line 783
    .line 784
    .line 785
    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p1, v3}, Lcom/narvii/poweruser/PowerFeedHelper;->changeBestQuizStatus(Z)V

    .line 789
    .line 790
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 791
    .line 792
    .line 793
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 794
    goto :goto_0

    .line 795
    .line 796
    :cond_17
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 797
    .line 798
    .line 799
    const v1, 0x7f1211eb

    .line 800
    .line 801
    .line 802
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 803
    move-result p1

    .line 804
    .line 805
    if-eqz p1, :cond_19

    .line 806
    .line 807
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 808
    .line 809
    .line 810
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 811
    move-result-object p1

    .line 812
    .line 813
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 814
    .line 815
    .line 816
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 817
    move-result-object v0

    .line 818
    .line 819
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 820
    .line 821
    if-eqz v0, :cond_18

    .line 822
    .line 823
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 824
    .line 825
    .line 826
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 827
    move-result-object v0

    .line 828
    .line 829
    .line 830
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 831
    move-result-object v0

    .line 832
    .line 833
    const-string/jumbo v1, "thread"

    .line 834
    .line 835
    .line 836
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    .line 838
    :cond_18
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 839
    .line 840
    .line 841
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->safedk_NVDialog_startActivity_2781f61591f8405cec5ec055f389bd0c(Lcom/narvii/app/NVDialog;Landroid/content/Intent;)V

    .line 842
    .line 843
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 847
    :cond_19
    :goto_0
    return-void
.end method
