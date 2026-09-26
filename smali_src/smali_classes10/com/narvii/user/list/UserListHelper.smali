.class public Lcom/narvii/user/list/UserListHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;

.field userListItemHost:Lcom/narvii/user/list/UserListItemHost;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/user/list/UserListItemHost;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/list/UserListHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    .line 8
    return-void
.end method


# virtual methods
.method public updateCell(Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0f36

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    const v0, 0x7f0a0171

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    const v0, 0x7f0a09f9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    const v0, 0x7f0a00a8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v2, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    move-object v2, v0

    .line 82
    .line 83
    check-cast v2, Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v3, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    const v0, 0x7f0a0108

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    const/4 v2, 0x0

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    .line 106
    .line 107
    .line 108
    invoke-interface {v3}, Lcom/narvii/user/list/UserListItemHost;->showAminoId()Z

    .line 109
    move-result v3

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    iget-object v3, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result v3

    .line 118
    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v4, "@"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    iget-object v4, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    goto :goto_2

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_2
    const v0, 0x7f0a0549

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_7
    const v0, 0x7f0a0441

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    check-cast p2, Landroid/widget/TextView;

    .line 172
    .line 173
    if-eqz p2, :cond_9

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Lcom/narvii/user/list/UserListItemHost;->showDisableView()Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 185
    move-result p1

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    move v1, v2

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_9
    return-void
.end method
