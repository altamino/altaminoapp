.class public Lcom/narvii/invite/InviteMembersFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/InviteMembersFragment$Adapter;,
        Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;
    }
.end annotation


# static fields
.field public static final SECOND_DAY:I = 0x15180

.field public static final SECOND_HOUR:I = 0xe10

.field public static final SECOND_MINUTE:I = 0x3c


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field public countDownTimer:Landroid/os/CountDownTimer;

.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field durtationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

.field inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

.field private isLeader:Z

.field linkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private themeColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/invite/InviteMembersFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/invite/InviteMembersFragment;->isLeader:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/invite/InviteMembersFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/invite/InviteMembersFragment;->themeColor:I

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;-><init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;-><init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 27
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$string;->invite_members:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 42
    .line 43
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/invite/InviteMembersFragment;->isLeader:Z

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/invite/InviteFriendHelper;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Lcom/narvii/invite/InviteFriendHelper;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    sget v4, Lcom/narvii/lib/R$string;->never:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    .line 84
    const v3, 0x3f480

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    sget v4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    .line 91
    .line 92
    new-array v5, v1, [Ljava/lang/Object;

    .line 93
    const/4 v6, 0x3

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v6

    .line 98
    .line 99
    aput-object v6, v5, v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    .line 111
    const v3, 0x15180

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    sget v4, Lcom/narvii/lib/R$string;->datetime_one_day:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    .line 129
    const v3, 0xa8c0

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    sget v4, Lcom/narvii/lib/R$string;->datetime_n_hours:I

    .line 136
    .line 137
    new-array v5, v1, [Ljava/lang/Object;

    .line 138
    .line 139
    const/16 v6, 0xc

    .line 140
    .line 141
    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    aput-object v6, v5, v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    const/16 v3, 0xe10

    .line 157
    .line 158
    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v3

    .line 161
    .line 162
    sget v4, Lcom/narvii/lib/R$string;->datetime_one_hour:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    const/16 v3, 0x708

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    sget v4, Lcom/narvii/lib/R$string;->datetime_n_minutes:I

    .line 180
    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    .line 183
    const/16 v5, 0x1e

    .line 184
    .line 185
    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    aput-object v5, v1, v2

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    const-string v0, "config"

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 214
    move-result v0

    .line 215
    .line 216
    iput v0, p0, Lcom/narvii/invite/InviteMembersFragment;->themeColor:I

    .line 217
    .line 218
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v1

    .line 231
    .line 232
    if-eqz v1, :cond_1

    .line 233
    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    .line 240
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    check-cast v1, Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    goto :goto_1

    .line 251
    .line 252
    :cond_1
    if-nez p1, :cond_2

    .line 253
    .line 254
    const-string p1, "statistics"

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 261
    .line 262
    const-string v0, "Invite Members"

    .line 263
    .line 264
    .line 265
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    const-string v0, "Invite Members Total"

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    const-string v0, "Source"

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 282
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    .line 16
    const p2, -0xc0a01

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 23
    return-void
.end method
