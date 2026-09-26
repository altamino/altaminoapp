.class public Lcom/narvii/feed/vote/MembersPopupDialog;
.super Lcom/narvii/util/dialog/PopupBubbleDialog;
.source "SourceFile"


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field feed:Lcom/narvii/model/NVObject;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/feed/vote/VoterListResponse;",
            ">;"
        }
    .end annotation
.end field

.field request:Lcom/narvii/util/http/ApiRequest;

.field users:Lcom/narvii/feed/vote/VoterListResponse;

.field views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/feed/vote/MembersPopupDialog$1;

    .line 6
    .line 7
    const-class v0, Lcom/narvii/feed/vote/VoterListResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/vote/MembersPopupDialog$1;-><init>(Lcom/narvii/feed/vote/MembersPopupDialog;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/feed/vote/MembersPopupDialog$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/feed/vote/MembersPopupDialog$2;-><init>(Lcom/narvii/feed/vote/MembersPopupDialog;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected createUserListRequest(Lcom/narvii/model/NVObject;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "?start=0&size=6&cv=1.2"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    instance-of v1, p1, Lcom/narvii/model/Feed;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/model/Feed;

    .line 48
    .line 49
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public setFeed(Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->createUserListRequest(Lcom/narvii/model/NVObject;)Lcom/narvii/util/http/ApiRequest;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 19
    .line 20
    const-string p1, "api"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

    .line 37
    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x5

    .line 7
    .line 8
    new-array v0, v0, [Landroid/view/View;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a0580

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v2, 0x7f0a0581

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    aput-object v2, v0, v3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0a0582

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x2

    .line 42
    .line 43
    aput-object v2, v0, v3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v2, 0x7f0a0583

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x3

    .line 54
    .line 55
    aput-object v2, v0, v3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 58
    .line 59
    .line 60
    const v2, 0x7f0a0584

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x4

    .line 66
    .line 67
    aput-object v2, v0, v3

    .line 68
    .line 69
    .line 70
    :cond_0
    const v0, 0x7f0a0b8a

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 77
    .line 78
    const/16 v3, 0x8

    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    move v2, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v2, v1

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a098d

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 105
    move-result v2

    .line 106
    .line 107
    iget-object v4, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 108
    array-length v4, v4

    .line 109
    .line 110
    if-le v2, v4, :cond_2

    .line 111
    move v2, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move v2, v3

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    move v0, v1

    .line 118
    .line 119
    :goto_2
    iget-object v2, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 120
    array-length v4, v2

    .line 121
    .line 122
    if-ge v0, v4, :cond_8

    .line 123
    .line 124
    aget-object v2, v2, v0

    .line 125
    .line 126
    iget-object v4, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 127
    .line 128
    instance-of v5, v4, Lcom/narvii/model/Feed;

    .line 129
    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    check-cast v4, Lcom/narvii/model/Feed;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->isGlobalFeed()Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-eqz v4, :cond_3

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_3
    iget-object v4, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    :goto_3
    iget-object v4, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 147
    const/4 v5, 0x0

    .line 148
    .line 149
    if-nez v4, :cond_4

    .line 150
    move-object v4, v5

    .line 151
    goto :goto_4

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-virtual {v4, v0}, Lcom/narvii/feed/vote/VoterListResponse;->getUser(I)Lcom/narvii/model/User;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    :goto_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 159
    move-result-object v6

    .line 160
    .line 161
    .line 162
    const v7, 0x7f12018c

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v6

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 170
    move-result-object v6

    .line 171
    .line 172
    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 173
    .line 174
    if-nez v4, :cond_5

    .line 175
    goto :goto_5

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 179
    move-result-object v5

    .line 180
    .line 181
    .line 182
    :goto_5
    invoke-virtual {v6, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 186
    move-result-object v5

    .line 187
    .line 188
    .line 189
    const v6, 0x7f120828

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 197
    move-result-object v2

    .line 198
    .line 199
    check-cast v2, Lcom/narvii/widget/VoteIcon;

    .line 200
    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 204
    .line 205
    iget-object v5, v5, Lcom/narvii/feed/vote/VoterListResponse;->votedValueMap:Ljava/util/HashMap;

    .line 206
    .line 207
    if-nez v5, :cond_6

    .line 208
    goto :goto_6

    .line 209
    .line 210
    .line 211
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v4}, Lcom/narvii/feed/vote/VoterListResponse;->getVotedValue(Lcom/narvii/model/User;)I

    .line 217
    move-result v4

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v4}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 221
    goto :goto_7

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 227
    goto :goto_2

    .line 228
    :cond_8
    return-void
.end method
