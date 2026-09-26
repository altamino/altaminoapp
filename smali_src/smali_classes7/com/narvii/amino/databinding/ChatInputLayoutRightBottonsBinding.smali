.class public final Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final chatRightButtonContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final endView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinButton:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinLoading:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinText:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joinView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final menuView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final muteButton:Lcom/narvii/chat/video/view/CheckableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final muteView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final requestView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tipView:Lcom/narvii/widget/PressedFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voiceView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final waitingMemberCount:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/chat/video/view/CheckableImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/PressedFrameLayout;Lcom/narvii/chat/input/ChatInputPanelVoiceButton;Landroid/widget/FrameLayout;Lcom/narvii/widget/AutoSizingTextView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/chat/video/view/CheckableImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/PressedFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/chat/input/ChatInputPanelVoiceButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->chatRightButtonContainer:Landroid/widget/LinearLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->endView:Landroid/widget/FrameLayout;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->joinButton:Landroid/widget/LinearLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->joinIcon:Landroid/widget/ImageView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->joinLoading:Lcom/narvii/widget/SpinningView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->joinText:Lcom/narvii/widget/AutoSizingTextView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->joinView:Landroid/widget/FrameLayout;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->menuView:Landroid/widget/FrameLayout;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->muteButton:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->muteView:Landroid/widget/FrameLayout;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->requestView:Landroid/widget/FrameLayout;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->tipView:Lcom/narvii/widget/PressedFrameLayout;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->voiceButton:Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->voiceView:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->waitingMemberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;
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
    move-object v2, v0

    .line 4
    .line 5
    check-cast v2, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a04f5

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    check-cast v3, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a0789

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a078d

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    check-cast v5, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a078f

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    check-cast v6, Lcom/narvii/widget/SpinningView;

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0a0790

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    check-cast v7, Lcom/narvii/widget/AutoSizingTextView;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a0791

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    check-cast v8, Landroid/widget/FrameLayout;

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a096a

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v9

    .line 79
    .line 80
    check-cast v9, Landroid/widget/FrameLayout;

    .line 81
    .line 82
    if-eqz v9, :cond_0

    .line 83
    .line 84
    .line 85
    const v1, 0x7f0a09c6

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 89
    move-result-object v10

    .line 90
    .line 91
    check-cast v10, Lcom/narvii/chat/video/view/CheckableImageView;

    .line 92
    .line 93
    if-eqz v10, :cond_0

    .line 94
    .line 95
    .line 96
    const v1, 0x7f0a09cc

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 100
    move-result-object v11

    .line 101
    .line 102
    check-cast v11, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    if-eqz v11, :cond_0

    .line 105
    .line 106
    .line 107
    const v1, 0x7f0a0c27

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 111
    move-result-object v12

    .line 112
    .line 113
    check-cast v12, Landroid/widget/FrameLayout;

    .line 114
    .line 115
    if-eqz v12, :cond_0

    .line 116
    .line 117
    .line 118
    const v1, 0x7f0a0e87

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 122
    move-result-object v13

    .line 123
    .line 124
    check-cast v13, Lcom/narvii/widget/PressedFrameLayout;

    .line 125
    .line 126
    if-eqz v13, :cond_0

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a0fdd

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 133
    move-result-object v14

    .line 134
    .line 135
    check-cast v14, Lcom/narvii/chat/input/ChatInputPanelVoiceButton;

    .line 136
    .line 137
    if-eqz v14, :cond_0

    .line 138
    .line 139
    .line 140
    const v1, 0x7f0a0fe2

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 144
    move-result-object v15

    .line 145
    .line 146
    check-cast v15, Landroid/widget/FrameLayout;

    .line 147
    .line 148
    if-eqz v15, :cond_0

    .line 149
    .line 150
    .line 151
    const v1, 0x7f0a1015

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 155
    move-result-object v16

    .line 156
    .line 157
    check-cast v16, Lcom/narvii/widget/AutoSizingTextView;

    .line 158
    .line 159
    if-eqz v16, :cond_0

    .line 160
    .line 161
    new-instance v17, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;

    .line 162
    .line 163
    move-object/from16 v0, v17

    .line 164
    move-object v1, v2

    .line 165
    .line 166
    .line 167
    invoke-direct/range {v0 .. v16}, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/chat/video/view/CheckableImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/PressedFrameLayout;Lcom/narvii/chat/input/ChatInputPanelVoiceButton;Landroid/widget/FrameLayout;Lcom/narvii/widget/AutoSizingTextView;)V

    .line 168
    return-object v17

    .line 169
    .line 170
    .line 171
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    .line 179
    .line 180
    const-string v2, "Missing required view with ID: "

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;
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

    const v0, 0x7f0d00d1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ChatInputLayoutRightBottonsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
