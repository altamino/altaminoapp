.class Lcom/narvii/detail/FeedDetailFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionVote()V

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    :sswitch_2
    const/4 p1, 0x7

    .line 25
    .line 26
    new-array p1, p1, [I

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    const v2, 0x7f1210ad

    .line 42
    .line 43
    aput v2, p1, v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 49
    .line 50
    const-string v3, "affiliations"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Lcom/narvii/community/AffiliationsService;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x1

    .line 64
    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    iget v3, v3, Lcom/narvii/model/Feed;->ndcId:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 85
    move-result v2

    .line 86
    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    .line 90
    const v2, 0x7f1201bb

    .line 91
    .line 92
    aput v2, p1, v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 96
    const/4 v4, 0x2

    .line 97
    .line 98
    .line 99
    :cond_0
    const v2, 0x7f120781

    .line 100
    .line 101
    aput v2, p1, v4

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 105
    .line 106
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$14$1;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$14$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$14;[I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomComment()V

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionVote()V

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionTipping()V

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 143
    .line 144
    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 150
    .line 151
    const-string v0, "Post Detail SBB"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :sswitch_8
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionModMenu()V

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :sswitch_9
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionGoNext()V

    .line 167
    goto :goto_0

    .line 168
    .line 169
    :sswitch_a
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionFeaturePost()V

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :sswitch_b
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionBroadCast()V

    .line 179
    :goto_0
    return-void

    .line 180
    nop

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
    :sswitch_data_0
    .sparse-switch
        0x7f0a01e9 -> :sswitch_b
        0x7f0a01ed -> :sswitch_a
        0x7f0a01ef -> :sswitch_9
        0x7f0a01f1 -> :sswitch_9
        0x7f0a01f5 -> :sswitch_8
        0x7f0a01f9 -> :sswitch_7
        0x7f0a01fa -> :sswitch_6
        0x7f0a01fe -> :sswitch_5
        0x7f0a0201 -> :sswitch_4
        0x7f0a065b -> :sswitch_3
        0x7f0a065c -> :sswitch_2
        0x7f0a065d -> :sswitch_1
        0x7f0a065e -> :sswitch_0
    .end sparse-switch
.end method
