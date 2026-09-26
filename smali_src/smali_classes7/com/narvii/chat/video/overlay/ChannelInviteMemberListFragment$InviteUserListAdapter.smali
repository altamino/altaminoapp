.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InviteUserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/chat/detail/MemberListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

.method private userClicked(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v0, "Source"

    .line 10
    .line 11
    const-string v1, "Invite to VV Chat"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 18
    return-void
.end method


# virtual methods
.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    new-instance p2, Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    return-object p2
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "/chat/thread/"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 18
    .line 19
    const-string v2, "id"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "/member"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "type"

    .line 42
    .line 43
    const-string v1, "default"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/User;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d042c

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0a0f36

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 22
    .line 23
    .line 24
    const p3, 0x7f0a0171

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a09f9

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    iput-boolean v0, p3, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 58
    .line 59
    .line 60
    const p3, 0x7f0a0a32

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->membersAlreadyJoinedMapper:Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 84
    const/4 v2, 0x0

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 89
    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 93
    .line 94
    if-eq v1, v0, :cond_0

    .line 95
    const/4 v3, 0x2

    .line 96
    .line 97
    if-ne v1, v3, :cond_1

    .line 98
    :cond_0
    move v1, v0

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v1, v2

    .line 101
    .line 102
    :goto_0
    sget-object v3, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 120
    move-result-object v4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const/4 v4, 0x0

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4, p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->isInvited(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    move-result p1

    .line 135
    .line 136
    const/16 v3, 0x8

    .line 137
    .line 138
    .line 139
    const v4, 0x7f0a0a33

    .line 140
    .line 141
    .line 142
    const v5, 0x7f0a0a34

    .line 143
    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    check-cast p1, Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 160
    .line 161
    .line 162
    const v0, 0x7f120b5e

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    .line 177
    const/high16 p3, -0x80000000

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    goto :goto_2

    .line 189
    :cond_3
    const/4 v1, -0x1

    .line 190
    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    check-cast p1, Landroid/widget/TextView;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 200
    .line 201
    .line 202
    const v6, 0x7f120de5

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    check-cast p1, Landroid/widget/TextView;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    goto :goto_2

    .line 234
    .line 235
    .line 236
    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    check-cast p1, Landroid/widget/TextView;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    check-cast p1, Landroid/widget/TextView;

    .line 256
    .line 257
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 258
    .line 259
    .line 260
    const v0, 0x7f120de6

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 264
    move-result-object p3

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    check-cast p1, Landroid/widget/ImageView;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 284
    move-result-object p3

    .line 285
    .line 286
    .line 287
    const v0, 0x7f0800bd

    .line 288
    .line 289
    .line 290
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 291
    move-result-object p3

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    if-eqz p5, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0171

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    check-cast p3, Lcom/narvii/model/User;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p3}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->userClicked(Lcom/narvii/model/User;)V

    .line 18
    return v2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0a0a32

    .line 26
    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    check-cast p3, Lcom/narvii/model/User;

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    return v2

    .line 33
    .line 34
    .line 35
    :cond_1
    const p1, 0x7f0a0a33

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    instance-of p2, p1, Landroid/widget/ImageView;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    check-cast p1, Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    instance-of p2, p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p3}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->v(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/User;)V

    .line 64
    return v2

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 68
    move-result p1

    .line 69
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "new"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 19
    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/detail/MemberListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/detail/MemberListResponse;

    return-object v0
.end method
