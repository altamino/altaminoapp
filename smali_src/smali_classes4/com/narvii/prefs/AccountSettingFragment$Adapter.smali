.class Lcom/narvii/prefs/AccountSettingFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AccountSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field AMINOID:Lcom/narvii/util/Tag;

.field DELETE:Lcom/narvii/util/Tag;

.field LOGOUT:Lcom/narvii/util/Tag;

.field PROFILE:Lcom/narvii/util/Tag;

.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/Tag;

    .line 8
    .line 9
    const-string v0, "aminoId"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->AMINOID:Lcom/narvii/util/Tag;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/util/Tag;

    .line 17
    .line 18
    const-string v0, "logout"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/util/Tag;

    .line 26
    .line 27
    const-string v0, "delete"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/util/Tag;

    .line 35
    .line 36
    const-string v0, "profile"

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    .line 42
    return-void
.end method

.method public static synthetic f(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->lambda$buildCells$0(Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method

.method private synthetic lambda$buildCells$0(Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const v0, 0x7f12013e

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1, v0}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
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

.method private sendAccountInfoRequest()V
    .locals 3

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
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v2, "/account"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0, p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 6
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
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/prefs/AccountSettingFragment;->config:Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_0
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    const v4, 0x7f120029

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    new-instance v3, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v4}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    .line 77
    const/4 v4, 0x0

    .line 78
    .line 79
    iput-boolean v4, v3, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_1
    new-instance v3, Lcom/narvii/list/prefs/PrefsText;

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4, v1}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    iput-boolean v2, v3, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 88
    .line 89
    :goto_0
    if-eqz v2, :cond_2

    .line 90
    .line 91
    const-class v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    iput-object v1, v3, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_2
    new-instance v2, Lcom/narvii/prefs/b;

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, p0, v1}, Lcom/narvii/prefs/b;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;)V

    .line 104
    .line 105
    iput-object v2, v3, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result v2

    .line 117
    const/4 v3, 0x1

    .line 118
    .line 119
    .line 120
    const v4, 0x7f120054

    .line 121
    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    new-instance v1, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_3
    const-string v2, " "

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    new-instance v2, Lcom/narvii/list/prefs/PrefsText;

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 140
    move-result v5

    .line 141
    sub-int/2addr v5, v3

    .line 142
    .line 143
    .line 144
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-direct {v2, v4, v1}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 151
    .line 152
    iput-boolean v3, v2, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 153
    move-object v1, v2

    .line 154
    .line 155
    :goto_3
    const-class v2, Lcom/narvii/account/settings/UpdatePhoneNumberSettingsFragment;

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    const v4, 0x7f120033

    .line 176
    .line 177
    if-eqz v2, :cond_4

    .line 178
    .line 179
    new-instance v1, Lcom/narvii/list/prefs/PrefsRedAlert;

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    .line 183
    goto :goto_4

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    .line 187
    move-result v2

    .line 188
    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    new-instance v2, Lcom/narvii/list/prefs/PrefsText;

    .line 192
    .line 193
    .line 194
    invoke-direct {v2, v4, v1}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 195
    .line 196
    iput-boolean v3, v2, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 197
    move-object v1, v2

    .line 198
    goto :goto_4

    .line 199
    .line 200
    :cond_5
    new-instance v1, Lcom/narvii/list/prefs/PrefsWarning;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v4}, Lcom/narvii/list/prefs/PrefsWarning;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 212
    .line 213
    .line 214
    const v3, 0x7f120035

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    .line 221
    .line 222
    :goto_4
    const-class v2, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    .line 234
    .line 235
    .line 236
    const v2, 0x7f12002c

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, v2}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 240
    .line 241
    const-class v2, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 242
    .line 243
    .line 244
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    const-string v3, "verify_type"

    .line 248
    const/4 v4, 0x3

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    .line 253
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    .line 259
    .line 260
    .line 261
    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 288
    .line 289
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 290
    .line 291
    iget-object v2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 292
    .line 293
    .line 294
    const v3, 0x7f12003c

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    .line 300
    .line 301
    invoke-direct {v1, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isGoogleConnected()Z

    .line 305
    move-result v0

    .line 306
    .line 307
    iput-boolean v0, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 313
    .line 314
    .line 315
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 321
    .line 322
    .line 323
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 326
    .line 327
    .line 328
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    .line 334
    .line 335
    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_6
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0d066a

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a09d3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0a02cb

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    if-eqz p3, :cond_0

    .line 46
    move p3, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p3, v1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    const p2, 0x7f0a0395

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 61
    .line 62
    if-eqz p3, :cond_1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v1, v2

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 71
    .line 72
    if-ne v0, v1, :cond_3

    .line 73
    .line 74
    .line 75
    const p1, 0x7f0d0663

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    const p2, 0x7f0a0832

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    const p3, 0x7f120047

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object p1

    .line 101
    .line 102
    :cond_3
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    .line 103
    .line 104
    if-ne v0, v1, :cond_4

    .line 105
    .line 106
    .line 107
    const p1, 0x7f0d065f

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    const p2, 0x7f0a0417

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, Landroid/widget/TextView;

    .line 121
    .line 122
    .line 123
    const p3, 0x7f120032

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object p1

    .line 133
    .line 134
    :cond_4
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    .line 135
    .line 136
    if-ne v0, v1, :cond_7

    .line 137
    .line 138
    .line 139
    const p1, 0x7f0d0667

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    const-string p2, "account"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 155
    move-result p3

    .line 156
    .line 157
    if-eqz p3, :cond_6

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    const p3, 0x7f0a0171

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object p3

    .line 169
    .line 170
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 171
    .line 172
    if-nez p2, :cond_5

    .line 173
    const/4 p2, 0x0

    .line 174
    goto :goto_2

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-virtual {p3, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 182
    :cond_6
    return-object p1

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    move-result-object p1

    .line 187
    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->sendAccountInfoRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0417

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0832

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/prefs/AccountSettingFragment;->logout()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 26
    .line 27
    sget-object v1, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "DeleteAccount"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/prefs/AccountSettingFragment;->deleteAccount()V

    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    if-ne p3, v0, :cond_5

    .line 51
    .line 52
    const-string p1, "config"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 59
    .line 60
    const-string p2, "account"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 70
    move-result p1

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    const-class p1, Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string p5, "/user-profile/"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    const-string p3, "api"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 142
    .line 143
    new-instance p4, Lcom/narvii/prefs/AccountSettingFragment$Adapter$2;

    .line 144
    .line 145
    const-class p5, Lcom/narvii/model/api/UserResponse;

    .line 146
    .line 147
    .line 148
    invoke-direct {p4, p0, p5, p1}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$2;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p2, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 152
    :cond_4
    :goto_1
    return v1

    .line 153
    .line 154
    :cond_5
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsToggle;

    .line 155
    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    check-cast p3, Lcom/narvii/list/prefs/PrefsToggle;

    .line 159
    .line 160
    iget-boolean p1, p3, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 168
    move-result-object p2

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 174
    .line 175
    new-array p4, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    iget-object p5, p3, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 185
    move-result-object p5

    .line 186
    const/4 v0, 0x0

    .line 187
    .line 188
    aput-object p5, p4, v0

    .line 189
    .line 190
    .line 191
    const p5, 0x7f120fe7

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p5, p4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    const p2, 0x7f120fd5

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 205
    .line 206
    new-instance p2, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;

    .line 207
    .line 208
    .line 209
    invoke-direct {p2, p0, p3}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 216
    goto :goto_2

    .line 217
    .line 218
    :cond_6
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 219
    .line 220
    .line 221
    invoke-static {p1, p3, v1}, Lcom/narvii/prefs/AccountSettingFragment;->t(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V

    .line 222
    :goto_2
    return v1

    .line 223
    .line 224
    .line 225
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 226
    move-result p1

    .line 227
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
    invoke-direct {p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->sendAccountInfoRequest()V

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
