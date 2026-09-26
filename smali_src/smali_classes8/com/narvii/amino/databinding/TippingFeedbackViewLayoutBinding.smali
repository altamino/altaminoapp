.class public final Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarLayout:Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cofettiView:Lcom/narvii/widget/cofetti/CofettiView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinCountIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinCountTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinMotionIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinMotionIv2:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinMotionIv3:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinMotionIv4:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coinShinyIv:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fireworksIv:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nicknameBackgroundIv:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nicknameTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thankYouTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingContent:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/cofetti/CofettiView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/cofetti/CofettiView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
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
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/monetization/store/view/TippingRippleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/github/mmin18/widget/FlexLayout;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->avatarLayout:Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->avatarView:Lcom/github/mmin18/widget/FlexLayout;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinCountIv:Landroid/widget/ImageView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinCountTv:Landroid/widget/TextView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinIv:Landroid/widget/ImageView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinMotionIv:Landroid/widget/ImageView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinMotionIv2:Landroid/widget/ImageView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinMotionIv3:Landroid/widget/ImageView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinMotionIv4:Landroid/widget/ImageView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->coinShinyIv:Lcom/narvii/widget/NVImageView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->fireworksIv:Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->nicknameBackgroundIv:Landroid/widget/ImageView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->nicknameTv:Landroid/widget/TextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->thankYouTv:Landroid/widget/TextView;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->tippingContent:Lcom/github/mmin18/widget/FlexLayout;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;
    .locals 22
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
    const v1, 0x7f0a0188

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a018e

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    move-object v6, v2

    .line 24
    .line 25
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout;

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a032f

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    move-object v7, v2

    .line 36
    .line 37
    check-cast v7, Lcom/narvii/widget/cofetti/CofettiView;

    .line 38
    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a0331

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v2

    .line 47
    move-object v8, v2

    .line 48
    .line 49
    check-cast v8, Landroid/widget/ImageView;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a0332

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v2

    .line 59
    move-object v9, v2

    .line 60
    .line 61
    check-cast v9, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a0333

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v2

    .line 71
    move-object v10, v2

    .line 72
    .line 73
    check-cast v10, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    .line 78
    const v1, 0x7f0a0334

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object v2

    .line 83
    move-object v11, v2

    .line 84
    .line 85
    check-cast v11, Landroid/widget/ImageView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    .line 90
    const v1, 0x7f0a0335

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    move-result-object v2

    .line 95
    move-object v12, v2

    .line 96
    .line 97
    check-cast v12, Landroid/widget/ImageView;

    .line 98
    .line 99
    if-eqz v12, :cond_0

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a0336

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    move-object v13, v2

    .line 108
    .line 109
    check-cast v13, Landroid/widget/ImageView;

    .line 110
    .line 111
    if-eqz v13, :cond_0

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0a0337

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 118
    move-result-object v2

    .line 119
    move-object v14, v2

    .line 120
    .line 121
    check-cast v14, Landroid/widget/ImageView;

    .line 122
    .line 123
    if-eqz v14, :cond_0

    .line 124
    .line 125
    .line 126
    const v1, 0x7f0a0338

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v2

    .line 131
    move-object v15, v2

    .line 132
    .line 133
    check-cast v15, Lcom/narvii/widget/NVImageView;

    .line 134
    .line 135
    if-eqz v15, :cond_0

    .line 136
    .line 137
    .line 138
    const v1, 0x7f0a05a8

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    move-object/from16 v16, v2

    .line 145
    .line 146
    check-cast v16, Lcom/narvii/widget/NVImageView;

    .line 147
    .line 148
    if-eqz v16, :cond_0

    .line 149
    .line 150
    .line 151
    const v1, 0x7f0a09fa

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    move-object/from16 v17, v2

    .line 158
    .line 159
    check-cast v17, Landroid/widget/ImageView;

    .line 160
    .line 161
    if-eqz v17, :cond_0

    .line 162
    .line 163
    .line 164
    const v1, 0x7f0a0a0a

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    move-object/from16 v18, v2

    .line 171
    .line 172
    check-cast v18, Landroid/widget/TextView;

    .line 173
    .line 174
    if-eqz v18, :cond_0

    .line 175
    .line 176
    .line 177
    const v1, 0x7f0a0c4a

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    move-object/from16 v19, v2

    .line 184
    .line 185
    check-cast v19, Lcom/narvii/monetization/store/view/TippingRippleView;

    .line 186
    .line 187
    if-eqz v19, :cond_0

    .line 188
    .line 189
    .line 190
    const v1, 0x7f0a0e6b

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    move-object/from16 v20, v2

    .line 197
    .line 198
    check-cast v20, Landroid/widget/TextView;

    .line 199
    .line 200
    if-eqz v20, :cond_0

    .line 201
    .line 202
    .line 203
    const v1, 0x7f0a0e8e

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 207
    move-result-object v2

    .line 208
    .line 209
    move-object/from16 v21, v2

    .line 210
    .line 211
    check-cast v21, Lcom/github/mmin18/widget/FlexLayout;

    .line 212
    .line 213
    if-eqz v21, :cond_0

    .line 214
    .line 215
    new-instance v1, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;

    .line 216
    move-object v3, v1

    .line 217
    move-object v4, v0

    .line 218
    .line 219
    check-cast v4, Landroid/widget/FrameLayout;

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v3 .. v21}, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/cofetti/CofettiView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;)V

    .line 223
    return-object v1

    .line 224
    .line 225
    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    new-instance v1, Ljava/lang/NullPointerException;

    .line 234
    .line 235
    const-string v2, "Missing required view with ID: "

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 243
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;
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

    const v0, 0x7f0d074a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/TippingFeedbackViewLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
