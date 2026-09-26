.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChatGuestListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/video/overlay/ChatGuestListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "type"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method private final sendRequest()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getIdList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v3, v1

    .line 15
    .line 16
    :goto_0
    if-ge v2, v0, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getIdList()Ljava/util/List;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    move-object v5, v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    const-string v5, ","

    .line 45
    .line 46
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v1, "/user-profile"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const-string v1, "q"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    .line 82
    const-string/jumbo v1, "type"

    .line 83
    .line 84
    const-string/jumbo v2, "uid"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    .line 89
    const-string v1, "api"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    new-instance v2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 104
    .line 105
    const-class v4, Lcom/narvii/model/api/UserListResponse;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v3, p0, v4}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter$sendRequest$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "UserList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03d4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_13

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0f36

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    const v0, 0x7f0a0171

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    const v0, 0x7f0a09f9

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    const v0, 0x7f0a0108

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    const/16 v1, 0x8

    .line 88
    const/4 v2, 0x0

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v3, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    iget-object v3, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v5, "@"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    const v0, 0x7f0a073d

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {p3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isHost()Z

    .line 147
    move-result v3

    .line 148
    .line 149
    if-nez v3, :cond_8

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isCoHost()Z

    .line 153
    move-result v3

    .line 154
    .line 155
    if-eqz v3, :cond_6

    .line 156
    goto :goto_3

    .line 157
    .line 158
    :cond_6
    if-nez v0, :cond_7

    .line 159
    goto :goto_5

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    goto :goto_5

    .line 164
    .line 165
    :cond_8
    :goto_3
    if-nez v0, :cond_9

    .line 166
    goto :goto_4

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-virtual {p3, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->isInvite(Lcom/narvii/model/User;)Z

    .line 173
    move-result p1

    .line 174
    .line 175
    if-eqz p1, :cond_e

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    .line 180
    const p1, 0x7f12086b

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    .line 185
    :cond_a
    if-eqz v0, :cond_b

    .line 186
    .line 187
    .line 188
    const p1, 0x7f0806c3

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    .line 193
    :cond_b
    if-eqz v0, :cond_c

    .line 194
    .line 195
    .line 196
    const p1, -0x66000001

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    :cond_c
    if-nez v0, :cond_d

    .line 202
    goto :goto_5

    .line 203
    .line 204
    .line 205
    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    goto :goto_5

    .line 207
    .line 208
    :cond_e
    if-eqz v0, :cond_f

    .line 209
    .line 210
    .line 211
    const p1, 0x7f12085b

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    .line 216
    :cond_f
    if-eqz v0, :cond_10

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    const p3, 0x7f0604b1

    .line 224
    .line 225
    .line 226
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 227
    move-result p1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .line 232
    :cond_10
    if-eqz v0, :cond_11

    .line 233
    .line 234
    .line 235
    const p1, 0x7f0806c2

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    .line 240
    :cond_11
    if-nez v0, :cond_12

    .line 241
    goto :goto_5

    .line 242
    :cond_12
    const/4 p1, 0x1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    .line 247
    .line 248
    :cond_13
    :goto_5
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 249
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->sendRequest()V

    .line 17
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a073d

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 23
    move-object v1, p3

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/model/User;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->access$inviteUser(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)V

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 44
    move-object v2, p3

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/model/User;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->access$getChannelId(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v2, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v2, v1

    .line 68
    .line 69
    :goto_0
    if-eqz v0, :cond_8

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 72
    .line 73
    new-instance v4, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v5

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move v5, v1

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v0, v5, v6}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getVvProfileClickListener$Amino_bundle()Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 116
    move-result-object v0

    .line 117
    const/4 v4, 0x5

    .line 118
    const/4 v5, 0x1

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    if-nez v2, :cond_3

    .line 127
    goto :goto_2

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result v2

    .line 132
    .line 133
    if-eq v2, v4, :cond_4

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v2, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    move v2, v5

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-virtual {v0, v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelType()Ljava/lang/Integer;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    if-nez v2, :cond_6

    .line 148
    goto :goto_4

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 152
    move-result v2

    .line 153
    .line 154
    if-eq v2, v4, :cond_7

    .line 155
    :goto_4
    move v1, v5

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-virtual {v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v5}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->curUserIsGuest(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 174
    move-result p1

    .line 175
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->this$0:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserList()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;->sendRequest()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
