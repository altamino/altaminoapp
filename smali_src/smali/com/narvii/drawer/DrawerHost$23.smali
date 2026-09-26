.class Lcom/narvii/drawer/DrawerHost$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerHost;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "Left Side Panel"

    .line 7
    .line 8
    const-class v2, Lcom/narvii/achievements/AchievementsFragment;

    .line 9
    .line 10
    const-string v3, "Source"

    .line 11
    .line 12
    const-string v4, "id"

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    .line 16
    sparse-switch v0, :sswitch_data_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    .line 21
    :sswitch_0
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    const-string v2, "needFetchData"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v4, "mediaList"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    const-string/jumbo v2, "user"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$23;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 77
    .line 78
    iput-boolean v5, p1, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 79
    .line 80
    new-instance p1, Lcom/narvii/drawer/DrawerHost$23$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$23$1;-><init>(Lcom/narvii/drawer/DrawerHost$23;)V

    .line 84
    .line 85
    const-wide/16 v0, 0x64

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a0ddd

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    if-eqz p1, :cond_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_0

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->q(Lcom/narvii/drawer/DrawerHost;)V

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    .line 117
    :cond_0
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 132
    .line 133
    .line 134
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$23;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :sswitch_3
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getCommunityUserProfile()Lcom/narvii/model/User;

    .line 154
    move-result-object v0

    .line 155
    const/4 v2, 0x0

    .line 156
    .line 157
    if-nez v0, :cond_1

    .line 158
    .line 159
    const-class v0, Lcom/narvii/user/profile/UserProfileFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 166
    .line 167
    iget-object v6, v6, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 171
    move-result-object v6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    const-string v4, "__interactionScope"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    goto :goto_0

    .line 181
    .line 182
    :cond_1
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 183
    .line 184
    iget-object v4, v4, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 195
    move-result p1

    .line 196
    .line 197
    .line 198
    const v1, 0x7f0a0989

    .line 199
    .line 200
    if-ne p1, v1, :cond_2

    .line 201
    goto :goto_1

    .line 202
    :cond_2
    move v5, v2

    .line 203
    .line 204
    :goto_1
    const-string/jumbo p1, "selectMood"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    .line 209
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost$23;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 213
    goto :goto_2

    .line 214
    .line 215
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 224
    .line 225
    .line 226
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .line 228
    const-string/jumbo v0, "signup"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    .line 233
    const-string v0, "Side Panel"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    const-string v1, "promptType"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 250
    .line 251
    .line 252
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$23;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 253
    goto :goto_2

    .line 254
    .line 255
    :sswitch_4
    const-class p1, Lcom/narvii/notice/NoticeListFragment;

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 262
    .line 263
    .line 264
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$23;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 265
    .line 266
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 267
    .line 268
    .line 269
    const v0, 0xfa0001

    .line 270
    const/4 v1, 0x0

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 274
    :goto_3
    return-void

    nop

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
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    :sswitch_data_0
    .sparse-switch
        0x7f0a0055 -> :sswitch_4
        0x7f0a0171 -> :sswitch_3
        0x7f0a02d8 -> :sswitch_2
        0x7f0a0472 -> :sswitch_1
        0x7f0a0484 -> :sswitch_3
        0x7f0a049e -> :sswitch_0
        0x7f0a0989 -> :sswitch_3
        0x7f0a09f9 -> :sswitch_3
    .end sparse-switch
.end method
