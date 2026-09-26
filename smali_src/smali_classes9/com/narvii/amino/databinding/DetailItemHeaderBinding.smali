.class public final Lcom/narvii/amino/databinding/DetailItemHeaderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionbar2:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final blur:Lcom/github/mmin18/widget/RealtimeBlurView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gradient:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image2:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemCard:Lcom/narvii/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemCard2:Lcom/narvii/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemGoldLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemHeader:Lcom/narvii/item/detail/HeaderLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final keywords:Lcom/narvii/widget/KeywordsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final keywordsLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final label:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final labelActionBar:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/item/detail/HeaderLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slideshow:Lcom/narvii/widget/SlideshowView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title2:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteBtn:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteIcon:Lcom/narvii/widget/VoteIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/item/detail/HeaderLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/view/View;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/CardView;Lcom/narvii/widget/CardView;Landroid/view/View;Lcom/narvii/item/detail/HeaderLayout;Lcom/narvii/widget/KeywordsView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/SlideshowView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;)V
    .locals 2
    .param p1    # Lcom/narvii/item/detail/HeaderLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/mmin18/widget/RealtimeBlurView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/SecretImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SecretImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/item/detail/HeaderLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/KeywordsView;
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
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/SlideshowView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/narvii/widget/VoteIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/narvii/widget/SpinningView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->rootView:Lcom/narvii/item/detail/HeaderLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->actionbar2:Landroid/widget/LinearLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->blur:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->gradient:Landroid/view/View;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->image:Lcom/narvii/widget/SecretImageView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->image2:Lcom/narvii/widget/SecretImageView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->itemCard:Lcom/narvii/widget/CardView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->itemCard2:Lcom/narvii/widget/CardView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->itemGoldLine:Landroid/view/View;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->itemHeader:Lcom/narvii/item/detail/HeaderLayout;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->keywords:Lcom/narvii/widget/KeywordsView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->keywordsLayout:Landroid/widget/FrameLayout;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->label:Landroid/widget/TextView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->labelActionBar:Landroid/widget/TextView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->title:Landroid/view/View;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->title2:Landroid/widget/TextView;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->voteBtn:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    move-object/from16 v1, p19

    .line 66
    .line 67
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->voteCount:Landroid/widget/TextView;

    .line 68
    .line 69
    move-object/from16 v1, p20

    .line 70
    .line 71
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 72
    .line 73
    move-object/from16 v1, p21

    .line 74
    .line 75
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->voteLayout:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    move-object/from16 v1, p22

    .line 78
    .line 79
    iput-object v1, v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 80
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailItemHeaderBinding;
    .locals 26
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
    const v1, 0x7f0a0078

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
    const v1, 0x7f0a01da

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
    check-cast v6, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a062a

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
    const v1, 0x7f0a06eb

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
    check-cast v8, Lcom/narvii/widget/SecretImageView;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a06f3

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
    check-cast v9, Lcom/narvii/widget/SecretImageView;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0756

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
    check-cast v10, Lcom/narvii/widget/CardView;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a0758

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
    check-cast v11, Lcom/narvii/widget/CardView;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a0765

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v12

    .line 91
    .line 92
    if-eqz v12, :cond_0

    .line 93
    move-object v13, v0

    .line 94
    .line 95
    check-cast v13, Lcom/narvii/item/detail/HeaderLayout;

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a0795

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    move-result-object v2

    .line 103
    move-object v14, v2

    .line 104
    .line 105
    check-cast v14, Lcom/narvii/widget/KeywordsView;

    .line 106
    .line 107
    if-eqz v14, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0796

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    move-object v15, v2

    .line 116
    .line 117
    check-cast v15, Landroid/widget/FrameLayout;

    .line 118
    .line 119
    if-eqz v15, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0799

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    move-object/from16 v16, v2

    .line 129
    .line 130
    check-cast v16, Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v16, :cond_0

    .line 133
    .line 134
    .line 135
    const v1, 0x7f0a079a

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    move-object/from16 v17, v2

    .line 142
    .line 143
    check-cast v17, Landroid/widget/TextView;

    .line 144
    .line 145
    if-eqz v17, :cond_0

    .line 146
    .line 147
    .line 148
    const v1, 0x7f0a0d25

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    move-object/from16 v18, v2

    .line 155
    .line 156
    check-cast v18, Lcom/narvii/widget/SlideshowView;

    .line 157
    .line 158
    if-eqz v18, :cond_0

    .line 159
    .line 160
    .line 161
    const v1, 0x7f0a0e9e

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 165
    move-result-object v19

    .line 166
    .line 167
    if-eqz v19, :cond_0

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0a0ea5

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    move-object/from16 v20, v2

    .line 177
    .line 178
    check-cast v20, Landroid/widget/TextView;

    .line 179
    .line 180
    if-eqz v20, :cond_0

    .line 181
    .line 182
    .line 183
    const v1, 0x7f0a0ffb

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    move-object/from16 v21, v2

    .line 190
    .line 191
    check-cast v21, Landroid/widget/LinearLayout;

    .line 192
    .line 193
    if-eqz v21, :cond_0

    .line 194
    .line 195
    .line 196
    const v1, 0x7f0a0ffd

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    move-object/from16 v22, v2

    .line 203
    .line 204
    check-cast v22, Landroid/widget/TextView;

    .line 205
    .line 206
    if-eqz v22, :cond_0

    .line 207
    .line 208
    .line 209
    const v1, 0x7f0a1002

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    move-object/from16 v23, v2

    .line 216
    .line 217
    check-cast v23, Lcom/narvii/widget/VoteIcon;

    .line 218
    .line 219
    if-eqz v23, :cond_0

    .line 220
    .line 221
    .line 222
    const v1, 0x7f0a1005

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    move-object/from16 v24, v2

    .line 229
    .line 230
    check-cast v24, Landroid/widget/FrameLayout;

    .line 231
    .line 232
    if-eqz v24, :cond_0

    .line 233
    .line 234
    .line 235
    const v1, 0x7f0a1006

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    move-object/from16 v25, v2

    .line 242
    .line 243
    check-cast v25, Lcom/narvii/widget/SpinningView;

    .line 244
    .line 245
    if-eqz v25, :cond_0

    .line 246
    .line 247
    new-instance v0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;

    .line 248
    move-object v3, v0

    .line 249
    move-object v4, v13

    .line 250
    .line 251
    .line 252
    invoke-direct/range {v3 .. v25}, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;-><init>(Lcom/narvii/item/detail/HeaderLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/RealtimeBlurView;Landroid/view/View;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/SecretImageView;Lcom/narvii/widget/CardView;Lcom/narvii/widget/CardView;Landroid/view/View;Lcom/narvii/item/detail/HeaderLayout;Lcom/narvii/widget/KeywordsView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/SlideshowView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;)V

    .line 253
    return-object v0

    .line 254
    .line 255
    .line 256
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    new-instance v1, Ljava/lang/NullPointerException;

    .line 264
    .line 265
    const-string v2, "Missing required view with ID: "

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 273
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DetailItemHeaderBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailItemHeaderBinding;
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

    const v0, 0x7f0d0162

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailItemHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->getRoot()Lcom/narvii/item/detail/HeaderLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/item/detail/HeaderLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DetailItemHeaderBinding;->rootView:Lcom/narvii/item/detail/HeaderLayout;

    return-object v0
.end method
