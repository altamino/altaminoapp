.class public final Lcom/narvii/amino/databinding/CommonChatItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final communityIcon:Lcom/narvii/widget/CommunityIconView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communityInfoPanel:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communityName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disableMask:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final interestItemView:Lcom/narvii/suggest/interest/InterestTopicView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final latestMessageTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final memberCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playingIcon:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playingTitle:Lcom/narvii/widget/MarqueeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playingTitlePanel:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/narvii/widget/CommunityIconView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/suggest/interest/InterestTopicView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/MarqueeTextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/CommunityIconView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/suggest/interest/InterestTopicView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/chat/video/view/UserSpeakingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/MarqueeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->communityName:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->disableMask:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->image:Lcom/narvii/widget/ThumbImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->interestItemView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->latestMessageTime:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->memberCount:Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->playingTitle:Lcom/narvii/widget/MarqueeTextView;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->playingTitlePanel:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    iput-object p14, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->text:Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p15, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->title:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommonChatItemBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a036b

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    check-cast v2, Lcom/narvii/widget/CommunityIconView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0374

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a037c

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a0440

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    check-cast v5, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a06eb

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a072f

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 67
    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a07b5

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 75
    move-result-object v8

    .line 76
    .line 77
    check-cast v8, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a093e

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 86
    move-result-object v9

    .line 87
    .line 88
    check-cast v9, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v9, :cond_0

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a0aa4

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    check-cast v10, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 100
    .line 101
    if-eqz v10, :cond_0

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a0b02

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v11

    .line 109
    .line 110
    check-cast v11, Lcom/narvii/widget/NVImageView;

    .line 111
    .line 112
    if-eqz v11, :cond_0

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a0b04

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    check-cast v12, Lcom/narvii/widget/MarqueeTextView;

    .line 122
    .line 123
    if-eqz v12, :cond_0

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a0b05

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v13

    .line 131
    .line 132
    check-cast v13, Landroid/widget/FrameLayout;

    .line 133
    .line 134
    if-eqz v13, :cond_0

    .line 135
    .line 136
    .line 137
    const v0, 0x7f0a0e51

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 141
    move-result-object v14

    .line 142
    .line 143
    check-cast v14, Landroid/widget/TextView;

    .line 144
    .line 145
    if-eqz v14, :cond_0

    .line 146
    .line 147
    .line 148
    const v0, 0x7f0a0e9e

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 152
    move-result-object v15

    .line 153
    .line 154
    check-cast v15, Landroid/widget/TextView;

    .line 155
    .line 156
    if-eqz v15, :cond_0

    .line 157
    .line 158
    new-instance v16, Lcom/narvii/amino/databinding/CommonChatItemBinding;

    .line 159
    .line 160
    move-object/from16 v0, v16

    .line 161
    .line 162
    move-object/from16 v1, p0

    .line 163
    .line 164
    .line 165
    invoke-direct/range {v0 .. v15}, Lcom/narvii/amino/databinding/CommonChatItemBinding;-><init>(Landroid/view/View;Lcom/narvii/widget/CommunityIconView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/suggest/interest/InterestTopicView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/MarqueeTextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 166
    return-object v16

    .line 167
    .line 168
    .line 169
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    .line 177
    .line 178
    const-string v2, "Missing required view with ID: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/CommonChatItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d010b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/CommonChatItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommonChatItemBinding;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p1, "parent"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/databinding/CommonChatItemBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
