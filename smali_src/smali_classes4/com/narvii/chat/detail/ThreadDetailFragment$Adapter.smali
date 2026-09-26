.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public fullAuthorInfo:Lcom/narvii/model/User;

.field memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final memberListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/chat/detail/MemberListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/chat/detail/MemberListResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$1;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    return-void
.end method

.method private isCommunityOpen()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->z(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "community"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->A(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/config/ConfigService;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    :cond_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v1, v0, Lcom/narvii/model/Community;->id:I

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
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

.method private sendMemberListReqeust()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/chat/thread/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "/member?start=0&size=100&type=default&cv=1.2"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 58
    return-void
.end method

.method private showNotAllowTransformFansOnlyThread()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120d7d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f1207e7

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 26
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    :cond_2
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    iget v2, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->joined()Z

    .line 83
    move-result v2

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    :cond_4
    new-instance v2, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->joined()Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 126
    move-result v2

    .line 127
    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 140
    move-result v2

    .line 141
    .line 142
    if-nez v2, :cond_7

    .line 143
    .line 144
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-nez v2, :cond_7

    .line 151
    .line 152
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    .line 156
    move-result v2

    .line 157
    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-nez v2, :cond_8

    .line 165
    .line 166
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 178
    move-result v2

    .line 179
    .line 180
    if-nez v2, :cond_a

    .line 181
    .line 182
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    .line 186
    move-result v2

    .line 187
    .line 188
    if-nez v2, :cond_9

    .line 189
    .line 190
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_a

    .line 197
    .line 198
    :cond_9
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 204
    .line 205
    .line 206
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_a
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 210
    move-result v2

    .line 211
    .line 212
    if-nez v2, :cond_c

    .line 213
    .line 214
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    .line 218
    move-result v2

    .line 219
    .line 220
    if-nez v2, :cond_b

    .line 221
    .line 222
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    .line 226
    move-result v2

    .line 227
    .line 228
    if-eqz v2, :cond_c

    .line 229
    .line 230
    :cond_b
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 236
    .line 237
    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_c
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 242
    move-result v2

    .line 243
    .line 244
    if-nez v2, :cond_e

    .line 245
    .line 246
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    .line 250
    move-result v2

    .line 251
    .line 252
    if-eqz v2, :cond_e

    .line 253
    .line 254
    .line 255
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 258
    .line 259
    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 263
    .line 264
    .line 265
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 268
    .line 269
    .line 270
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 276
    .line 277
    .line 278
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->publicChat()Z

    .line 282
    move-result v2

    .line 283
    .line 284
    if-eqz v2, :cond_e

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isGlobal()Z

    .line 288
    move-result v0

    .line 289
    .line 290
    if-nez v0, :cond_d

    .line 291
    .line 292
    .line 293
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->isCommunityOpen()Z

    .line 294
    move-result v0

    .line 295
    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 302
    .line 303
    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    :cond_d
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->G(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    .line 310
    move-result v0

    .line 311
    .line 312
    if-eqz v0, :cond_e

    .line 313
    .line 314
    .line 315
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    :cond_e
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 323
    .line 324
    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/chat/thread/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 15
    .line 16
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 17
    .line 18
    .line 19
    const v5, 0x7f0a09f9

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    .line 23
    if-ne v0, v2, :cond_6

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0d00bc

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->fullAuthorInfo:Lcom/narvii/model/User;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    move-object v6, v2

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lcom/narvii/model/User;

    .line 57
    .line 58
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    iput-object v3, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->fullAuthorInfo:Lcom/narvii/model/User;

    .line 71
    move-object v6, v3

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    :cond_3
    if-nez v6, :cond_4

    .line 81
    .line 82
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 92
    .line 93
    .line 94
    const v2, 0x7f0a0de6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/narvii/model/User;->isModerator()Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    const/16 v8, 0x8

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move v8, v9

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-object v0

    .line 123
    .line 124
    :cond_6
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 125
    .line 126
    if-ne v0, v2, :cond_7

    .line 127
    .line 128
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    const v2, 0x7f0d00b7

    .line 132
    const/4 v5, 0x1

    .line 133
    .line 134
    sget-object v6, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    .line 135
    .line 136
    move-object/from16 v0, p0

    .line 137
    .line 138
    move-object/from16 v3, p2

    .line 139
    .line 140
    move-object/from16 v4, p3

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    .line 147
    :cond_7
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 148
    const/4 v10, 0x2

    .line 149
    const/4 v11, 0x1

    .line 150
    .line 151
    if-ne v0, v2, :cond_c

    .line 152
    .line 153
    .line 154
    const v0, 0x7f0d00b8

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 161
    .line 162
    if-ne v1, v10, :cond_8

    .line 163
    goto :goto_3

    .line 164
    :cond_8
    move v11, v9

    .line 165
    .line 166
    .line 167
    :goto_3
    const v1, 0x7f0a03b9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    if-eqz v11, :cond_9

    .line 174
    move v3, v9

    .line 175
    goto :goto_4

    .line 176
    .line 177
    :cond_9
    const/16 v3, 0x8

    .line 178
    .line 179
    .line 180
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->I(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    .line 199
    move-result v2

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    move v2, v9

    .line 203
    goto :goto_5

    .line 204
    .line 205
    :cond_a
    const/16 v2, 0x8

    .line 206
    .line 207
    .line 208
    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    const v1, 0x7f0a05b8

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 227
    .line 228
    .line 229
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->J(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    .line 230
    move-result v2

    .line 231
    .line 232
    if-eqz v2, :cond_b

    .line 233
    move v8, v9

    .line 234
    goto :goto_6

    .line 235
    .line 236
    :cond_b
    const/16 v8, 0x8

    .line 237
    .line 238
    .line 239
    :goto_6
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 240
    return-object v0

    .line 241
    .line 242
    :cond_c
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 243
    .line 244
    if-ne v0, v2, :cond_11

    .line 245
    .line 246
    .line 247
    const v0, 0x7f0d0744

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    const v2, 0x7f0a0ee5

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    move-result-object v2

    .line 259
    .line 260
    check-cast v2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 261
    .line 262
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 263
    .line 264
    if-eqz v3, :cond_10

    .line 265
    .line 266
    if-eqz v2, :cond_10

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 270
    move-result v3

    .line 271
    move v4, v9

    .line 272
    .line 273
    :goto_7
    iget-object v5, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 274
    .line 275
    .line 276
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 277
    move-result v5

    .line 278
    .line 279
    if-ge v4, v5, :cond_e

    .line 280
    .line 281
    if-ge v4, v3, :cond_d

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 285
    move-result-object v5

    .line 286
    .line 287
    check-cast v5, Lcom/narvii/story/widgets/StoryTopicView;

    .line 288
    goto :goto_8

    .line 289
    .line 290
    :cond_d
    iget-object v5, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 291
    .line 292
    .line 293
    const v6, 0x7f0d0743

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v6, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 297
    move-result-object v5

    .line 298
    .line 299
    check-cast v5, Lcom/narvii/story/widgets/StoryTopicView;

    .line 300
    .line 301
    new-instance v6, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;

    .line 302
    .line 303
    .line 304
    invoke-direct {v6, v7}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$2;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    .line 312
    :goto_8
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 313
    .line 314
    .line 315
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v6

    .line 317
    .line 318
    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v11}, Landroid/view/View;->setClickable(Z)V

    .line 325
    .line 326
    add-int/lit8 v4, v4, 0x1

    .line 327
    goto :goto_7

    .line 328
    .line 329
    :cond_e
    :goto_9
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 330
    .line 331
    .line 332
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 333
    move-result v3

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 337
    move-result v4

    .line 338
    .line 339
    if-ge v3, v4, :cond_f

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 343
    move-result v3

    .line 344
    sub-int/2addr v3, v11

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 348
    goto :goto_9

    .line 349
    :cond_f
    return-object v0

    .line 350
    :cond_10
    return-object v6

    .line 351
    .line 352
    :cond_11
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 353
    .line 354
    if-ne v0, v2, :cond_23

    .line 355
    .line 356
    iget-object v0, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 360
    move-result-object v0

    .line 361
    .line 362
    .line 363
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 364
    move-result-object v0

    .line 365
    .line 366
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 367
    int-to-float v0, v0

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 371
    move-result-object v2

    .line 372
    .line 373
    const/high16 v13, 0x41400000    # 12.0f

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 377
    move-result v2

    .line 378
    sub-float/2addr v0, v2

    .line 379
    .line 380
    const/high16 v2, 0x40a00000    # 5.0f

    .line 381
    div-float/2addr v0, v2

    .line 382
    .line 383
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 384
    .line 385
    if-nez v2, :cond_12

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary()Ljava/util/List;

    .line 389
    move-result-object v2

    .line 390
    goto :goto_a

    .line 391
    .line 392
    .line 393
    :cond_12
    invoke-virtual {v1, v2}, Lcom/narvii/model/ChatThread;->getOptimizedMembersSummary(Ljava/util/List;)Ljava/util/List;

    .line 394
    move-result-object v2

    .line 395
    .line 396
    :goto_a
    const/16 v13, 0xa

    .line 397
    .line 398
    if-eqz v2, :cond_13

    .line 399
    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 402
    move-result v14

    .line 403
    .line 404
    if-lt v14, v13, :cond_13

    .line 405
    .line 406
    const/16 v14, 0x9

    .line 407
    .line 408
    .line 409
    invoke-interface {v2, v9, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 410
    move-result-object v2

    .line 411
    .line 412
    .line 413
    :cond_13
    const v14, 0x7f0d00c0

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7, v14, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 417
    move-result-object v3

    .line 418
    .line 419
    .line 420
    const v4, 0x7f0a0632

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object v4

    .line 425
    .line 426
    check-cast v4, Landroid/widget/GridLayout;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 430
    move-result v14

    .line 431
    .line 432
    if-lez v14, :cond_14

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 436
    move-result-object v14

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    .line 440
    move-result v14

    .line 441
    .line 442
    .line 443
    const v15, 0x7f0a02a9

    .line 444
    .line 445
    if-ne v14, v15, :cond_14

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 449
    move-result-object v14

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 453
    goto :goto_b

    .line 454
    :cond_14
    move-object v14, v6

    .line 455
    .line 456
    .line 457
    :goto_b
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 458
    move-result v15

    .line 459
    .line 460
    .line 461
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 462
    move-result v6

    .line 463
    .line 464
    if-le v15, v6, :cond_15

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 468
    move-result v6

    .line 469
    sub-int/2addr v6, v11

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 473
    const/4 v6, 0x0

    .line 474
    goto :goto_b

    .line 475
    .line 476
    .line 477
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 478
    move-result v6

    .line 479
    move v15, v9

    .line 480
    .line 481
    :goto_c
    if-ge v15, v6, :cond_21

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 485
    move-result v12

    .line 486
    .line 487
    if-ge v15, v12, :cond_16

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 491
    move-result-object v12

    .line 492
    goto :goto_d

    .line 493
    :cond_16
    const/4 v12, 0x0

    .line 494
    .line 495
    :goto_d
    if-nez v12, :cond_17

    .line 496
    .line 497
    iget-object v12, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 498
    .line 499
    .line 500
    const v11, 0x7f0d00be

    .line 501
    .line 502
    .line 503
    invoke-virtual {v12, v11, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 504
    move-result-object v12

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 508
    .line 509
    :cond_17
    iget-object v11, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 510
    .line 511
    if-nez v11, :cond_18

    .line 512
    move v11, v9

    .line 513
    goto :goto_e

    .line 514
    .line 515
    .line 516
    :cond_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 517
    move-result v11

    .line 518
    .line 519
    :goto_e
    iget v8, v1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 520
    .line 521
    iget-object v9, v1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 522
    .line 523
    if-nez v9, :cond_19

    .line 524
    const/4 v9, 0x0

    .line 525
    goto :goto_f

    .line 526
    .line 527
    .line 528
    :cond_19
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 529
    move-result v9

    .line 530
    .line 531
    .line 532
    :goto_f
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 533
    move-result v8

    .line 534
    .line 535
    .line 536
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 537
    move-result v8

    .line 538
    .line 539
    if-lt v8, v13, :cond_1a

    .line 540
    const/4 v8, 0x1

    .line 541
    goto :goto_10

    .line 542
    :cond_1a
    const/4 v8, 0x0

    .line 543
    .line 544
    :goto_10
    if-eqz v8, :cond_1b

    .line 545
    .line 546
    add-int/lit8 v9, v6, -0x1

    .line 547
    .line 548
    if-ne v15, v9, :cond_1b

    .line 549
    const/4 v9, 0x1

    .line 550
    goto :goto_11

    .line 551
    :cond_1b
    const/4 v9, 0x0

    .line 552
    .line 553
    .line 554
    :goto_11
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 555
    move-result-object v11

    .line 556
    float-to-int v13, v0

    .line 557
    .line 558
    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 559
    .line 560
    .line 561
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 562
    move-result-object v11

    .line 563
    .line 564
    check-cast v11, Lcom/narvii/model/User;

    .line 565
    .line 566
    iget-object v13, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 567
    .line 568
    .line 569
    invoke-static {v13}, Lcom/narvii/chat/detail/ThreadDetailFragment;->v(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/account/AccountService;

    .line 570
    move-result-object v13

    .line 571
    .line 572
    .line 573
    invoke-virtual {v13}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 574
    move-result-object v13

    .line 575
    .line 576
    if-eqz v13, :cond_1c

    .line 577
    .line 578
    .line 579
    invoke-virtual {v11}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 580
    move-result-object v10

    .line 581
    .line 582
    .line 583
    invoke-virtual {v13}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 584
    move-result-object v5

    .line 585
    .line 586
    .line 587
    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 588
    move-result v5

    .line 589
    .line 590
    if-eqz v5, :cond_1c

    .line 591
    .line 592
    iget-boolean v5, v13, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    .line 593
    .line 594
    iput-boolean v5, v11, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    .line 595
    .line 596
    .line 597
    :cond_1c
    const v5, 0x7f0a0f36

    .line 598
    .line 599
    .line 600
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 601
    move-result-object v10

    .line 602
    .line 603
    check-cast v10, Lcom/narvii/widget/UserAvatarLayout;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v10, v9}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 610
    move-result-object v5

    .line 611
    .line 612
    check-cast v5, Lcom/narvii/widget/UserAvatarLayout;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v5, v11}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 616
    .line 617
    .line 618
    const v5, 0x7f0a09f9

    .line 619
    .line 620
    .line 621
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 622
    move-result-object v10

    .line 623
    .line 624
    check-cast v10, Lcom/narvii/widget/NicknameView;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v10, v11}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 631
    move-result-object v10

    .line 632
    .line 633
    check-cast v10, Lcom/narvii/widget/NicknameView;

    .line 634
    .line 635
    if-nez v9, :cond_1d

    .line 636
    const/4 v13, 0x0

    .line 637
    goto :goto_12

    .line 638
    :cond_1d
    const/4 v13, 0x4

    .line 639
    .line 640
    .line 641
    :goto_12
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    const v10, 0x7f0a02aa

    .line 645
    .line 646
    .line 647
    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 648
    move-result-object v10

    .line 649
    .line 650
    iget v13, v11, Lcom/narvii/model/User;->membershipStatus:I

    .line 651
    const/4 v5, 0x2

    .line 652
    .line 653
    if-ne v13, v5, :cond_1e

    .line 654
    .line 655
    if-nez v9, :cond_1e

    .line 656
    const/4 v5, 0x0

    .line 657
    goto :goto_13

    .line 658
    :cond_1e
    const/4 v5, 0x4

    .line 659
    .line 660
    .line 661
    :goto_13
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 662
    .line 663
    iget-object v5, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    const v5, 0x7f0a098d

    .line 673
    .line 674
    .line 675
    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 676
    move-result-object v5

    .line 677
    .line 678
    if-eqz v5, :cond_20

    .line 679
    .line 680
    .line 681
    const v9, 0x7f0a0e75

    .line 682
    .line 683
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 687
    .line 688
    iget-object v9, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    .line 693
    if-eqz v8, :cond_1f

    .line 694
    .line 695
    add-int/lit8 v8, v6, -0x1

    .line 696
    .line 697
    if-ne v15, v8, :cond_1f

    .line 698
    const/4 v8, 0x0

    .line 699
    goto :goto_14

    .line 700
    .line 701
    :cond_1f
    const/16 v8, 0x8

    .line 702
    .line 703
    .line 704
    :goto_14
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 705
    .line 706
    :cond_20
    add-int/lit8 v15, v15, 0x1

    .line 707
    .line 708
    .line 709
    const v5, 0x7f0a09f9

    .line 710
    const/4 v9, 0x0

    .line 711
    const/4 v10, 0x2

    .line 712
    const/4 v11, 0x1

    .line 713
    .line 714
    const/16 v13, 0xa

    .line 715
    .line 716
    goto/16 :goto_c

    .line 717
    .line 718
    :cond_21
    if-nez v14, :cond_22

    .line 719
    .line 720
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 721
    .line 722
    .line 723
    const v2, 0x7f0d00bf

    .line 724
    const/4 v5, 0x0

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 728
    move-result-object v14

    .line 729
    goto :goto_15

    .line 730
    :cond_22
    const/4 v5, 0x0

    .line 731
    .line 732
    .line 733
    :goto_15
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 734
    move-result-object v1

    .line 735
    float-to-int v0, v0

    .line 736
    .line 737
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 741
    .line 742
    iget-object v0, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 743
    .line 744
    .line 745
    invoke-static {v0, v14}, Lcom/narvii/chat/detail/ThreadDetailFragment;->E(Lcom/narvii/chat/detail/ThreadDetailFragment;Landroid/view/View;)V

    .line 746
    .line 747
    iget-object v0, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    return-object v3

    .line 752
    .line 753
    :cond_23
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 754
    .line 755
    if-ne v0, v2, :cond_26

    .line 756
    .line 757
    .line 758
    const v0, 0x7f0d00c2

    .line 759
    .line 760
    .line 761
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 762
    move-result-object v0

    .line 763
    .line 764
    .line 765
    const v2, 0x7f0a02b1

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 769
    move-result-object v2

    .line 770
    .line 771
    iget v3, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    .line 772
    const/4 v4, 0x2

    .line 773
    .line 774
    if-ne v3, v4, :cond_24

    .line 775
    const/4 v12, 0x0

    .line 776
    goto :goto_16

    .line 777
    :cond_24
    const/4 v12, 0x4

    .line 778
    .line 779
    .line 780
    :goto_16
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 781
    .line 782
    .line 783
    const v2, 0x7f0a02b0

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 787
    move-result-object v2

    .line 788
    .line 789
    check-cast v2, Landroid/widget/CompoundButton;

    .line 790
    .line 791
    iget v1, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    .line 792
    .line 793
    if-ne v1, v4, :cond_25

    .line 794
    const/4 v9, 0x1

    .line 795
    goto :goto_17

    .line 796
    :cond_25
    const/4 v9, 0x0

    .line 797
    .line 798
    .line 799
    :goto_17
    invoke-virtual {v2, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 800
    .line 801
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-object v0

    .line 806
    .line 807
    :cond_26
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 808
    .line 809
    if-ne v0, v2, :cond_27

    .line 810
    .line 811
    .line 812
    const v0, 0x7f0d00c4

    .line 813
    .line 814
    .line 815
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 816
    move-result-object v0

    .line 817
    .line 818
    .line 819
    const v2, 0x7f0a02b4

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 823
    move-result-object v2

    .line 824
    .line 825
    check-cast v2, Landroid/widget/CompoundButton;

    .line 826
    .line 827
    iget-boolean v1, v1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 828
    .line 829
    .line 830
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 831
    .line 832
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    return-object v0

    .line 837
    .line 838
    :cond_27
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 839
    .line 840
    if-ne v0, v2, :cond_29

    .line 841
    .line 842
    .line 843
    const v0, 0x7f0d00a2

    .line 844
    .line 845
    .line 846
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 847
    move-result-object v0

    .line 848
    .line 849
    .line 850
    const v2, 0x7f0a0115

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 854
    move-result-object v2

    .line 855
    .line 856
    .line 857
    const v3, 0x7f0a0116

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 861
    move-result-object v3

    .line 862
    .line 863
    check-cast v3, Landroid/widget/TextView;

    .line 864
    .line 865
    .line 866
    const v4, 0x7f0a0117

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 870
    move-result-object v4

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    .line 874
    move-result-object v1

    .line 875
    .line 876
    .line 877
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 878
    move-result v5

    .line 879
    .line 880
    if-eqz v5, :cond_28

    .line 881
    .line 882
    const/16 v5, 0x8

    .line 883
    .line 884
    .line 885
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 886
    const/4 v6, 0x0

    .line 887
    .line 888
    .line 889
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 890
    goto :goto_18

    .line 891
    .line 892
    :cond_28
    const/16 v5, 0x8

    .line 893
    const/4 v6, 0x0

    .line 894
    .line 895
    .line 896
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    .line 904
    :goto_18
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    return-object v0

    .line 909
    .line 910
    :cond_29
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->AV_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 911
    .line 912
    .line 913
    const v5, 0x7f0a0059

    .line 914
    .line 915
    if-ne v0, v2, :cond_2a

    .line 916
    .line 917
    .line 918
    const v0, 0x7f0d00b4

    .line 919
    .line 920
    .line 921
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 922
    move-result-object v0

    .line 923
    .line 924
    .line 925
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 926
    move-result-object v1

    .line 927
    .line 928
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    return-object v0

    .line 933
    .line 934
    :cond_2a
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->SCREENROOM_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 935
    .line 936
    if-ne v0, v2, :cond_2b

    .line 937
    .line 938
    .line 939
    const v0, 0x7f0d00c6

    .line 940
    .line 941
    .line 942
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 943
    move-result-object v0

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 947
    move-result-object v1

    .line 948
    .line 949
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    return-object v0

    .line 954
    .line 955
    :cond_2b
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 956
    .line 957
    if-ne v0, v2, :cond_2e

    .line 958
    .line 959
    .line 960
    const v0, 0x7f0d00b6

    .line 961
    .line 962
    .line 963
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 964
    move-result-object v0

    .line 965
    .line 966
    .line 967
    const v2, 0x7f0a01a2

    .line 968
    .line 969
    .line 970
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 971
    move-result-object v2

    .line 972
    .line 973
    .line 974
    const v3, 0x7f0a01a1

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 978
    move-result-object v3

    .line 979
    .line 980
    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 984
    move-result-object v1

    .line 985
    .line 986
    if-eqz v1, :cond_2c

    .line 987
    .line 988
    const/16 v4, 0x8

    .line 989
    .line 990
    .line 991
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 995
    goto :goto_19

    .line 996
    .line 997
    :cond_2c
    const-string v1, "config"

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v7, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1001
    move-result-object v1

    .line 1002
    .line 1003
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1004
    .line 1005
    const-string v4, "themePack"

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v7, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1009
    move-result-object v4

    .line 1010
    .line 1011
    check-cast v4, Lcom/narvii/theme/ThemePackService;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 1015
    move-result-object v6

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1019
    move-result-object v6

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1023
    move-result-object v6

    .line 1024
    .line 1025
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1026
    .line 1027
    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1028
    .line 1029
    .line 1030
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 1031
    move-result v8

    .line 1032
    .line 1033
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1034
    .line 1035
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    .line 1039
    move-result v6

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 1043
    move-result v9

    .line 1044
    .line 1045
    sget-object v10, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v4, v9, v10, v8, v6}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 1049
    move-result-object v6

    .line 1050
    .line 1051
    if-nez v6, :cond_2d

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 1055
    move-result v1

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v4, v1}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 1059
    move-result v1

    .line 1060
    const/4 v4, 0x3

    .line 1061
    .line 1062
    new-array v4, v4, [F

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1066
    const/4 v1, 0x2

    .line 1067
    .line 1068
    aget v6, v4, v1

    .line 1069
    .line 1070
    .line 1071
    const v8, 0x3f59999a    # 0.85f

    .line 1072
    mul-float/2addr v6, v8

    .line 1073
    .line 1074
    aput v6, v4, v1

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 1078
    move-result v1

    .line 1079
    .line 1080
    const/16 v6, 0x8

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    .line 1085
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    goto :goto_19

    .line 1093
    :cond_2d
    const/4 v1, 0x0

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1100
    .line 1101
    .line 1102
    :goto_19
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1103
    move-result-object v1

    .line 1104
    .line 1105
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    return-object v0

    .line 1110
    .line 1111
    :cond_2e
    const/16 v6, 0x8

    .line 1112
    .line 1113
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1114
    .line 1115
    if-ne v0, v2, :cond_2f

    .line 1116
    .line 1117
    .line 1118
    const v0, 0x7f0d00c1

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1122
    move-result-object v0

    .line 1123
    .line 1124
    .line 1125
    const v2, 0x7f0a02ac

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1129
    move-result-object v2

    .line 1130
    .line 1131
    check-cast v2, Landroid/widget/CompoundButton;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    .line 1135
    move-result v1

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1139
    .line 1140
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    return-object v0

    .line 1145
    .line 1146
    :cond_2f
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1147
    .line 1148
    if-ne v0, v2, :cond_30

    .line 1149
    .line 1150
    .line 1151
    const v0, 0x7f0d00c3

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1155
    move-result-object v0

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1159
    move-result-object v1

    .line 1160
    .line 1161
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    return-object v0

    .line 1166
    .line 1167
    :cond_30
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1168
    .line 1169
    if-ne v0, v2, :cond_34

    .line 1170
    .line 1171
    .line 1172
    const v0, 0x7f0d00b2

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1176
    move-result-object v0

    .line 1177
    .line 1178
    .line 1179
    const v2, 0x7f0a02a3

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1183
    move-result-object v2

    .line 1184
    .line 1185
    iget v3, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 1186
    const/4 v4, 0x1

    .line 1187
    .line 1188
    if-eq v3, v4, :cond_31

    .line 1189
    const/4 v5, 0x0

    .line 1190
    goto :goto_1a

    .line 1191
    :cond_31
    move v5, v6

    .line 1192
    .line 1193
    .line 1194
    :goto_1a
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    .line 1196
    iget-object v3, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    .line 1201
    .line 1202
    const v2, 0x7f0a02a5

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1206
    move-result-object v2

    .line 1207
    .line 1208
    iget v1, v1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 1209
    .line 1210
    if-ne v1, v4, :cond_32

    .line 1211
    const/4 v5, 0x0

    .line 1212
    goto :goto_1b

    .line 1213
    :cond_32
    move v5, v6

    .line 1214
    .line 1215
    .line 1216
    :goto_1b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    .line 1218
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    .line 1223
    .line 1224
    const v1, 0x7f0a0cbf

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1228
    move-result-object v1

    .line 1229
    .line 1230
    iget-object v2, v7, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 1231
    .line 1232
    const-string v3, "showListEntry"

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 1236
    move-result v2

    .line 1237
    .line 1238
    if-eqz v2, :cond_33

    .line 1239
    const/4 v8, 0x0

    .line 1240
    goto :goto_1c

    .line 1241
    :cond_33
    move v8, v6

    .line 1242
    .line 1243
    .line 1244
    :goto_1c
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    .line 1246
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    return-object v0

    .line 1251
    .line 1252
    :cond_34
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1253
    .line 1254
    if-ne v0, v2, :cond_36

    .line 1255
    .line 1256
    .line 1257
    const v0, 0x7f0d03d9

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1261
    move-result-object v0

    .line 1262
    .line 1263
    const-string v1, "account"

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v7, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1267
    move-result-object v1

    .line 1268
    .line 1269
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 1273
    move-result-object v2

    .line 1274
    .line 1275
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 1279
    move-result-object v1

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v2, v1}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    .line 1283
    move-result-object v1

    .line 1284
    .line 1285
    .line 1286
    const v2, 0x7f0a03e6

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1290
    move-result-object v2

    .line 1291
    .line 1292
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 1293
    const/4 v3, 0x0

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 1297
    .line 1298
    if-eqz v1, :cond_35

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 1302
    move-result-object v3

    .line 1303
    .line 1304
    if-eqz v3, :cond_35

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 1308
    move-result-object v1

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1312
    goto :goto_1d

    .line 1313
    .line 1314
    .line 1315
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 1316
    move-result-object v1

    .line 1317
    .line 1318
    .line 1319
    const v3, 0x7f08042d

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 1323
    move-result-object v1

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1327
    .line 1328
    :goto_1d
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1332
    return-object v0

    .line 1333
    .line 1334
    :cond_36
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1335
    .line 1336
    if-ne v0, v2, :cond_37

    .line 1337
    .line 1338
    .line 1339
    const v0, 0x7f0d00c8

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1343
    move-result-object v0

    .line 1344
    .line 1345
    .line 1346
    const v2, 0x7f0a0fbf

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1350
    move-result-object v2

    .line 1351
    .line 1352
    check-cast v2, Landroid/widget/CompoundButton;

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    .line 1356
    move-result v1

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1360
    .line 1361
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    return-object v0

    .line 1366
    .line 1367
    :cond_37
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1368
    .line 1369
    if-ne v0, v2, :cond_38

    .line 1370
    .line 1371
    .line 1372
    const v0, 0x7f0d00ba

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1376
    move-result-object v0

    .line 1377
    .line 1378
    .line 1379
    const v2, 0x7f0a04ee

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1383
    move-result-object v2

    .line 1384
    .line 1385
    check-cast v2, Landroid/widget/CompoundButton;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isEnableProps()Z

    .line 1389
    move-result v1

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1393
    .line 1394
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    return-object v0

    .line 1399
    .line 1400
    :cond_38
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1401
    .line 1402
    if-ne v0, v2, :cond_39

    .line 1403
    .line 1404
    .line 1405
    const v0, 0x7f0d00c5

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1409
    move-result-object v0

    .line 1410
    .line 1411
    .line 1412
    const v2, 0x7f0a0b9d

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1416
    move-result-object v2

    .line 1417
    .line 1418
    check-cast v2, Landroid/widget/CompoundButton;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    .line 1422
    move-result v1

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1426
    .line 1427
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    return-object v0

    .line 1432
    .line 1433
    :cond_39
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1434
    .line 1435
    if-ne v0, v2, :cond_3a

    .line 1436
    .line 1437
    .line 1438
    const v0, 0x7f0d00bb

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1442
    move-result-object v0

    .line 1443
    .line 1444
    .line 1445
    const v2, 0x7f0a055d

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1449
    move-result-object v2

    .line 1450
    .line 1451
    check-cast v2, Landroid/widget/CompoundButton;

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 1455
    move-result v1

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1459
    .line 1460
    iget-object v1, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    return-object v0

    .line 1465
    .line 1466
    :cond_3a
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1467
    .line 1468
    if-ne v0, v1, :cond_3b

    .line 1469
    .line 1470
    .line 1471
    const v0, 0x7f0d00b3

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1475
    move-result-object v0

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1479
    move-result-object v1

    .line 1480
    .line 1481
    iget-object v2, v7, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1485
    return-object v0

    .line 1486
    .line 1487
    :cond_3b
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1488
    .line 1489
    if-ne v0, v1, :cond_3c

    .line 1490
    .line 1491
    .line 1492
    const v0, 0x7f0d00bd

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1496
    move-result-object v0

    .line 1497
    return-object v0

    .line 1498
    .line 1499
    :cond_3c
    sget-object v1, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1500
    .line 1501
    if-ne v0, v1, :cond_3d

    .line 1502
    .line 1503
    .line 1504
    const v0, 0x7f0d00b9

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v7, v0, v4, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1508
    move-result-object v0

    .line 1509
    return-object v0

    .line 1510
    .line 1511
    .line 1512
    :cond_3d
    invoke-super/range {p0 .. p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1513
    move-result-object v0

    .line 1514
    return-object v0
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->isLoading()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->sendMemberListReqeust()V

    .line 20
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    const v1, 0x7f0a02a3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    .line 2
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 3
    :goto_0
    sget-object v5, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    const v6, 0x7f0a02a9

    if-ne p3, v5, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz p5, :cond_2

    const v8, 0x7f0a0e75

    .line 4
    invoke-virtual {p5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    sget-object v8, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-eq p3, v8, :cond_3

    iget-object v8, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    xor-int/lit8 v9, v7, 0x1

    invoke-static {v8, v4, v9}, Lcom/narvii/chat/detail/ThreadDetailFragment;->F(Lcom/narvii/chat/detail/ThreadDetailFragment;ZZ)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return v3

    .line 7
    :cond_3
    :goto_2
    sget-object v4, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v7, "Chat Thread More Info"

    if-ne p3, v4, :cond_5

    if-eqz p5, :cond_5

    .line 8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v4

    const v8, 0x7f0a0171

    if-ne v4, v8, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    const-string p2, "Source"

    .line 11
    invoke-virtual {p1, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v3

    :cond_5
    const/4 v4, 0x2

    const-string v8, "thread"

    if-ne p3, v5, :cond_11

    if-nez p5, :cond_6

    goto/16 :goto_4

    .line 13
    :cond_6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v5

    const v9, 0x7f0a02a8

    if-ne v5, v9, :cond_7

    .line 14
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/narvii/model/User;

    if-eqz v5, :cond_7

    .line 15
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 16
    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->userOptions(Lcom/narvii/model/User;)V

    return v3

    .line 17
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v6, :cond_10

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 18
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->w(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 19
    sget-object p1, Lcom/narvii/logging/ActSemantic;->invite:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "InviteButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 21
    iget p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne p2, v3, :cond_9

    move v2, v3

    :cond_9
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 22
    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->publicChat()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_a
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 23
    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteMembers()V

    goto :goto_3

    .line 24
    :cond_c
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_d
    iget p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne p2, v4, :cond_e

    .line 25
    new-instance p2, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    new-instance p3, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;

    invoke-direct {p3, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showAcceptChatInvitationDialog(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    goto :goto_3

    .line 27
    :cond_e
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->groupChat()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 28
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1201dd

    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f1212a7

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_3

    .line 32
    :cond_f
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :goto_3
    return v3

    .line 33
    :cond_10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a098d

    if-ne v5, v6, :cond_11

    .line 34
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const-class p2, Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 35
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 36
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p3

    const-string p4, "threadId"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 38
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->z(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "__community"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {p0, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v3

    .line 40
    :cond_11
    :goto_4
    sget-object v5, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v5, :cond_12

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 41
    invoke-virtual {p1, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchClicked(Z)V

    return v3

    .line 42
    :cond_12
    sget-object v5, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v5, :cond_13

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 43
    invoke-virtual {p1, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchClicked(Z)V

    return v3

    .line 44
    :cond_13
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_16

    .line 45
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "Announcement"

    .line 46
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 48
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 49
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 50
    invoke-virtual {p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result p3

    if-nez p3, :cond_14

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isCoHost()Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 51
    sget-object p2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    goto :goto_5

    .line 52
    :cond_15
    sget-object p2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;->intent(Lcom/narvii/model/ChatThread;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :goto_5
    return v3

    .line 53
    :cond_16
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_17

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 54
    invoke-virtual {p1, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    return v3

    .line 55
    :cond_17
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_18

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 56
    invoke-virtual {p1, v4}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    return v3

    .line 57
    :cond_18
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_19

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v4, 0x3

    .line 58
    invoke-virtual {v2, v4}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    .line 59
    :cond_19
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_1a

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const/4 v4, 0x4

    .line 60
    invoke-virtual {v2, v4}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(I)V

    .line 61
    :cond_1a
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_1b

    .line 62
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "AddCoHost"

    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-class p1, Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 65
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v3

    .line 68
    :cond_1b
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_1e

    if-eqz p5, :cond_1d

    .line 69
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a03b9

    if-ne p1, p2, :cond_1c

    .line 70
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v7, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 71
    iget-object p2, p2, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_6

    .line 72
    :cond_1c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a05b8

    if-ne p1, p2, :cond_1d

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 73
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->L(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    :cond_1d
    :goto_6
    return v3

    .line 74
    :cond_1e
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_1f

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 75
    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->changeBackground()V

    return v3

    .line 76
    :cond_1f
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_20

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 77
    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchUserCanInviteClicked()V

    return v3

    .line 78
    :cond_20
    sget-object v2, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v2, :cond_22

    .line 79
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 80
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 81
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->showNotAllowTransformFansOnlyThread()V

    goto :goto_7

    :cond_21
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 82
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->transOrganizer()V

    :cond_22
    :goto_7
    if-ne p3, v0, :cond_29

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 83
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "joinThread"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 84
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 86
    :cond_23
    new-instance p1, Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;-><init>()V

    .line 87
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget-object p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const-string v0, "id"

    .line 88
    invoke-virtual {p4, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p4

    check-cast p4, Lcom/narvii/model/ChatThread;

    .line 90
    invoke-static {p4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 92
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 94
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->i0()Z

    if-nez p5, :cond_24

    goto/16 :goto_8

    .line 95
    :cond_24
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v1, :cond_26

    .line 96
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    invoke-virtual {p2, p3}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 97
    invoke-virtual {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->joinConversation()V

    goto :goto_8

    .line 98
    :cond_25
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 99
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FansOnlyContent;

    const-string p2, "Chat Thread"

    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    goto :goto_8

    .line 100
    :cond_26
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a02a5

    if-ne p1, p2, :cond_27

    .line 101
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "LeaveConversationButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 102
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->y(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    goto :goto_8

    .line 103
    :cond_27
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0cbf

    if-ne p1, p2, :cond_28

    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 104
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 105
    invoke-virtual {p4}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-static {p4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    :cond_28
    :goto_8
    return v3

    .line 108
    :cond_29
    sget-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_2a

    const-class v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 109
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    const-string v2, "key_thread"

    .line 111
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_thread_id"

    .line 112
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 114
    :cond_2a
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    const-string v1, "update"

    .line 15
    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "delete"

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    instance-of v2, v2, Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    const-string v2, "edit"

    .line 39
    .line 40
    if-ne v0, v2, :cond_5

    .line 41
    .line 42
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const-string v2, "_fromChatFragment"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string v2, "_fromThreadDetailFragment"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    :cond_2
    return-void

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 70
    .line 71
    new-instance v2, Lcom/narvii/chat/ThreadResponse;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    .line 75
    .line 76
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Lcom/narvii/model/ChatThread;

    .line 79
    .line 80
    iput-object v3, v2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v4, v3, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 85
    .line 86
    if-nez v4, :cond_4

    .line 87
    .line 88
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 89
    .line 90
    iput-object v0, v3, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 103
    .line 104
    :cond_5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    instance-of v2, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 107
    .line 108
    const-string v3, "account"

    .line 109
    .line 110
    if-eqz v2, :cond_8

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 137
    .line 138
    iget-object v4, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 139
    .line 140
    if-nez v4, :cond_6

    .line 141
    .line 142
    new-instance v4, Ljava/util/HashMap;

    .line 143
    .line 144
    .line 145
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 146
    .line 147
    iput-object v4, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 158
    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    iget-object v5, v2, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 168
    .line 169
    .line 170
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    :cond_7
    new-instance v0, Lcom/narvii/chat/ThreadResponse;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    .line 176
    .line 177
    iput-object v2, v0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 190
    .line 191
    :cond_8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 192
    .line 193
    instance-of v2, v0, Lcom/narvii/model/User;

    .line 194
    .line 195
    if-eqz v2, :cond_9

    .line 196
    .line 197
    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 198
    .line 199
    if-ne v2, v1, :cond_9

    .line 200
    .line 201
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 202
    .line 203
    if-eqz v2, :cond_9

    .line 204
    .line 205
    check-cast v0, Lcom/narvii/model/User;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 213
    move-result v0

    .line 214
    .line 215
    if-ltz v0, :cond_9

    .line 216
    .line 217
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 218
    .line 219
    .line 220
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    check-cast v2, Lcom/narvii/model/User;

    .line 224
    .line 225
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v4, Lcom/narvii/model/User;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 231
    move-result-object v4

    .line 232
    .line 233
    check-cast v4, Lcom/narvii/model/User;

    .line 234
    .line 235
    iget v2, v2, Lcom/narvii/model/User;->membershipStatus:I

    .line 236
    .line 237
    iput v2, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 238
    .line 239
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 240
    .line 241
    .line 242
    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 246
    .line 247
    :cond_9
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    .line 250
    .line 251
    if-eqz v2, :cond_b

    .line 252
    .line 253
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 259
    move-result-object v2

    .line 260
    .line 261
    if-nez v2, :cond_a

    .line 262
    const/4 v2, 0x0

    .line 263
    goto :goto_0

    .line 264
    .line 265
    .line 266
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 273
    move-result-object v2

    .line 274
    .line 275
    .line 276
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    move-result v0

    .line 278
    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 285
    move-result-object v2

    .line 286
    .line 287
    .line 288
    invoke-direct {v0, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 292
    move-result-object v2

    .line 293
    .line 294
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->isMeAccessibleToThisChat(Lcom/narvii/model/ChatThread;)Z

    .line 298
    move-result v0

    .line 299
    .line 300
    if-nez v0, :cond_b

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    move-result-object v0

    .line 305
    .line 306
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 307
    .line 308
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 311
    .line 312
    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    if-eqz v0, :cond_b

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 322
    move-result v0

    .line 323
    .line 324
    if-eqz v0, :cond_b

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    if-eqz v0, :cond_b

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 337
    const/4 v2, 0x0

    .line 338
    .line 339
    iput-boolean v2, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 343
    .line 344
    :cond_b
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 345
    .line 346
    instance-of v2, v0, Lcom/narvii/chat/util/ThreadNotification;

    .line 347
    .line 348
    if-eqz v2, :cond_d

    .line 349
    .line 350
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 351
    .line 352
    if-ne p1, v1, :cond_d

    .line 353
    .line 354
    check-cast v0, Lcom/narvii/chat/util/ThreadNotification;

    .line 355
    .line 356
    iget p1, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    .line 357
    const/4 v1, 0x2

    .line 358
    .line 359
    if-ne p1, v1, :cond_c

    .line 360
    .line 361
    iget-object p1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    .line 362
    .line 363
    if-eqz p1, :cond_d

    .line 364
    .line 365
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 366
    .line 367
    check-cast p1, Ljava/util/List;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->addMembers(Ljava/util/List;)V

    .line 371
    goto :goto_1

    .line 372
    :cond_c
    const/4 v1, 0x1

    .line 373
    .line 374
    if-ne p1, v1, :cond_d

    .line 375
    .line 376
    iget-object p1, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    .line 377
    .line 378
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 379
    .line 380
    if-eqz v0, :cond_d

    .line 381
    .line 382
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 383
    .line 384
    check-cast p1, Lcom/narvii/model/User;

    .line 385
    .line 386
    .line 387
    invoke-static {v0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->H(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    .line 388
    .line 389
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 390
    .line 391
    .line 392
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->M(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 393
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
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
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->sendMemberListReqeust()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorAbort()V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/ThreadResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/ThreadResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0}, Lcom/narvii/chat/ThreadResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->setObject(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/chat/ThreadResponse;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->updateResponse(Lcom/narvii/chat/ThreadResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 4
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_fromThreadDetailFragment"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object p1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string p1, "notification"

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 8
    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->setResponse(Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method

.method public updateResponse(Lcom/narvii/chat/ThreadResponse;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/chat/ThreadResponse;->object()Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->B(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->x(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->C(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->B(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->C(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->D(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V

    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->M(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 78
    return-void
.end method
