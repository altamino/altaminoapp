.class public final Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chatItem:Lcom/narvii/chat/hangout/HangoutItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

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

.field public final image:Lcom/narvii/widget/ThumbImageView;
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

.field private final rootView:Lcom/narvii/chat/hangout/HangoutItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/widget/CommunityIconView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/MarqueeTextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/hangout/HangoutItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/hangout/HangoutItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/CommunityIconView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
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
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/chat/video/view/UserSpeakingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/MarqueeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->rootView:Lcom/narvii/chat/hangout/HangoutItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->chatItem:Lcom/narvii/chat/hangout/HangoutItem;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->communityName:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->image:Lcom/narvii/widget/ThumbImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->latestMessageTime:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->memberCount:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->playingTitle:Lcom/narvii/widget/MarqueeTextView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->playingTitlePanel:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->title:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v2, p0

    .line 2
    .line 3
    check-cast v2, Lcom/narvii/chat/hangout/HangoutItem;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a036b

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    move-object v3, v1

    .line 12
    .line 13
    check-cast v3, Lcom/narvii/widget/CommunityIconView;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0374

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    move-object v4, v1

    .line 24
    .line 25
    check-cast v4, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a037c

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    move-object v5, v1

    .line 36
    .line 37
    check-cast v5, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a06eb

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v6, v1

    .line 48
    .line 49
    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a07b5

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v7, v1

    .line 60
    .line 61
    check-cast v7, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a093e

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    move-object v8, v1

    .line 72
    .line 73
    check-cast v8, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0a0aa4

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 83
    move-object v9, v1

    .line 84
    .line 85
    check-cast v9, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 86
    .line 87
    if-eqz v9, :cond_0

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a0b02

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    move-result-object v1

    .line 95
    move-object v10, v1

    .line 96
    .line 97
    check-cast v10, Lcom/narvii/widget/NVImageView;

    .line 98
    .line 99
    if-eqz v10, :cond_0

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0a0b04

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v1

    .line 107
    move-object v11, v1

    .line 108
    .line 109
    check-cast v11, Lcom/narvii/widget/MarqueeTextView;

    .line 110
    .line 111
    if-eqz v11, :cond_0

    .line 112
    .line 113
    .line 114
    const v0, 0x7f0a0b05

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 118
    move-result-object v1

    .line 119
    move-object v12, v1

    .line 120
    .line 121
    check-cast v12, Landroid/widget/FrameLayout;

    .line 122
    .line 123
    if-eqz v12, :cond_0

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a0e9e

    .line 127
    .line 128
    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v1

    .line 131
    move-object v13, v1

    .line 132
    .line 133
    check-cast v13, Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v13, :cond_0

    .line 136
    .line 137
    new-instance p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;

    .line 138
    move-object v0, p0

    .line 139
    move-object v1, v2

    .line 140
    .line 141
    .line 142
    invoke-direct/range {v0 .. v13}, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;-><init>(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/widget/CommunityIconView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/chat/video/view/UserSpeakingView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/MarqueeTextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    .line 143
    return-object p0

    .line 144
    .line 145
    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object p0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    const-string v1, "Missing required view with ID: "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 163
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;
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

    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->getRoot()Lcom/narvii/chat/hangout/HangoutItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/chat/hangout/HangoutItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ChatSpeedDialItemBinding;->rootView:Lcom/narvii/chat/hangout/HangoutItem;

    return-object v0
.end method
