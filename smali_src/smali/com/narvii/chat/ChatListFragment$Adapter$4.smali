.class Lcom/narvii/chat/ChatListFragment$Adapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment$Adapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$actions:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$actions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    const-string v0, "edit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_not_edit

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "chatInput"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz p2, :cond_edit_ret

    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->setEditAdapter(Lcom/narvii/list/NVAdapter;)V

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->startEditing(Lcom/narvii/model/ChatMessage;)V

    :cond_edit_ret
    return-void

    :cond_not_edit
    .line 7
    .line 8
    const-string p2, "copy"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string p2, "clipboard"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/content/ClipboardManager;

    .line 29
    .line 30
    const-string p2, ""

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    const-string p2, "saveImage"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/media/SaveImageFragment;

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Lcom/narvii/media/SaveImageFragment;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 92
    .line 93
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 103
    .line 104
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_2
    const-string p2, "delete"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p2

    .line 120
    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 126
    .line 127
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/narvii/chat/ChatListFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_3
    const-string p2, "flag"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p2

    .line 139
    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->U(Lcom/narvii/chat/ChatListFragment;)Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-eqz p1, :cond_a

    .line 151
    .line 152
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 153
    .line 154
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 155
    .line 156
    .line 157
    invoke-static {p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->access$800(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;

    .line 158
    move-result-object p2

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 162
    .line 163
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_4
    const-string p2, "advanced"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result p2

    .line 183
    .line 184
    if-eqz p2, :cond_5

    .line 185
    .line 186
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 187
    .line 188
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 189
    .line 190
    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 194
    .line 195
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 203
    move-result-object p1

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_5
    const-string p2, "detail"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result p2

    .line 215
    .line 216
    if-eqz p2, :cond_6

    .line 217
    .line 218
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 219
    .line 220
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 221
    .line 222
    .line 223
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment$Adapter;->m(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_6
    const-string p2, "saveAsFavorite"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p2

    .line 232
    .line 233
    if-eqz p2, :cond_9

    .line 234
    .line 235
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 236
    .line 237
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 238
    .line 239
    .line 240
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->V(Lcom/narvii/chat/ChatListFragment;)Z

    .line 241
    move-result p1

    .line 242
    .line 243
    if-nez p1, :cond_7

    .line 244
    return-void

    .line 245
    .line 246
    :cond_7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 247
    .line 248
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 249
    .line 250
    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 251
    .line 252
    .line 253
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 254
    .line 255
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    if-eqz p2, :cond_8

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    .line 265
    goto :goto_0

    .line 266
    .line 267
    :cond_8
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 268
    .line 269
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;)V

    .line 273
    .line 274
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 275
    .line 276
    const-string/jumbo p2, "statistics"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 283
    .line 284
    const-string p2, "Add a Sticker"

    .line 285
    .line 286
    .line 287
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    const-string p2, "Chat Thread"

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    const-string p2, "Add a Sticker Total"

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 300
    goto :goto_1

    .line 301
    .line 302
    :cond_9
    const-string p2, "reply"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result p1

    .line 307
    .line 308
    if-eqz p1, :cond_a

    .line 309
    .line 310
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 311
    .line 312
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 313
    .line 314
    .line 315
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->C(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    .line 316
    move-result-object p1

    .line 317
    .line 318
    if-eqz p1, :cond_a

    .line 319
    .line 320
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 321
    .line 322
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 323
    .line 324
    if-eqz p1, :cond_a

    .line 325
    .line 326
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 327
    .line 328
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 332
    move-result-object p1

    .line 333
    .line 334
    const-string p2, "chatInput"

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 338
    move-result-object p1

    .line 339
    .line 340
    instance-of p2, p1, Lcom/narvii/chat/input/ChatInputFragment;

    .line 341
    .line 342
    if-eqz p2, :cond_a

    .line 343
    .line 344
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 345
    .line 346
    iget-object p2, p2, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 347
    .line 348
    const-string v0, "Reply"

    .line 349
    .line 350
    .line 351
    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 352
    move-result-object p2

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 356
    .line 357
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    .line 358
    .line 359
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$4;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, p2}, Lcom/narvii/chat/input/ChatInputFragment;->onReplybyLongClick(Lcom/narvii/model/ChatMessage;)V

    .line 363
    :catch_0
    :cond_a
    :goto_1
    return-void
.end method
