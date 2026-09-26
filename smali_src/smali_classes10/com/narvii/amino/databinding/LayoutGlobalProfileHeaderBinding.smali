.class public final Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aminoId:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bio:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatEntry:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editButton:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followersCount:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followersCountUnitTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followersWrapper:Lcom/narvii/widget/RadiusLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followingsCount:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followingsWrapper:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hintFrame:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hintIndicator:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hintText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkedCommunities:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/RadiusLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 2
    .param p1    # Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/master/home/widgets/GlobalProfileFollowView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/RadiusLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/narvii/widget/UserAvatarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->rootView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->aminoId:Landroid/widget/TextView;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->bio:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->chatEntry:Landroid/widget/ImageView;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->editButton:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followersCount:Lcom/narvii/widget/AutoSizingTextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followersCountUnitTv:Landroid/widget/TextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followersWrapper:Lcom/narvii/widget/RadiusLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followingsCount:Lcom/narvii/widget/AutoSizingTextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->followingsWrapper:Landroid/widget/FrameLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->hintFrame:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->hintIndicator:Lcom/narvii/widget/TintButton;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->hintText:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->linkedCommunities:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->membershipHint:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->membershipIndicator:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->membershipLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->nickname:Lcom/narvii/widget/NicknameView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;
    .locals 24
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
    const v1, 0x7f0a0108

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
    const v1, 0x7f0a01cd

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
    check-cast v6, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0299

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
    const v1, 0x7f0a04b7

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
    check-cast v8, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a05f0

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
    check-cast v9, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a05f1

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
    check-cast v10, Lcom/narvii/widget/AutoSizingTextView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a05f2

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
    check-cast v11, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0a05f3

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
    check-cast v12, Lcom/narvii/widget/RadiusLayout;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f0a05f4

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
    check-cast v13, Lcom/narvii/widget/AutoSizingTextView;

    .line 109
    .line 110
    if-eqz v13, :cond_0

    .line 111
    .line 112
    .line 113
    const v1, 0x7f0a05f5

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
    check-cast v14, Landroid/widget/FrameLayout;

    .line 121
    .line 122
    if-eqz v14, :cond_0

    .line 123
    .line 124
    .line 125
    const v1, 0x7f0a066c

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
    check-cast v15, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    if-eqz v15, :cond_0

    .line 135
    .line 136
    .line 137
    const v1, 0x7f0a066d

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    move-object/from16 v16, v2

    .line 144
    .line 145
    check-cast v16, Lcom/narvii/widget/TintButton;

    .line 146
    .line 147
    if-eqz v16, :cond_0

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a0670

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    move-object/from16 v17, v2

    .line 157
    .line 158
    check-cast v17, Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz v17, :cond_0

    .line 161
    .line 162
    .line 163
    const v1, 0x7f0a07f6

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    move-object/from16 v18, v2

    .line 170
    .line 171
    check-cast v18, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 172
    .line 173
    if-eqz v18, :cond_0

    .line 174
    .line 175
    .line 176
    const v1, 0x7f0a0954

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    move-object/from16 v19, v2

    .line 183
    .line 184
    check-cast v19, Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v19, :cond_0

    .line 187
    .line 188
    .line 189
    const v1, 0x7f0a0955

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    move-object/from16 v20, v2

    .line 196
    .line 197
    check-cast v20, Landroid/widget/ImageView;

    .line 198
    .line 199
    if-eqz v20, :cond_0

    .line 200
    .line 201
    .line 202
    const v1, 0x7f0a0958

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    move-object/from16 v21, v2

    .line 209
    .line 210
    check-cast v21, Landroid/widget/LinearLayout;

    .line 211
    .line 212
    if-eqz v21, :cond_0

    .line 213
    .line 214
    .line 215
    const v1, 0x7f0a09f9

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    move-object/from16 v22, v2

    .line 222
    .line 223
    check-cast v22, Lcom/narvii/widget/NicknameView;

    .line 224
    .line 225
    if-eqz v22, :cond_0

    .line 226
    .line 227
    .line 228
    const v1, 0x7f0a0f36

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    move-object/from16 v23, v2

    .line 235
    .line 236
    check-cast v23, Lcom/narvii/widget/UserAvatarLayout;

    .line 237
    .line 238
    if-eqz v23, :cond_0

    .line 239
    .line 240
    new-instance v1, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;

    .line 241
    move-object v3, v1

    .line 242
    move-object v4, v0

    .line 243
    .line 244
    check-cast v4, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 245
    .line 246
    .line 247
    invoke-direct/range {v3 .. v23}, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;-><init>(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/RadiusLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/UserAvatarLayout;)V

    .line 248
    return-object v1

    .line 249
    .line 250
    .line 251
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    new-instance v1, Ljava/lang/NullPointerException;

    .line 259
    .line 260
    const-string v2, "Missing required view with ID: "

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    .line 267
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 268
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;
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

    const v0, 0x7f0d04bb

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->getRoot()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/LayoutGlobalProfileHeaderBinding;->rootView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    return-object v0
.end method
