.class Lcom/narvii/catalog/CatalogFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    const v2, 0x7f120201

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->reviewSubmission()V

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    const v2, 0x7f1200a0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->addSubCategory()V

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    const v2, 0x7f1200aa

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    const v2, 0x7f1201f9

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 124
    const/4 v0, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    const v2, 0x7f120fee

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->reorder()V

    .line 158
    goto :goto_1

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    const v2, 0x7f1201f2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->editCategory()V

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    const v2, 0x7f121088

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 213
    .line 214
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 215
    .line 216
    if-nez v0, :cond_6

    .line 217
    .line 218
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 222
    move-result-object p1

    .line 223
    goto :goto_0

    .line 224
    .line 225
    :cond_6
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 226
    .line 227
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->sendBroadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    .line 233
    goto :goto_1

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 243
    move-result-object v0

    .line 244
    .line 245
    .line 246
    const v1, 0x7f1200b2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    move-result p1

    .line 255
    .line 256
    if-eqz p1, :cond_8

    .line 257
    .line 258
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->launchModerationHistory()V

    .line 262
    .line 263
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$6;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 264
    .line 265
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 269
    :cond_9
    return-void
.end method
