.class Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubAdapter"
.end annotation


# instance fields
.field private info:Lcom/narvii/influencer/FanClub;

.field isMeOrFan:Z

.field request:Lcom/narvii/util/http/ApiRequest;

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field userListError:Ljava/lang/String;

.field private final userListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/influencer/FansInfoListResponse;",
            ">;"
        }
    .end annotation
.end field

.field userListResponse:Lcom/narvii/influencer/FansInfoListResponse;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;

    .line 15
    .line 16
    const-class p2, Lcom/narvii/influencer/FansInfoListResponse;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, p2}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;Ljava/lang/Class;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 28
    return-void
.end method

.method private isMeOrFan()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->w(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->info:Lcom/narvii/influencer/FanClub;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
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
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/User;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0d077c

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    const p3, 0x7f0a0721

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 29
    .line 30
    .line 31
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a0943

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v2, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 56
    .line 57
    .line 58
    const p3, 0x7f0a01bb

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    check-cast p3, Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->info:Lcom/narvii/influencer/FanClub;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    .line 77
    const v2, 0x7f120fed

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_0
    const v2, 0x7f1201a1

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    :cond_1
    iget-boolean v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 87
    xor-int/2addr v2, v1

    .line 88
    .line 89
    .line 90
    const v3, 0x7f0a01bd

    .line 91
    .line 92
    .line 93
    invoke-static {p2, v3, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 101
    .line 102
    .line 103
    const v2, 0x7f0a0f16

    .line 104
    .line 105
    .line 106
    const v3, -0xb5b5b6

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p2, v2, v3}, Lcom/narvii/user/profile/UserProfileFragment;->access$1200(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V

    .line 110
    .line 111
    .line 112
    const p3, 0x7f0a0f17

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    check-cast v2, Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 121
    .line 122
    .line 123
    const v4, -0x4c4c4d

    .line 124
    .line 125
    .line 126
    const v5, -0x44000001

    .line 127
    .line 128
    .line 129
    invoke-static {v3, p2, p3, v4, v5}, Lcom/narvii/user/profile/UserProfileFragment;->access$1300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;III)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 133
    move-result-object p3

    .line 134
    .line 135
    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 136
    .line 137
    .line 138
    const v4, 0x7f120df7

    .line 139
    .line 140
    .line 141
    const v5, 0x7f120d27

    .line 142
    .line 143
    .line 144
    invoke-static {p3, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 145
    move-result-object p3

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    iget p1, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 151
    .line 152
    if-lez p1, :cond_2

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    move v1, v0

    .line 155
    .line 156
    .line 157
    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 158
    .line 159
    .line 160
    const p1, 0x7f0a07fd

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 167
    .line 168
    if-eqz p3, :cond_3

    .line 169
    .line 170
    .line 171
    const p3, 0x7f060171

    .line 172
    goto :goto_2

    .line 173
    .line 174
    .line 175
    :cond_3
    const p3, 0x7f060170

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    .line 180
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 181
    .line 182
    if-eqz p1, :cond_4

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListResponse:Lcom/narvii/influencer/FansInfoListResponse;

    .line 185
    .line 186
    if-nez p1, :cond_4

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 189
    .line 190
    if-nez p1, :cond_4

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    new-instance p3, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    const-string v1, "influencer/"

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v1, "/fans"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p3

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    const-string/jumbo p3, "start"

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    const/16 p3, 0xa

    .line 239
    .line 240
    .line 241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object p3

    .line 243
    .line 244
    const-string/jumbo v0, "size"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 252
    move-result-object p1

    .line 253
    .line 254
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 255
    .line 256
    const-string p1, "api"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 263
    .line 264
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 265
    .line 266
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p3, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 270
    :cond_4
    return-object p2
.end method

.method public onFanClubSubscriptionChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/User;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget v1, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->isMeOrFan:Z

    .line 3
    .line 4
    const-string p2, "User Profile"

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_1
    :goto_0
    const-class p1, Lcom/narvii/influencer/FansListFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    const-string p4, "id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    const/4 p3, 0x0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    .line 55
    const-string/jumbo p4, "user"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const-string p3, "Source"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 67
    :goto_2
    const/4 p1, 0x1

    .line 68
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
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListError:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListResponse:Lcom/narvii/influencer/FansInfoListResponse;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method
