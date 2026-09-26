.class Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;
.super Lcom/narvii/prefs/SettingsFragment$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/CommunitySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CAdapter"
.end annotation


# instance fields
.field LEAVE:Lcom/narvii/util/Tag;

.field final synthetic this$0:Lcom/narvii/prefs/CommunitySettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/CommunitySettingFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/Tag;

    .line 8
    .line 9
    const-string v0, "leave"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    .line 15
    return-void
.end method

.method private leaveCommunity()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const-string v1, "community"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/model/Community;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    .line 32
    .line 33
    iput v0, v1, Lcom/narvii/model/Community;->id:I

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;-><init>(Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->buildCells(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    .line 13
    :goto_0
    const v4, 0x7f120f69

    .line 14
    .line 15
    if-ge v3, v0, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    instance-of v6, v5, Lcom/narvii/list/prefs/PrefsItem;

    .line 22
    .line 23
    if-eqz v6, :cond_2

    .line 24
    .line 25
    check-cast v5, Lcom/narvii/list/prefs/PrefsItem;

    .line 26
    .line 27
    iget v5, v5, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 28
    .line 29
    .line 30
    const v6, 0x7f12030d

    .line 31
    .line 32
    if-ne v5, v6, :cond_0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    if-ne v5, v4, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    const v4, 0x7f1210a1

    .line 40
    .line 41
    if-ne v5, v4, :cond_2

    .line 42
    move v1, v3

    .line 43
    .line 44
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    const-string v0, "account"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-lez v1, :cond_7

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    add-int/lit8 v0, v1, 0x1

    .line 68
    .line 69
    add-int/lit8 v5, v1, 0x2

    .line 70
    .line 71
    new-instance v6, Lcom/narvii/list/prefs/PrefsSection;

    .line 72
    .line 73
    .line 74
    const v7, 0x7f1207b4

    .line 75
    .line 76
    .line 77
    invoke-direct {v6, v7}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 86
    .line 87
    const-class v4, Lcom/narvii/account/CommunityPushSettingFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    iput-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 94
    .line 95
    const-string v4, "config"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 102
    .line 103
    const-string v6, "community"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v6}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    check-cast v6, Lcom/narvii/community/CommunityService;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 113
    move-result v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v7}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    iget-object v7, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 120
    .line 121
    const-string v8, "community_push_setting_id"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 125
    move-result v4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    .line 130
    iget-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 131
    .line 132
    if-nez v6, :cond_4

    .line 133
    const/4 v6, 0x0

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_4
    iget-object v6, v6, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 137
    .line 138
    :goto_2
    const-string v7, "community_push_setting_name"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    .line 143
    iget-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 144
    .line 145
    const-string v6, "Source"

    .line 146
    .line 147
    const-string v7, "Settings"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    add-int/lit8 v4, v1, 0x3

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 158
    .line 159
    .line 160
    const v5, 0x7f120f40

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v5}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 164
    .line 165
    const-class v5, Lcom/narvii/user/list/BlockedListFragment;

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    move-result-object v5

    .line 170
    .line 171
    iput-object v5, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 172
    .line 173
    add-int/lit8 v5, v1, 0x4

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    .line 178
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 179
    .line 180
    .line 181
    const v4, 0x7f120137

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 185
    .line 186
    const-class v6, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 187
    .line 188
    .line 189
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    move-result-object v7

    .line 191
    .line 192
    iput-object v7, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 193
    .line 194
    iget-object v8, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    .line 200
    const-string v8, "title"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    .line 205
    iget-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 206
    .line 207
    const-string v7, "privilegeKey"

    .line 208
    .line 209
    const-string v9, "privilegeOfChatInviteRequest"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v4, v9}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    iput-object v4, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v9}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 226
    move-result v4

    .line 227
    .line 228
    const/high16 v9, -0x10000

    .line 229
    const/4 v10, 0x3

    .line 230
    .line 231
    if-ne v4, v10, :cond_5

    .line 232
    move v4, v9

    .line 233
    goto :goto_3

    .line 234
    :cond_5
    move v4, v2

    .line 235
    .line 236
    :goto_3
    iput v4, v0, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 237
    .line 238
    add-int/lit8 v4, v1, 0x5

    .line 239
    .line 240
    .line 241
    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 242
    .line 243
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 244
    .line 245
    .line 246
    const v5, 0x7f120135

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, v5}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    move-result-object v6

    .line 254
    .line 255
    iput-object v6, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 259
    move-result-object v11

    .line 260
    .line 261
    .line 262
    const v12, 0x7f1202ec

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    move-result-object v11

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    .line 271
    iget-object v6, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 272
    .line 273
    iget-object v8, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    const-string v8, "subTitle"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .line 284
    iget-object v5, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 285
    .line 286
    const-string v6, "privilegeOfCommentOnUserProfile"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 293
    move-result-object v5

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v5, v6}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    move-result-object v5

    .line 298
    .line 299
    iput-object v5, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v6}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 303
    move-result v3

    .line 304
    .line 305
    if-ne v3, v10, :cond_6

    .line 306
    move v2, v9

    .line 307
    .line 308
    :cond_6
    iput v2, v0, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 309
    .line 310
    add-int/lit8 v2, v1, 0x6

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    .line 315
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 316
    .line 317
    .line 318
    const v3, 0x7f121042

    .line 319
    .line 320
    .line 321
    invoke-direct {v0, v3}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 322
    .line 323
    const-class v3, Lcom/narvii/post/draft/DraftListFragment;

    .line 324
    .line 325
    .line 326
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    move-result-object v3

    .line 328
    .line 329
    iput-object v3, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 330
    .line 331
    add-int/lit8 v3, v1, 0x7

    .line 332
    .line 333
    .line 334
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 335
    .line 336
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 337
    .line 338
    const/16 v2, 0x64

    .line 339
    .line 340
    if-ne v0, v2, :cond_7

    .line 341
    .line 342
    add-int/lit8 v1, v1, 0x8

    .line 343
    .line 344
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 345
    .line 346
    .line 347
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 351
    .line 352
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 356
    :cond_7
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d065e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    move-object p2, p1

    .line 17
    .line 18
    check-cast p2, Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    const p3, 0x7f120f43

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 25
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/prefs/SettingsFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->leaveCommunity()V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/prefs/SettingsFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
