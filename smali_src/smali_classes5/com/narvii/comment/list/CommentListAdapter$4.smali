.class Lcom/narvii/comment/list/CommentListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;

.field final synthetic val$comment:Lcom/narvii/model/Comment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;[ILcom/narvii/model/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$ops:[I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :sswitch_0
    const-class p1, Lcom/narvii/comment/CommentStickerDetailFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const-string v0, "sticker"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string v0, "comment"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/comment/list/CommentListAdapter;->isAnnouncement()Z

    .line 49
    move-result p2

    .line 50
    .line 51
    const-string v0, "hideCollectionInfo"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$200(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 73
    .line 74
    const/16 v0, 0x66

    .line 75
    .line 76
    .line 77
    invoke-static {p2, p1, v0}, Lcom/narvii/comment/list/CommentListAdapter$4;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_0
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onViewStickerClicked(Landroid/content/Intent;)V

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v1, v0, p2}, Lcom/narvii/comment/list/CommentListAdapter;->v(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->t(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0, p2, p2}, Lcom/narvii/comment/list/CommentListAdapter;->v(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->s(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter;->r(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 134
    .line 135
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2, v0}, Lcom/narvii/comment/list/CommentListAdapter;->q(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    const-string p2, "clipboard"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    check-cast p1, Landroid/content/ClipboardManager;

    .line 154
    .line 155
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 156
    .line 157
    iget-object p2, p2, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :sswitch_8
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->getParent()Lcom/narvii/model/NVObject;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-class p2, Lcom/narvii/comment/list/VoterListFragment;

    .line 170
    .line 171
    .line 172
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    const-string v2, "id"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    .line 184
    const-string v1, "type"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 188
    move-result v2

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    const-string v2, "commentId"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    .line 204
    instance-of v1, p1, Lcom/narvii/model/Blog;

    .line 205
    .line 206
    if-eqz v1, :cond_1

    .line 207
    .line 208
    check-cast p1, Lcom/narvii/model/Blog;

    .line 209
    .line 210
    iget v0, p1, Lcom/narvii/model/Blog;->type:I

    .line 211
    .line 212
    :cond_1
    const-string p1, "feedType"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    .line 217
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 218
    .line 219
    .line 220
    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListAdapter$4;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 221
    goto :goto_0

    .line 222
    .line 223
    :sswitch_9
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 224
    .line 225
    const-string p2, "config"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 232
    .line 233
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 234
    .line 235
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 236
    .line 237
    .line 238
    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$000(Lcom/narvii/comment/list/CommentListAdapter;)Lcom/narvii/app/NVContext;

    .line 239
    move-result-object p2

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 243
    .line 244
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$4;->val$comment:Lcom/narvii/model/Comment;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 252
    move-result-object p1

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 256
    :goto_0
    return-void

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_9
        0x7f1202f0 -> :sswitch_8
        0x7f1202f1 -> :sswitch_8
        0x7f120348 -> :sswitch_7
        0x7f1203a0 -> :sswitch_6
        0x7f120438 -> :sswitch_5
        0x7f120781 -> :sswitch_4
        0x7f120b8c -> :sswitch_3
        0x7f120ff7 -> :sswitch_2
        0x7f12120e -> :sswitch_1
        0x7f12126f -> :sswitch_0
    .end sparse-switch
.end method
