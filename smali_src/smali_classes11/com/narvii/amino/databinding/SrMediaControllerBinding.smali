.class public final Lcom/narvii/amino/databinding/SrMediaControllerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomGradient:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final controllerBottomContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fullscreen:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hostBottomLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final next:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pause:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playButtonsLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playlist:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final prev:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressBar:Landroid/widget/SeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarPlaceholder:Lcom/narvii/widget/StatusBarPlaceHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final time:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeCurrent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topGradient:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vcTopButtons:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoControllerRoot:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoName:Lcom/narvii/widget/MarqueeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoPlayingIcon:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeProgress:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeProgressContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volume:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final volumeSeekBarPlaceholder:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Lcom/narvii/widget/StatusBarPlaceHolder;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/MarqueeTextView;Lcom/narvii/widget/NVImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
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
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/SeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/StatusBarPlaceHolder;
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
    .param p16    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/widget/MarqueeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->bottomGradient:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->controllerBottomContainer:Landroid/widget/LinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->fullscreen:Lcom/narvii/widget/TintButton;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->hostBottomLayout:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->next:Landroid/widget/ImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->pause:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->playButtonsLayout:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->playlist:Lcom/narvii/widget/TintButton;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->prev:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->progressBar:Landroid/widget/SeekBar;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->progressLayout:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->statusBarPlaceholder:Lcom/narvii/widget/StatusBarPlaceHolder;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->time:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->timeCurrent:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->topGradient:Landroid/view/View;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->vcTopButtons:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->videoControllerRoot:Landroid/widget/FrameLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->videoName:Lcom/narvii/widget/MarqueeTextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->videoPlayingIcon:Lcom/narvii/widget/NVImageView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->videoTimeProgress:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->volume:Landroid/widget/ImageView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->volumeSeekBarPlaceholder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SrMediaControllerBinding;
    .locals 27
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
    const v1, 0x7f0a01f3

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v4

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a03b1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    move-object v5, v2

    .line 20
    .line 21
    check-cast v5, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0609

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    move-object v6, v2

    .line 32
    .line 33
    check-cast v6, Lcom/narvii/widget/TintButton;

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a067f

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    move-object v7, v2

    .line 44
    .line 45
    check-cast v7, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a09f2

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    move-object v8, v2

    .line 56
    .line 57
    check-cast v8, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0ad5

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    move-object v9, v2

    .line 68
    .line 69
    check-cast v9, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v9, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a0af8

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    move-object v10, v2

    .line 80
    .line 81
    check-cast v10, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v10, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a0b07

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    move-object v11, v2

    .line 92
    .line 93
    check-cast v11, Lcom/narvii/widget/TintButton;

    .line 94
    .line 95
    if-eqz v11, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a0b7f

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    move-result-object v2

    .line 103
    move-object v12, v2

    .line 104
    .line 105
    check-cast v12, Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz v12, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0b8d

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    move-object v13, v2

    .line 116
    .line 117
    check-cast v13, Landroid/widget/SeekBar;

    .line 118
    .line 119
    if-eqz v13, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0b93

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    move-object v14, v2

    .line 128
    .line 129
    check-cast v14, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    if-eqz v14, :cond_0

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0a0d95

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 138
    move-result-object v2

    .line 139
    move-object v15, v2

    .line 140
    .line 141
    check-cast v15, Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 142
    .line 143
    if-eqz v15, :cond_0

    .line 144
    .line 145
    .line 146
    const v1, 0x7f0a0e78

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    move-object/from16 v16, v2

    .line 153
    .line 154
    check-cast v16, Landroid/widget/TextView;

    .line 155
    .line 156
    if-eqz v16, :cond_0

    .line 157
    .line 158
    .line 159
    const v1, 0x7f0a0e7a

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    move-object/from16 v17, v2

    .line 166
    .line 167
    check-cast v17, Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v17, :cond_0

    .line 170
    .line 171
    .line 172
    const v1, 0x7f0a0ed9

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 176
    move-result-object v18

    .line 177
    .line 178
    if-eqz v18, :cond_0

    .line 179
    .line 180
    .line 181
    const v1, 0x7f0a0f68

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    move-object/from16 v19, v2

    .line 188
    .line 189
    check-cast v19, Landroid/widget/LinearLayout;

    .line 190
    .line 191
    if-eqz v19, :cond_0

    .line 192
    .line 193
    move-object/from16 v20, v0

    .line 194
    .line 195
    check-cast v20, Landroid/widget/FrameLayout;

    .line 196
    .line 197
    .line 198
    const v1, 0x7f0a0f88

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    move-object/from16 v21, v2

    .line 205
    .line 206
    check-cast v21, Lcom/narvii/widget/MarqueeTextView;

    .line 207
    .line 208
    if-eqz v21, :cond_0

    .line 209
    .line 210
    .line 211
    const v1, 0x7f0a0f97

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    move-object/from16 v22, v2

    .line 218
    .line 219
    check-cast v22, Lcom/narvii/widget/NVImageView;

    .line 220
    .line 221
    if-eqz v22, :cond_0

    .line 222
    .line 223
    .line 224
    const v1, 0x7f0a0fb2

    .line 225
    .line 226
    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    move-object/from16 v23, v2

    .line 231
    .line 232
    check-cast v23, Landroid/widget/TextView;

    .line 233
    .line 234
    if-eqz v23, :cond_0

    .line 235
    .line 236
    .line 237
    const v1, 0x7f0a0fb3

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    move-object/from16 v24, v2

    .line 244
    .line 245
    check-cast v24, Landroid/widget/LinearLayout;

    .line 246
    .line 247
    if-eqz v24, :cond_0

    .line 248
    .line 249
    .line 250
    const v1, 0x7f0a0fe3

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    move-object/from16 v25, v2

    .line 257
    .line 258
    check-cast v25, Landroid/widget/ImageView;

    .line 259
    .line 260
    if-eqz v25, :cond_0

    .line 261
    .line 262
    .line 263
    const v1, 0x7f0a0ff3

    .line 264
    .line 265
    .line 266
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    move-object/from16 v26, v2

    .line 270
    .line 271
    check-cast v26, Landroid/widget/FrameLayout;

    .line 272
    .line 273
    if-eqz v26, :cond_0

    .line 274
    .line 275
    new-instance v0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;

    .line 276
    move-object v2, v0

    .line 277
    .line 278
    move-object/from16 v3, v20

    .line 279
    .line 280
    .line 281
    invoke-direct/range {v2 .. v26}, Lcom/narvii/amino/databinding/SrMediaControllerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Lcom/narvii/widget/StatusBarPlaceHolder;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/MarqueeTextView;Lcom/narvii/widget/NVImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 282
    return-object v0

    .line 283
    .line 284
    .line 285
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 290
    move-result-object v0

    .line 291
    .line 292
    new-instance v1, Ljava/lang/NullPointerException;

    .line 293
    .line 294
    const-string v2, "Missing required view with ID: "

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    .line 301
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/SrMediaControllerBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SrMediaControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SrMediaControllerBinding;
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

    const v0, 0x7f0d06f0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SrMediaControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/SrMediaControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
