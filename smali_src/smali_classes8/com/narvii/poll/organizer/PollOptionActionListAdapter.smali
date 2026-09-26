.class public abstract Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/PollOption;",
        "Lcom/narvii/poll/PollOptionListResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/PollOption;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/PollOption;->type:I

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/PollOption;->type:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0621

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    const v0, 0x7f0d0626

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iget p3, p1, Lcom/narvii/model/PollOption;->type:I

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0e9e

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0a06eb

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-ne p3, v1, :cond_3

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/model/Item;

    .line 36
    .line 37
    .line 38
    const p3, 0x7f0a0171

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    const p3, 0x7f0a09f9

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    check-cast p3, Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v0, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const p3, 0x7f0a055e

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    if-eqz p3, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 104
    move-result p1

    .line 105
    .line 106
    if-eqz p1, :cond_1

    .line 107
    move v3, v4

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    const p1, 0x7f0a0f38

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    const p1, 0x7f0a1004

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    goto :goto_3

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v0

    .line 153
    move-object v1, v0

    .line 154
    .line 155
    check-cast v1, Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v2, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    if-eqz p3, :cond_5

    .line 163
    .line 164
    iget-object v1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v1

    .line 169
    .line 170
    if-eqz v1, :cond_4

    .line 171
    goto :goto_1

    .line 172
    :cond_4
    move v1, v4

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    :goto_1
    move v1, v3

    .line 175
    .line 176
    .line 177
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    const v0, 0x7f0a0dea

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v0

    .line 185
    move-object v1, v0

    .line 186
    .line 187
    check-cast v1, Landroid/widget/TextView;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    if-nez p3, :cond_6

    .line 195
    move v3, v4

    .line 196
    .line 197
    .line 198
    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :goto_3
    const p1, 0x7f0a0ff4

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    const p1, 0x7f0a0ff5

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/PollOption;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    const v3, 0x7f0a1004

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 22
    .line 23
    instance-of v3, v2, Lcom/narvii/model/Item;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/model/Item;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 35
    return v1

    .line 36
    .line 37
    :cond_0
    if-eqz p5, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    const v3, 0x7f0a0f38

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 49
    .line 50
    instance-of v2, v0, Lcom/narvii/model/Item;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/model/Item;

    .line 55
    .line 56
    iget-object p1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    return v1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 67
    return v1

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/poll/PollOptionListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/poll/PollOptionListResponse;

    return-object v0
.end method

.method public withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V
    .locals 2

    .line 1
    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    new-instance p4, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p4, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1203eb

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f1203d7

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;-><init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    new-instance p4, Lcom/narvii/util/dialog/ProgressDialog;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-direct {p4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;-><init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Lcom/narvii/model/PollOption;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    iput-object v0, p4, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v0, "/blog/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, "/poll/option/"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object p1, p3, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string p2, "api"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 107
    .line 108
    iget-object p3, p4, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    return-void
.end method
