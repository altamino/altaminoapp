.class Lcom/narvii/amino/MainDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainDialogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->disabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->s(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->r(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    return-void

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 40
    .line 41
    const-string v1, "flag"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 48
    .line 49
    const-string v2, "account"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    :goto_0
    and-int/lit8 v2, v0, 0x1

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 70
    .line 71
    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    .line 72
    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/prompt/UpgradePromptHelper;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/UpgradePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 91
    .line 92
    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 100
    return-void

    .line 101
    .line 102
    :cond_6
    and-int/lit16 v2, v0, 0x400

    .line 103
    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 107
    .line 108
    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 109
    .line 110
    if-nez v3, :cond_7

    .line 111
    .line 112
    new-instance v0, Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/GlobalNoticePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 128
    .line 129
    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 137
    return-void

    .line 138
    .line 139
    :cond_7
    and-int/lit8 v2, v0, 0x8

    .line 140
    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    and-int/lit8 v2, v0, 0x20

    .line 144
    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 148
    .line 149
    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    .line 150
    .line 151
    if-nez v3, :cond_8

    .line 152
    .line 153
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->t(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 169
    .line 170
    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 178
    return-void

    .line 179
    .line 180
    :cond_8
    if-eqz v1, :cond_9

    .line 181
    .line 182
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    instance-of v1, v1, Lcom/narvii/amino/MainActivity;

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 193
    .line 194
    .line 195
    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->n(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    if-nez v1, :cond_9

    .line 199
    .line 200
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 201
    .line 202
    new-instance v1, Lcom/narvii/prompt/AccountNoticePromptHelper;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 209
    .line 210
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 211
    .line 212
    .line 213
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/AccountNoticePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->v(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AccountNoticePromptHelper;)V

    .line 221
    .line 222
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->n(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 230
    return-void

    .line 231
    .line 232
    :cond_9
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->o(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    if-nez v1, :cond_a

    .line 239
    .line 240
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 241
    .line 242
    new-instance v1, Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 249
    .line 250
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 251
    .line 252
    .line 253
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 254
    move-result-object v3

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/AnnouncementPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->w(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AnnouncementPromptHelper;)V

    .line 261
    .line 262
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->o(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 270
    return-void

    .line 271
    .line 272
    :cond_a
    and-int/lit16 v1, v0, 0x100

    .line 273
    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 277
    .line 278
    .line 279
    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->p(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    if-nez v1, :cond_b

    .line 283
    .line 284
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 285
    .line 286
    new-instance v1, Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 290
    move-result-object v2

    .line 291
    .line 292
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 293
    .line 294
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 295
    .line 296
    .line 297
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 298
    move-result-object v3

    .line 299
    .line 300
    .line 301
    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/BottomDrawerPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->x(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/BottomDrawerPromptHelper;)V

    .line 305
    .line 306
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->p(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 310
    move-result-object v0

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 314
    return-void

    .line 315
    .line 316
    :cond_b
    and-int/lit8 v1, v0, 0x4

    .line 317
    .line 318
    if-eqz v1, :cond_c

    .line 319
    .line 320
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 321
    .line 322
    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    .line 323
    .line 324
    if-nez v2, :cond_c

    .line 325
    .line 326
    new-instance v0, Lcom/narvii/prompt/ProbationPromptHelper;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 330
    move-result-object v2

    .line 331
    .line 332
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 333
    .line 334
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 335
    .line 336
    .line 337
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 338
    move-result-object v3

    .line 339
    .line 340
    .line 341
    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/ProbationPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 342
    .line 343
    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    .line 344
    .line 345
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 351
    return-void

    .line 352
    .line 353
    :cond_c
    and-int/lit16 v1, v0, 0x200

    .line 354
    .line 355
    if-eqz v1, :cond_d

    .line 356
    .line 357
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 358
    .line 359
    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    .line 360
    .line 361
    if-nez v2, :cond_d

    .line 362
    .line 363
    new-instance v0, Lcom/narvii/prompt/RatePromptHelper;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 367
    move-result-object v2

    .line 368
    .line 369
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 370
    .line 371
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 372
    .line 373
    .line 374
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 375
    move-result-object v3

    .line 376
    .line 377
    .line 378
    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/RatePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 379
    .line 380
    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    .line 381
    .line 382
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 388
    return-void

    .line 389
    .line 390
    :cond_d
    and-int/lit8 v1, v0, 0x10

    .line 391
    .line 392
    if-eqz v1, :cond_e

    .line 393
    .line 394
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 395
    .line 396
    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 397
    .line 398
    if-nez v2, :cond_e

    .line 399
    .line 400
    new-instance v0, Lcom/narvii/prompt/ReputationPromptHelper;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 404
    move-result-object v2

    .line 405
    .line 406
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 407
    .line 408
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 409
    .line 410
    .line 411
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 412
    move-result-object v3

    .line 413
    .line 414
    .line 415
    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/ReputationPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 416
    .line 417
    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 418
    .line 419
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 420
    .line 421
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 425
    return-void

    .line 426
    .line 427
    :cond_e
    and-int/lit16 v0, v0, 0x4000

    .line 428
    .line 429
    if-eqz v0, :cond_f

    .line 430
    .line 431
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 432
    .line 433
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 434
    .line 435
    if-nez v0, :cond_f

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 439
    move-result v0

    .line 440
    .line 441
    if-nez v0, :cond_f

    .line 442
    .line 443
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 444
    .line 445
    new-instance v1, Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 449
    move-result-object v2

    .line 450
    .line 451
    check-cast v2, Lcom/narvii/app/NVContext;

    .line 452
    .line 453
    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 454
    .line 455
    .line 456
    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    .line 457
    move-result-object v3

    .line 458
    .line 459
    .line 460
    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/OptinAdsPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 461
    .line 462
    iput-object v1, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 463
    .line 464
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 465
    .line 466
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    .line 470
    return-void

    .line 471
    .line 472
    :cond_f
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 473
    const/4 v1, 0x1

    .line 474
    .line 475
    .line 476
    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->y(Lcom/narvii/amino/MainDialogFragment;Z)V

    .line 477
    .line 478
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 479
    .line 480
    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 482
    move-result-wide v1

    .line 483
    .line 484
    iput-wide v1, v0, Lcom/narvii/amino/MainDialogFragment;->lastLoopFinishTime:J

    .line 485
    return-void
.end method
