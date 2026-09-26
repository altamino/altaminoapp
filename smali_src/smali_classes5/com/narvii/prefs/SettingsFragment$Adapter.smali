.class Lcom/narvii/prefs/SettingsFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field ACCOUNTPROFILE:Lcom/narvii/util/Tag;

.field COPYRIGHT:Lcom/narvii/util/Tag;

.field ClUB:Lcom/narvii/util/Tag;

.field LOGIN:Lcom/narvii/util/Tag;

.field LOGOUT:Lcom/narvii/util/Tag;

.field MEMBERSHIP:Lcom/narvii/util/Tag;

.field WALLET:Lcom/narvii/util/Tag;

.field copyrightHit:I

.field copyrightTime:J

.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/Tag;

    .line 8
    .line 9
    const-string v0, "accountProfile"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/util/Tag;

    .line 17
    .line 18
    const-string v0, "membership"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/util/Tag;

    .line 26
    .line 27
    const-string v0, "club"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ClUB:Lcom/narvii/util/Tag;

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/util/Tag;

    .line 35
    .line 36
    const-string v0, "wallet"

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/util/Tag;

    .line 44
    .line 45
    const-string v0, "logout"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 51
    .line 52
    new-instance p1, Lcom/narvii/util/Tag;

    .line 53
    .line 54
    const-string v0, "login"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 60
    .line 61
    new-instance p1, Lcom/narvii/util/Tag;

    .line 62
    .line 63
    const-string v0, "copyright"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    .line 69
    .line 70
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->version:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static synthetic f(Lcom/narvii/prefs/SettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->lambda$buildCells$0(Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method

.method private synthetic lambda$buildCells$0(Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lai/medialab/medialabads2/MediaLabAds;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/prefs/SettingsFragment$Adapter$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/prefs/SettingsFragment$Adapter$1;-><init>(Lcom/narvii/prefs/SettingsFragment$Adapter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lai/medialab/medialabads2/MediaLabAds;->showUserInitiatedConsentUpdateForm(Landroid/app/Activity;Lai/medialab/medialabads2/cmp/ConsentCompletionListener;)V

    .line 19
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
.method protected buildCells(Ljava/util/List;)V
    .locals 9
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
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    const-string v1, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 23
    .line 24
    const/16 v4, 0x64

    .line 25
    const/4 v5, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    :cond_0
    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v6

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 50
    .line 51
    .line 52
    const v4, 0x7f120026

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isPremiumFeatureEnabled()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    iget-object v4, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    :cond_2
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 94
    .line 95
    .line 96
    const v4, 0x7f1207d9

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    .line 110
    move-result v1

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 115
    .line 116
    .line 117
    const v4, 0x7f120f69

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 121
    .line 122
    const-class v4, Lcom/narvii/account/PushSettingListFragment;

    .line 123
    .line 124
    .line 125
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    :cond_3
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    .line 137
    move-result v1

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 142
    .line 143
    .line 144
    const v4, 0x7f120f40

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 148
    .line 149
    const-class v4, Lcom/narvii/user/list/BlockedListFragment;

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 161
    .line 162
    .line 163
    const v4, 0x7f120137

    .line 164
    .line 165
    .line 166
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 167
    .line 168
    const-class v7, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 169
    .line 170
    .line 171
    invoke-static {v7}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    iput-object v7, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 175
    .line 176
    iget-object v8, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    const-string v8, "title"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    iget-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 188
    .line 189
    const-string v7, "privilegeKey"

    .line 190
    .line 191
    const-string v8, "privilegeOfChatInviteRequest"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 198
    move-result-object v4

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v7

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v7, v8}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 207
    .line 208
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 212
    move-result-object v4

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v8}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 216
    move-result v4

    .line 217
    const/4 v7, 0x3

    .line 218
    .line 219
    if-ne v4, v7, :cond_4

    .line 220
    .line 221
    const/high16 v4, -0x10000

    .line 222
    goto :goto_1

    .line 223
    .line 224
    .line 225
    :cond_4
    const v4, -0x7f000001

    .line 226
    .line 227
    :goto_1
    iput v4, v1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 228
    .line 229
    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    :cond_5
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 233
    .line 234
    iget-object v4, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 235
    .line 236
    .line 237
    const v7, 0x7f120f44

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 241
    move-result-object v4

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v7, v4}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 245
    .line 246
    iget-object v4, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 247
    .line 248
    iget-object v4, v4, Lcom/narvii/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 249
    .line 250
    const-string v7, "returnToSendChat"

    .line 251
    .line 252
    .line 253
    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 254
    move-result v4

    .line 255
    .line 256
    iput-boolean v4, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 257
    .line 258
    iget-object v4, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 259
    .line 260
    iget-object v4, v4, Lcom/narvii/prefs/SettingsFragment;->switchCallback:Lcom/narvii/util/Callback;

    .line 261
    .line 262
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 263
    .line 264
    .line 265
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    :cond_6
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 268
    .line 269
    .line 270
    const v4, 0x7f1210a1

    .line 271
    .line 272
    .line 273
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 274
    .line 275
    const-class v4, Lcom/narvii/master/setting/LanguageSettingFragment;

    .line 276
    .line 277
    .line 278
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    move-result-object v4

    .line 280
    .line 281
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    if-eqz v2, :cond_7

    .line 287
    .line 288
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 289
    .line 290
    .line 291
    const v4, 0x7f120cd0

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    goto :goto_2

    .line 299
    .line 300
    :cond_7
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 301
    .line 302
    .line 303
    const v4, 0x7f120840

    .line 304
    .line 305
    .line 306
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 307
    .line 308
    .line 309
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    :goto_2
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 312
    .line 313
    .line 314
    const v4, 0x7f12109e

    .line 315
    .line 316
    .line 317
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 318
    .line 319
    const-class v4, Lcom/narvii/announcement/AnnouncementListFragment;

    .line 320
    .line 321
    .line 322
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 323
    move-result-object v4

    .line 324
    .line 325
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 331
    .line 332
    .line 333
    const v4, 0x7f12125f

    .line 334
    .line 335
    .line 336
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 337
    .line 338
    const-class v4, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    .line 339
    .line 340
    .line 341
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    move-result-object v4

    .line 343
    .line 344
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 345
    .line 346
    .line 347
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    if-eqz v2, :cond_8

    .line 350
    .line 351
    .line 352
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->qualified(Lcom/narvii/app/NVContext;)Z

    .line 353
    move-result v1

    .line 354
    .line 355
    if-eqz v1, :cond_8

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 359
    move-result v1

    .line 360
    .line 361
    if-nez v1, :cond_8

    .line 362
    .line 363
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 364
    .line 365
    .line 366
    const v4, 0x7f12009b

    .line 367
    .line 368
    .line 369
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 370
    .line 371
    const-class v4, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    .line 372
    .line 373
    .line 374
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 375
    move-result-object v4

    .line 376
    .line 377
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 378
    .line 379
    const-string v7, "darkTheme"

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 383
    move-result v8

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    .line 388
    .line 389
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    :cond_8
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 392
    .line 393
    .line 394
    const v4, 0x7f120f42

    .line 395
    .line 396
    .line 397
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 398
    .line 399
    new-instance v4, Landroid/content/Intent;

    .line 400
    .line 401
    const-string v7, "ndc://help-center"

    .line 402
    .line 403
    .line 404
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 405
    move-result-object v7

    .line 406
    .line 407
    const-string v8, "android.intent.action.VIEW"

    .line 408
    .line 409
    .line 410
    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 411
    .line 412
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 413
    .line 414
    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 418
    .line 419
    .line 420
    const v4, 0x7f120f41

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 424
    .line 425
    new-instance v4, Lcom/narvii/master/CommunityHelper;

    .line 426
    .line 427
    .line 428
    invoke-direct {v4, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4}, Lcom/narvii/master/CommunityHelper;->getFeedBackIntent()Landroid/content/Intent;

    .line 432
    move-result-object v4

    .line 433
    .line 434
    if-nez v4, :cond_9

    .line 435
    const/4 v4, 0x0

    .line 436
    .line 437
    :cond_9
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 438
    .line 439
    .line 440
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 443
    .line 444
    .line 445
    const v4, 0x7f1211df

    .line 446
    .line 447
    .line 448
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 449
    .line 450
    new-instance v4, Landroid/content/Intent;

    .line 451
    .line 452
    const-string v7, "ndc://tos"

    .line 453
    .line 454
    .line 455
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 456
    move-result-object v7

    .line 457
    .line 458
    .line 459
    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    .line 461
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 467
    .line 468
    .line 469
    const v4, 0x7f120f4e

    .line 470
    .line 471
    .line 472
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 473
    .line 474
    new-instance v4, Landroid/content/Intent;

    .line 475
    .line 476
    const-string v7, "ndc://privacy"

    .line 477
    .line 478
    .line 479
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 480
    move-result-object v7

    .line 481
    .line 482
    .line 483
    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .line 485
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 486
    .line 487
    .line 488
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    invoke-static {}, Lai/medialab/medialabads2/MediaLabAds;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 492
    move-result-object v1

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1}, Lai/medialab/medialabads2/MediaLabAds;->shouldAllowUserInitiatedConsentUpdate()Z

    .line 496
    move-result v1

    .line 497
    .line 498
    if-eqz v1, :cond_a

    .line 499
    .line 500
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 501
    .line 502
    .line 503
    const v4, 0x7f120e78

    .line 504
    .line 505
    .line 506
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 507
    .line 508
    iput-boolean v6, v1, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 509
    .line 510
    new-instance v4, Lcom/narvii/prefs/p;

    .line 511
    .line 512
    .line 513
    invoke-direct {v4, p0}, Lcom/narvii/prefs/p;-><init>(Lcom/narvii/prefs/SettingsFragment$Adapter;)V

    .line 514
    .line 515
    iput-object v4, v1, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 516
    .line 517
    .line 518
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    :cond_a
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDevOptions()Ljava/lang/String;

    .line 522
    move-result-object v0

    .line 523
    .line 524
    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 526
    move-result v0

    .line 527
    .line 528
    if-nez v0, :cond_b

    .line 529
    .line 530
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 531
    .line 532
    .line 533
    const v1, 0x7f1203ee

    .line 534
    .line 535
    .line 536
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 537
    .line 538
    const-class v1, Lcom/narvii/prefs/DevSettingsFragment;

    .line 539
    .line 540
    .line 541
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 542
    move-result-object v1

    .line 543
    .line 544
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 545
    .line 546
    .line 547
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    :cond_b
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 550
    .line 551
    .line 552
    const v1, 0x7f120f3f

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 556
    .line 557
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 558
    .line 559
    iget-object v1, v1, Lcom/narvii/prefs/SettingsFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 560
    .line 561
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 562
    .line 563
    iput-boolean v6, v0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 564
    .line 565
    .line 566
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 569
    .line 570
    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->debugPrefsHelper:Lcom/narvii/util/debug/DebugPrefsHelper;

    .line 571
    .line 572
    if-eqz v0, :cond_c

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, p1}, Lcom/narvii/util/debug/DebugPrefsHelper;->addCells(Ljava/util/List;)V

    .line 576
    .line 577
    :cond_c
    if-eqz v3, :cond_d

    .line 578
    .line 579
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 580
    .line 581
    .line 582
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 583
    .line 584
    .line 585
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 588
    .line 589
    .line 590
    const v1, 0x7f1210a2

    .line 591
    .line 592
    .line 593
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 594
    .line 595
    const-class v1, Lcom/narvii/prefs/StorageFragment;

    .line 596
    .line 597
    .line 598
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 599
    move-result-object v1

    .line 600
    .line 601
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 602
    .line 603
    iput-boolean v5, v0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 604
    .line 605
    .line 606
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    :cond_d
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 609
    .line 610
    .line 611
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    .line 616
    if-eqz v2, :cond_e

    .line 617
    .line 618
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 619
    .line 620
    .line 621
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    goto :goto_3

    .line 623
    .line 624
    :cond_e
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 625
    .line 626
    .line 627
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    :goto_3
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    .line 630
    .line 631
    .line 632
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d066d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a01ac

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 32
    move-result p3

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    if-ne v0, v1, :cond_7

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0d0665

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0d90

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    const p3, 0x7f0a06d5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    const v1, -0x2ffde5

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    const v5, 0x7f0800b9

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .line 103
    const-string v0, "#40000000"

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 107
    move-result v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v0}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 111
    .line 112
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 113
    .line 114
    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 118
    move-result p3

    .line 119
    .line 120
    if-eqz p3, :cond_1

    .line 121
    .line 122
    .line 123
    const p3, 0x7f120c86

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    .line 129
    const p3, -0xd6296e

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_1
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 137
    .line 138
    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    .line 142
    move-result p3

    .line 143
    .line 144
    if-nez p3, :cond_2

    .line 145
    .line 146
    .line 147
    const p3, 0x7f120c8b

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 151
    goto :goto_0

    .line 152
    .line 153
    :cond_2
    if-ne p3, v3, :cond_3

    .line 154
    .line 155
    .line 156
    const p3, 0x7f120c8c

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 160
    goto :goto_0

    .line 161
    .line 162
    :cond_3
    if-lez p3, :cond_4

    .line 163
    .line 164
    const/16 v0, 0xe

    .line 165
    .line 166
    if-gt p3, v0, :cond_4

    .line 167
    .line 168
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 169
    .line 170
    new-array v2, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object p3

    .line 175
    .line 176
    aput-object p3, v2, v4

    .line 177
    .line 178
    .line 179
    const p3, 0x7f120c8d

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    move-result-object p3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    goto :goto_0

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_5
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    .line 203
    const v2, 0x7f0800b7

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 214
    .line 215
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 216
    .line 217
    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 221
    move-result p3

    .line 222
    .line 223
    if-ltz p3, :cond_6

    .line 224
    .line 225
    .line 226
    const p3, 0x7f120c87

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    goto :goto_1

    .line 234
    .line 235
    .line 236
    :cond_6
    const p3, 0x7f120c8f

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    .line 241
    .line 242
    const p3, -0x818182

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    :goto_1
    return-object p1

    .line 247
    .line 248
    :cond_7
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 249
    .line 250
    if-ne v0, v1, :cond_8

    .line 251
    .line 252
    .line 253
    const p1, 0x7f0d0663

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    .line 260
    const p2, 0x7f0a0832

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    move-result-object p2

    .line 265
    .line 266
    check-cast p2, Landroid/widget/TextView;

    .line 267
    .line 268
    .line 269
    const p3, 0x7f120047

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    .line 274
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    return-object p1

    .line 284
    .line 285
    :cond_8
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 286
    .line 287
    if-ne v0, v1, :cond_9

    .line 288
    .line 289
    .line 290
    const p1, 0x7f0d0662

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    .line 297
    const p2, 0x7f0a082f

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    move-result-object p2

    .line 302
    .line 303
    check-cast p2, Landroid/widget/TextView;

    .line 304
    .line 305
    .line 306
    const p3, 0x7f120042

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 310
    .line 311
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    return-object p1

    .line 321
    .line 322
    :cond_9
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    .line 323
    .line 324
    if-ne v0, v1, :cond_a

    .line 325
    .line 326
    .line 327
    const p1, 0x7f0d065d

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 331
    move-result-object p1

    .line 332
    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 339
    .line 340
    new-array v0, v3, [Ljava/lang/Object;

    .line 341
    .line 342
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->version:Ljava/lang/String;

    .line 343
    .line 344
    aput-object v1, v0, v4

    .line 345
    .line 346
    .line 347
    const v1, 0x7f12125a

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    move-result-object p3

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string p3, "\n"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 362
    .line 363
    .line 364
    const v0, 0x7f12034d

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 368
    move-result-object p3

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string p3, " "

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 379
    .line 380
    .line 381
    const v0, 0x7f12034c

    .line 382
    .line 383
    .line 384
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 385
    move-result-object p3

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object p2

    .line 393
    move-object p3, p1

    .line 394
    .line 395
    check-cast p3, Landroid/widget/TextView;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    return-object p1

    .line 405
    .line 406
    :cond_a
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    .line 407
    .line 408
    if-ne v0, v1, :cond_10

    .line 409
    .line 410
    .line 411
    const p1, 0x7f0d065b

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 415
    move-result-object p1

    .line 416
    .line 417
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 418
    .line 419
    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 423
    move-result p2

    .line 424
    .line 425
    if-eqz p2, :cond_f

    .line 426
    .line 427
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 428
    .line 429
    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 433
    move-result-object p2

    .line 434
    .line 435
    .line 436
    const p3, 0x7f0a0171

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    move-result-object p3

    .line 441
    .line 442
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 443
    .line 444
    .line 445
    const v0, 0x7f0a09f9

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 449
    move-result-object v0

    .line 450
    .line 451
    check-cast v0, Landroid/widget/TextView;

    .line 452
    .line 453
    if-nez p2, :cond_b

    .line 454
    move-object v1, v2

    .line 455
    goto :goto_2

    .line 456
    .line 457
    .line 458
    :cond_b
    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 459
    move-result-object v1

    .line 460
    .line 461
    .line 462
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .line 464
    if-nez p2, :cond_c

    .line 465
    goto :goto_3

    .line 466
    .line 467
    .line 468
    :cond_c
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 469
    move-result-object v2

    .line 470
    .line 471
    .line 472
    :goto_3
    invoke-virtual {p3, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, v4}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .line 480
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 481
    .line 482
    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 483
    .line 484
    .line 485
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getSecurityLevel()I

    .line 486
    move-result p2

    .line 487
    .line 488
    if-eq p2, v3, :cond_e

    .line 489
    const/4 p3, 0x3

    .line 490
    .line 491
    if-eq p2, p3, :cond_d

    .line 492
    goto :goto_4

    .line 493
    .line 494
    .line 495
    :cond_d
    const v4, 0x7f080603

    .line 496
    goto :goto_4

    .line 497
    .line 498
    .line 499
    :cond_e
    const v4, 0x7f080604

    .line 500
    .line 501
    :goto_4
    if-eqz v4, :cond_f

    .line 502
    .line 503
    .line 504
    const p2, 0x7f0a0056

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    move-result-object p2

    .line 509
    .line 510
    check-cast p2, Landroid/widget/ImageView;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 514
    move-result-object p3

    .line 515
    .line 516
    .line 517
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 518
    move-result-object p3

    .line 519
    .line 520
    .line 521
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_f
    return-object p1

    .line 523
    .line 524
    .line 525
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 526
    move-result-object p1

    .line 527
    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "Settings"

    .line 5
    .line 6
    const-string v2, "Source"

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 22
    return v3

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p3, v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 37
    return v3

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    .line 40
    .line 41
    if-ne p3, v0, :cond_2

    .line 42
    .line 43
    const-class p1, Lcom/narvii/prefs/AccountSettingFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 51
    return v3

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 54
    .line 55
    if-ne p3, v0, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->logout()V

    .line 61
    return v3

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 64
    .line 65
    if-ne p3, v0, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->login()V

    .line 71
    return v3

    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    .line 74
    .line 75
    if-ne p3, v0, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    move-result-wide p1

    .line 80
    .line 81
    iget-wide v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightTime:J

    .line 82
    .line 83
    sub-long v0, p1, v0

    .line 84
    .line 85
    const-wide/16 v4, 0x7d0

    .line 86
    .line 87
    cmp-long p3, v0, v4

    .line 88
    const/4 p5, 0x0

    .line 89
    .line 90
    if-lez p3, :cond_5

    .line 91
    .line 92
    iput-wide p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightTime:J

    .line 93
    .line 94
    iput p5, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_5
    iget p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    .line 98
    add-int/2addr p1, v3

    .line 99
    .line 100
    iput p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    .line 101
    const/4 p2, 0x6

    .line 102
    .line 103
    if-ne p1, p2, :cond_6

    .line 104
    .line 105
    const-string p1, "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"

    .line 106
    .line 107
    .line 108
    :try_start_0
    invoke-static {p1, p5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 109
    move-result-object p1

    .line 110
    array-length p2, p1

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p5, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    .line 118
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object p3

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    .line 129
    move-result p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    .line 133
    move-result p3

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p5, p5, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    .line 138
    new-instance p1, Landroid/text/style/ImageSpan;

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 142
    .line 143
    new-instance p2, Landroid/text/SpannableString;

    .line 144
    .line 145
    const-string p3, "Developed by mmin18.$"

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    .line 152
    move-result p3

    .line 153
    sub-int/2addr p3, v3

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    .line 157
    move-result v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1, p3, v0, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    .line 162
    .line 163
    const p1, 0x7f0a03ba

    .line 164
    .line 165
    .line 166
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    check-cast p1, Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    :cond_6
    :goto_0
    return v3

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 177
    move-result p1

    .line 178
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 8
    .line 9
    iget v0, v0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120f41

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    const-class p1, Lcom/narvii/util/diagnosis/DiagnosisFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 23
    .line 24
    iget-boolean p2, p2, Lcom/narvii/prefs/SettingsFragment;->abted:Z

    .line 25
    const/4 p3, 0x1

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const-string p2, "showExtras"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 36
    return p3

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
