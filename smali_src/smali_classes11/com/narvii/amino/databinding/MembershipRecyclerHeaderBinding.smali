.class public final Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarHalo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final interceptClick:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipAutoRenewCheckbox:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipAutoRenewText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCard:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardBack:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardBackBg:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardBg:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardLogo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardLogoSmall:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipCardLogoText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipHeader:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipSince:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipStartDate:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipStartDateContent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipStatus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipSubscribtionDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ripple:Lcom/narvii/widget/NVDrawableAnimatedView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final subscribeBg:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final subscribeText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/ThumbImageView;
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
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/github/mmin18/widget/FlexLayout;
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
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Lcom/narvii/widget/NVDrawableAnimatedView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/narvii/widget/RandomBlinkingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->avatarHalo:Landroid/widget/ImageView;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->interceptClick:Landroid/view/View;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipAutoRenewCheckbox:Landroid/widget/CheckBox;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipAutoRenewText:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCard:Lcom/github/mmin18/widget/FlexLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardBack:Lcom/github/mmin18/widget/FlexLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardBackBg:Lcom/narvii/widget/ThumbImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardBg:Lcom/narvii/widget/ThumbImageView;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardLogo:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardLogoSmall:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipCardLogoText:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipHeader:Lcom/github/mmin18/widget/FlexLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipSince:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipStartDate:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipStartDateContent:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipStatus:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->membershipSubscribtionDescription:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->nickname:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->overlay:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->ripple:Lcom/narvii/widget/NVDrawableAnimatedView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->stub1:Landroid/view/View;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->subscribeBg:Lcom/narvii/widget/ThumbImageView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->subscribeText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;
    .locals 29
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
    const v1, 0x7f0a0187

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
    check-cast v5, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a072d

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0949

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    move-object v7, v2

    .line 32
    .line 33
    check-cast v7, Landroid/widget/CheckBox;

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a094a

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
    check-cast v8, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a094b

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
    check-cast v9, Lcom/github/mmin18/widget/FlexLayout;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a094c

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
    check-cast v10, Lcom/github/mmin18/widget/FlexLayout;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a094d

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
    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a094e

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
    check-cast v12, Lcom/narvii/widget/ThumbImageView;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a094f

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
    const v1, 0x7f0a0950

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
    check-cast v14, Landroid/widget/ImageView;

    .line 118
    .line 119
    if-eqz v14, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0951

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
    const v1, 0x7f0a0953

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
    check-cast v16, Lcom/github/mmin18/widget/FlexLayout;

    .line 143
    .line 144
    if-eqz v16, :cond_0

    .line 145
    .line 146
    .line 147
    const v1, 0x7f0a095c

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
    check-cast v17, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v17, :cond_0

    .line 158
    .line 159
    .line 160
    const v1, 0x7f0a095d

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    move-object/from16 v18, v2

    .line 167
    .line 168
    check-cast v18, Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v18, :cond_0

    .line 171
    .line 172
    .line 173
    const v1, 0x7f0a095e

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    move-object/from16 v19, v2

    .line 180
    .line 181
    check-cast v19, Landroid/widget/TextView;

    .line 182
    .line 183
    if-eqz v19, :cond_0

    .line 184
    .line 185
    .line 186
    const v1, 0x7f0a095f

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    move-object/from16 v20, v2

    .line 193
    .line 194
    check-cast v20, Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v20, :cond_0

    .line 197
    .line 198
    .line 199
    const v1, 0x7f0a0960

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    move-object/from16 v21, v2

    .line 206
    .line 207
    check-cast v21, Landroid/widget/TextView;

    .line 208
    .line 209
    if-eqz v21, :cond_0

    .line 210
    .line 211
    .line 212
    const v1, 0x7f0a09f9

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 216
    move-result-object v2

    .line 217
    .line 218
    move-object/from16 v22, v2

    .line 219
    .line 220
    check-cast v22, Landroid/widget/TextView;

    .line 221
    .line 222
    if-eqz v22, :cond_0

    .line 223
    .line 224
    move-object/from16 v23, v0

    .line 225
    .line 226
    check-cast v23, Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    .line 229
    const v1, 0x7f0a0c47

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    move-object/from16 v24, v2

    .line 236
    .line 237
    check-cast v24, Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 238
    .line 239
    if-eqz v24, :cond_0

    .line 240
    .line 241
    .line 242
    const v1, 0x7f0a0d81

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    move-object/from16 v25, v2

    .line 249
    .line 250
    check-cast v25, Lcom/narvii/widget/RandomBlinkingView;

    .line 251
    .line 252
    if-eqz v25, :cond_0

    .line 253
    .line 254
    .line 255
    const v1, 0x7f0a0de5

    .line 256
    .line 257
    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 259
    move-result-object v26

    .line 260
    .line 261
    if-eqz v26, :cond_0

    .line 262
    .line 263
    .line 264
    const v1, 0x7f0a0e01

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    move-object/from16 v27, v2

    .line 271
    .line 272
    check-cast v27, Lcom/narvii/widget/ThumbImageView;

    .line 273
    .line 274
    if-eqz v27, :cond_0

    .line 275
    .line 276
    .line 277
    const v1, 0x7f0a0e05

    .line 278
    .line 279
    .line 280
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 281
    move-result-object v2

    .line 282
    .line 283
    move-object/from16 v28, v2

    .line 284
    .line 285
    check-cast v28, Landroid/widget/TextView;

    .line 286
    .line 287
    if-eqz v28, :cond_0

    .line 288
    .line 289
    new-instance v0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;

    .line 290
    move-object v3, v0

    .line 291
    .line 292
    move-object/from16 v4, v23

    .line 293
    .line 294
    .line 295
    invoke-direct/range {v3 .. v28}, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;)V

    .line 296
    return-object v0

    .line 297
    .line 298
    .line 299
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 300
    move-result-object v0

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    .line 306
    new-instance v1, Ljava/lang/NullPointerException;

    .line 307
    .line 308
    const-string v2, "Missing required view with ID: "

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 316
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;
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

    const v0, 0x7f0d0597

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/MembershipRecyclerHeaderBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
