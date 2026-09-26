.class public final Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final badConnectionContainer:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final channelUserInfoContainer:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final defaultBg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyContainer:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final localMuteIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final muted:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/chat/video/layout/VVChatNickNameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nicknameBadge:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nicknameWrapper:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final organizer:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userSpeaking:Lcom/narvii/chat/video/view/UserSpeakingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeLevel:Lcom/narvii/widget/VolumeIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/chat/video/layout/VVChatNickNameView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/VolumeIndicator;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/chat/video/layout/VVChatNickNameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/chat/video/view/UserSpeakingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/widget/VolumeIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->badConnectionContainer:Lcom/github/mmin18/widget/FlexLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->channelUserInfoContainer:Lcom/github/mmin18/widget/FlexLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->defaultBg:Landroid/view/View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->emptyContainer:Lcom/github/mmin18/widget/FlexLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->loadingIndicator:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->localMuteIndicator:Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->muted:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->nickname:Lcom/narvii/chat/video/layout/VVChatNickNameView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->nicknameBadge:Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->nicknameWrapper:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->organizer:Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->userSpeaking:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 30
    .line 31
    iput-object p14, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->volumeLevel:Lcom/narvii/widget/VolumeIndicator;

    .line 32
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;
    .locals 18
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a01a4

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    move-object v5, v2

    .line 11
    .line 12
    check-cast v5, Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a027f

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    .line 24
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0415

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a04e1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    move-object v8, v2

    .line 44
    .line 45
    check-cast v8, Lcom/github/mmin18/widget/FlexLayout;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0821

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    move-object v9, v2

    .line 56
    .line 57
    check-cast v9, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0826

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    move-object v10, v2

    .line 68
    .line 69
    check-cast v10, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a09cd

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    move-object v11, v2

    .line 80
    .line 81
    check-cast v11, Landroid/widget/ImageView;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a09f9

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    move-object v12, v2

    .line 92
    .line 93
    check-cast v12, Lcom/narvii/chat/video/layout/VVChatNickNameView;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a09fb

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    move-result-object v2

    .line 103
    move-object v13, v2

    .line 104
    .line 105
    check-cast v13, Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz v13, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0a0b

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    move-object v14, v2

    .line 116
    .line 117
    check-cast v14, Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-eqz v14, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0a9f

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    move-object v15, v2

    .line 128
    .line 129
    check-cast v15, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v15, :cond_0

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0a0f5b

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    move-object/from16 v16, v2

    .line 141
    .line 142
    check-cast v16, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 143
    .line 144
    if-eqz v16, :cond_0

    .line 145
    .line 146
    .line 147
    const v1, 0x7f0a0fea

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    move-object/from16 v17, v2

    .line 154
    .line 155
    check-cast v17, Lcom/narvii/widget/VolumeIndicator;

    .line 156
    .line 157
    if-eqz v17, :cond_0

    .line 158
    .line 159
    new-instance v1, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;

    .line 160
    move-object v4, v0

    .line 161
    .line 162
    check-cast v4, Landroid/widget/LinearLayout;

    .line 163
    move-object v3, v1

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v3 .. v17}, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;-><init>(Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/chat/video/layout/VVChatNickNameView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/VolumeIndicator;)V

    .line 167
    return-object v1

    .line 168
    .line 169
    .line 170
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    new-instance v1, Ljava/lang/NullPointerException;

    .line 178
    .line 179
    const-string v2, "Missing required view with ID: "

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 187
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d049d

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemVoicePresenterCellPairBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
