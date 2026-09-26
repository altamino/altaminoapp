.class public Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;
.super Lcom/narvii/chat/video/overlay/AudienceLayout;
.source "SourceFile"


# instance fields
.field audienceCount:Landroid/widget/TextView;

.field avatar1:Lcom/narvii/widget/UserAvatarLayout;

.field avatar2:Lcom/narvii/widget/UserAvatarLayout;

.field avatar3:Lcom/narvii/widget/UserAvatarLayout;

.field avatar4:Lcom/narvii/widget/UserAvatarLayout;

.field protected users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d03bd

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ge v0, v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 25
    .line 26
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 27
    const/4 v2, 0x3

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUser(Ljava/util/List;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->updateViews()V

    .line 58
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0155

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->audienceCount:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0172

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0173

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0174

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0175

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->audienceCount:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    if-lt v0, v3, :cond_1

    .line 30
    move v5, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v5, v1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    .line 38
    const/4 v5, 0x2

    .line 39
    .line 40
    if-lt v0, v5, :cond_2

    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    .line 49
    const/4 v6, 0x3

    .line 50
    .line 51
    if-lt v0, v6, :cond_3

    .line 52
    move v7, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v7, v1

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    .line 60
    const/4 v7, 0x4

    .line 61
    .line 62
    if-lt v0, v7, :cond_4

    .line 63
    move v8, v4

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move v8, v1

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    if-lt v0, v7, :cond_5

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    .line 73
    .line 74
    iget-object v8, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v8

    .line 79
    .line 80
    check-cast v8, Lcom/narvii/chat/signalling/ChannelUser;

    .line 81
    .line 82
    iget-object v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v8}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 86
    .line 87
    :cond_5
    if-lt v0, v6, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar3:Lcom/narvii/widget/UserAvatarLayout;

    .line 90
    .line 91
    iget-object v6, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 92
    .line 93
    .line 94
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    check-cast v6, Lcom/narvii/chat/signalling/ChannelUser;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 103
    .line 104
    :cond_6
    if-lt v0, v5, :cond_7

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar2:Lcom/narvii/widget/UserAvatarLayout;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 109
    .line 110
    .line 111
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 120
    .line 121
    :cond_7
    if-lt v0, v3, :cond_8

    .line 122
    .line 123
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar1:Lcom/narvii/widget/UserAvatarLayout;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->users:Ljava/util/List;

    .line 126
    .line 127
    .line 128
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    .line 132
    .line 133
    iget-object v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 137
    .line 138
    :cond_8
    if-le v0, v7, :cond_9

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    move v3, v4

    .line 141
    .line 142
    .line 143
    :goto_4
    const v0, 0x7f0a0ab1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    if-eqz v3, :cond_a

    .line 150
    move v2, v4

    .line 151
    goto :goto_5

    .line 152
    :cond_a
    move v2, v1

    .line 153
    .line 154
    .line 155
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    const v0, 0x7f0a098d

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    if-eqz v3, :cond_b

    .line 165
    move v1, v4

    .line 166
    .line 167
    .line 168
    :cond_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    const v0, 0x7f0a07b0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceDefaultLayout;->avatar4:Lcom/narvii/widget/UserAvatarLayout;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 181
    move-result v1

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method
