.class public final Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final attachContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final attachScreenshot:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatBubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatMessageItem:Lcom/narvii/chat/ChatMessageItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatResend:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatSeeAll:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final errorContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final errorMessage:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final errorRetry:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hostLabel:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final messageDate:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress1:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub2:Lcom/narvii/widget/ReversibleLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/bubble/BubbleViewContainer;Lcom/narvii/chat/ChatMessageItem;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/SpinningView;Landroid/widget/LinearLayout;Lcom/narvii/widget/ReversibleLinearLayout;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/monetization/bubble/BubbleViewContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/chat/ChatMessageItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
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
    .param p15    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/widget/ReversibleLinearLayout;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->attachContainer:Landroid/widget/LinearLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->attachScreenshot:Lcom/narvii/widget/NVImageView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->chatBubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->chatResend:Lcom/narvii/widget/FontAwesomeView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->chatSeeAll:Landroid/widget/Button;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->content:Landroid/widget/LinearLayout;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->errorContainer:Landroid/widget/LinearLayout;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->errorMessage:Landroid/widget/TextView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->errorRetry:Lcom/narvii/widget/FontAwesomeView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->hostLabel:Landroid/widget/TextView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->listFrame:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->messageDate:Landroid/widget/TextView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->progress1:Lcom/narvii/widget/SpinningView;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->stub1:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    move-object/from16 v1, p19

    .line 66
    .line 67
    iput-object v1, v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->stub2:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;
    .locals 23
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
    const v1, 0x7f0a0148

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
    check-cast v5, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a014e

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
    check-cast v6, Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0291

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    move-object v7, v2

    .line 35
    .line 36
    check-cast v7, Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a02af

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v2

    .line 46
    move-object v8, v2

    .line 47
    .line 48
    check-cast v8, Lcom/narvii/chat/ChatMessageItem;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a02b7

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    move-object v9, v2

    .line 59
    .line 60
    check-cast v9, Lcom/narvii/widget/FontAwesomeView;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a02ba

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v2

    .line 70
    move-object v10, v2

    .line 71
    .line 72
    check-cast v10, Landroid/widget/Button;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a039d

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 82
    move-object v11, v2

    .line 83
    .line 84
    check-cast v11, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0a04fe

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 93
    move-result-object v2

    .line 94
    move-object v12, v2

    .line 95
    .line 96
    check-cast v12, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f0a04ff

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 105
    move-result-object v2

    .line 106
    move-object v13, v2

    .line 107
    .line 108
    check-cast v13, Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz v13, :cond_0

    .line 111
    .line 112
    .line 113
    const v1, 0x7f0a0507

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 117
    move-result-object v2

    .line 118
    move-object v14, v2

    .line 119
    .line 120
    check-cast v14, Lcom/narvii/widget/FontAwesomeView;

    .line 121
    .line 122
    if-eqz v14, :cond_0

    .line 123
    .line 124
    .line 125
    const v1, 0x7f0a0681

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 129
    move-result-object v2

    .line 130
    move-object v15, v2

    .line 131
    .line 132
    check-cast v15, Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v15, :cond_0

    .line 135
    .line 136
    move-object/from16 v16, v0

    .line 137
    .line 138
    check-cast v16, Landroid/widget/FrameLayout;

    .line 139
    .line 140
    .line 141
    const v1, 0x7f0a096d

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    move-object/from16 v17, v2

    .line 148
    .line 149
    check-cast v17, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz v17, :cond_0

    .line 152
    .line 153
    .line 154
    const v1, 0x7f0a09f9

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    move-object/from16 v18, v2

    .line 161
    .line 162
    check-cast v18, Lcom/narvii/widget/NicknameView;

    .line 163
    .line 164
    if-eqz v18, :cond_0

    .line 165
    .line 166
    .line 167
    const v1, 0x7f0a0b8a

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    move-object/from16 v19, v2

    .line 174
    .line 175
    check-cast v19, Lcom/narvii/widget/SpinningView;

    .line 176
    .line 177
    if-eqz v19, :cond_0

    .line 178
    .line 179
    .line 180
    const v1, 0x102000d

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    move-object/from16 v20, v2

    .line 187
    .line 188
    check-cast v20, Lcom/narvii/widget/SpinningView;

    .line 189
    .line 190
    if-eqz v20, :cond_0

    .line 191
    .line 192
    .line 193
    const v1, 0x7f0a0de5

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 197
    move-result-object v2

    .line 198
    .line 199
    move-object/from16 v21, v2

    .line 200
    .line 201
    check-cast v21, Landroid/widget/LinearLayout;

    .line 202
    .line 203
    if-eqz v21, :cond_0

    .line 204
    .line 205
    .line 206
    const v1, 0x7f0a0de6

    .line 207
    .line 208
    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    move-object/from16 v22, v2

    .line 213
    .line 214
    check-cast v22, Lcom/narvii/widget/ReversibleLinearLayout;

    .line 215
    .line 216
    if-eqz v22, :cond_0

    .line 217
    .line 218
    new-instance v0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;

    .line 219
    move-object v3, v0

    .line 220
    .line 221
    move-object/from16 v4, v16

    .line 222
    .line 223
    .line 224
    invoke-direct/range {v3 .. v22}, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/bubble/BubbleViewContainer;Lcom/narvii/chat/ChatMessageItem;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/FontAwesomeView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/SpinningView;Landroid/widget/LinearLayout;Lcom/narvii/widget/ReversibleLinearLayout;)V

    .line 225
    return-object v0

    .line 226
    .line 227
    .line 228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    new-instance v1, Ljava/lang/NullPointerException;

    .line 236
    .line 237
    const-string v2, "Missing required view with ID: "

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 245
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;
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

    const v0, 0x7f0d0290

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FlagResolveChatLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
