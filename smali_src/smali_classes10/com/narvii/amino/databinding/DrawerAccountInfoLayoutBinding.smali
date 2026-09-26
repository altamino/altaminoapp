.class public final Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final accountNotice:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final accountNoticeContainer:Lcom/narvii/widget/PushEffectLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aminoLogo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final aminoStaffBadge:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatarBg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final checkInStreakBarMarginTop:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final checkInStreakContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerCheckin:Lcom/narvii/widget/PushButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerCheckinFake:Lcom/narvii/widget/PushButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerCheckinHold:Lcom/narvii/widget/PushButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerCheckinHoldText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerCheckinRing:Lcom/narvii/checkin/CheckInCircle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerLoginHint:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerLogo:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerTitle:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerTop:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerUserRole:Lcom/narvii/widget/RankingTitleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mood:Lcom/narvii/widget/MoodView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notActivated:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeLost:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/PushEffectLayout;Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/PushButton;Landroid/widget/TextView;Lcom/narvii/checkin/CheckInCircle;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/RankingTitleView;Lcom/narvii/widget/MoodView;Lcom/narvii/widget/NicknameView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/PushEffectLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/checkin/CheckInStreakBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/PushButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/PushButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/PushButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/checkin/CheckInCircle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/widget/RankingTitleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/narvii/widget/MoodView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->accountNotice:Landroid/widget/TextView;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->accountNoticeContainer:Lcom/narvii/widget/PushEffectLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->aminoLogo:Landroid/widget/ImageView;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->aminoStaffBadge:Lcom/narvii/widget/ThumbImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->avatarBg:Landroid/view/View;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->checkInStreakBarMarginTop:Landroid/view/View;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->checkInStreakContainer:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerCheckin:Lcom/narvii/widget/PushButton;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerCheckinFake:Lcom/narvii/widget/PushButton;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerCheckinHold:Lcom/narvii/widget/PushButton;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerCheckinHoldText:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerCheckinRing:Lcom/narvii/checkin/CheckInCircle;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerLoginHint:Landroid/widget/FrameLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerLogo:Lcom/narvii/widget/NVImageView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerTitle:Lcom/narvii/widget/AutoSizingTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerTop:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->drawerUserRole:Lcom/narvii/widget/RankingTitleView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->mood:Lcom/narvii/widget/MoodView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->nickname:Lcom/narvii/widget/NicknameView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->notActivated:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->strikeLost:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;
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
    const v1, 0x7f0a0054

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
    check-cast v5, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0055

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
    check-cast v6, Lcom/narvii/widget/PushEffectLayout;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0109

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
    check-cast v7, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a010b

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
    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a017c

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a02d6

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
    check-cast v10, Lcom/narvii/checkin/CheckInStreakBar;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a02d7

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v11

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    .line 83
    const v1, 0x7f0a02d8

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    move-object v12, v2

    .line 89
    .line 90
    check-cast v12, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    if-eqz v12, :cond_0

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a0471

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 99
    move-result-object v2

    .line 100
    move-object v13, v2

    .line 101
    .line 102
    check-cast v13, Lcom/narvii/widget/PushButton;

    .line 103
    .line 104
    if-eqz v13, :cond_0

    .line 105
    .line 106
    .line 107
    const v1, 0x7f0a0472

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 111
    move-result-object v2

    .line 112
    move-object v14, v2

    .line 113
    .line 114
    check-cast v14, Lcom/narvii/widget/PushButton;

    .line 115
    .line 116
    if-eqz v14, :cond_0

    .line 117
    .line 118
    .line 119
    const v1, 0x7f0a0473

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 123
    move-result-object v2

    .line 124
    move-object v15, v2

    .line 125
    .line 126
    check-cast v15, Lcom/narvii/widget/PushButton;

    .line 127
    .line 128
    if-eqz v15, :cond_0

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0a0474

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    move-object/from16 v16, v2

    .line 138
    .line 139
    check-cast v16, Landroid/widget/TextView;

    .line 140
    .line 141
    if-eqz v16, :cond_0

    .line 142
    .line 143
    .line 144
    const v1, 0x7f0a0475

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    move-object/from16 v17, v2

    .line 151
    .line 152
    check-cast v17, Lcom/narvii/checkin/CheckInCircle;

    .line 153
    .line 154
    if-eqz v17, :cond_0

    .line 155
    .line 156
    .line 157
    const v1, 0x7f0a0484

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    move-object/from16 v18, v2

    .line 164
    .line 165
    check-cast v18, Landroid/widget/FrameLayout;

    .line 166
    .line 167
    if-eqz v18, :cond_0

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0a0485

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    move-object/from16 v19, v2

    .line 177
    .line 178
    check-cast v19, Lcom/narvii/widget/NVImageView;

    .line 179
    .line 180
    if-eqz v19, :cond_0

    .line 181
    .line 182
    .line 183
    const v1, 0x7f0a049c

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    move-object/from16 v20, v2

    .line 190
    .line 191
    check-cast v20, Lcom/narvii/widget/AutoSizingTextView;

    .line 192
    .line 193
    if-eqz v20, :cond_0

    .line 194
    .line 195
    move-object/from16 v21, v0

    .line 196
    .line 197
    check-cast v21, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    .line 200
    const v1, 0x7f0a049e

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    move-object/from16 v22, v2

    .line 207
    .line 208
    check-cast v22, Lcom/narvii/widget/RankingTitleView;

    .line 209
    .line 210
    if-eqz v22, :cond_0

    .line 211
    .line 212
    .line 213
    const v1, 0x7f0a0989

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 217
    move-result-object v2

    .line 218
    .line 219
    move-object/from16 v23, v2

    .line 220
    .line 221
    check-cast v23, Lcom/narvii/widget/MoodView;

    .line 222
    .line 223
    if-eqz v23, :cond_0

    .line 224
    .line 225
    .line 226
    const v1, 0x7f0a09f9

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 230
    move-result-object v2

    .line 231
    .line 232
    move-object/from16 v24, v2

    .line 233
    .line 234
    check-cast v24, Lcom/narvii/widget/NicknameView;

    .line 235
    .line 236
    if-eqz v24, :cond_0

    .line 237
    .line 238
    .line 239
    const v1, 0x7f0a0a17

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 243
    move-result-object v25

    .line 244
    .line 245
    if-eqz v25, :cond_0

    .line 246
    .line 247
    .line 248
    const v1, 0x7f0a0ddd

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 252
    move-result-object v2

    .line 253
    .line 254
    move-object/from16 v26, v2

    .line 255
    .line 256
    check-cast v26, Landroid/widget/TextView;

    .line 257
    .line 258
    if-eqz v26, :cond_0

    .line 259
    .line 260
    new-instance v0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;

    .line 261
    move-object v3, v0

    .line 262
    .line 263
    move-object/from16 v4, v21

    .line 264
    .line 265
    .line 266
    invoke-direct/range {v3 .. v26}, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/PushEffectLayout;Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/PushButton;Landroid/widget/TextView;Lcom/narvii/checkin/CheckInCircle;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/RankingTitleView;Lcom/narvii/widget/MoodView;Lcom/narvii/widget/NicknameView;Landroid/view/View;Landroid/widget/TextView;)V

    .line 267
    return-object v0

    .line 268
    .line 269
    .line 270
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 271
    move-result-object v0

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    new-instance v1, Ljava/lang/NullPointerException;

    .line 278
    .line 279
    const-string v2, "Missing required view with ID: "

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    .line 286
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 287
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;
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

    const v0, 0x7f0d01f2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DrawerAccountInfoLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
