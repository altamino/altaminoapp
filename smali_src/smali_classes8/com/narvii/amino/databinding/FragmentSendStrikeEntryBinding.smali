.class public final Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatTemplateClose:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final entryContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final error:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final muteUserContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operaStrike:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operaWarning:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operationContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final operationTag:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recentTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retry:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final seekBar:Lcom/narvii/poweruser/SectionSeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeEdit:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final strikeWarningType:Lcom/narvii/util/layouts/NVFlowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final submit:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final templateErrorContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final templateRequestProgress:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final templateTo:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final warningCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final warningIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final warningTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NicknameView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/poweruser/SectionSeekBar;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/util/layouts/NVFlowLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/TintButton;
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
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/poweruser/SectionSeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->back:Landroid/widget/Button;

    move-object v1, p3

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->chatTemplateClose:Lcom/narvii/widget/TintButton;

    move-object v1, p4

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->entryContainer:Landroid/widget/LinearLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->error:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->muteUserContainer:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->nickname:Lcom/narvii/widget/NicknameView;

    move-object v1, p8

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->operaStrike:Landroid/widget/RelativeLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->operaWarning:Landroid/widget/RelativeLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->operationContainer:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->operationTag:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->recentTime:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->retry:Lcom/narvii/widget/FontAwesomeView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->strikeCount:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->strikeEdit:Landroid/widget/EditText;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->strikeIndicator:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->strikeTitle:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->strikeWarningType:Lcom/narvii/util/layouts/NVFlowLayout;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->submit:Landroid/widget/Button;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->templateErrorContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->templateRequestProgress:Landroid/widget/ProgressBar;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->templateTo:Landroid/widget/TextView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->warningCount:Landroid/widget/TextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->warningIndicator:Landroid/widget/ImageView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->warningTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;
    .locals 30
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
    const v1, 0x7f0a0191

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
    check-cast v5, Landroid/widget/Button;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a02c1

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
    check-cast v6, Lcom/narvii/widget/TintButton;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a04f9

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
    check-cast v7, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a04fd

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
    check-cast v8, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a09cb

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
    check-cast v9, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a09f9

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
    check-cast v10, Lcom/narvii/widget/NicknameView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a0a74

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
    check-cast v11, Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0a0a75

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
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f0a0a76

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
    check-cast v13, Landroid/widget/LinearLayout;

    .line 109
    .line 110
    if-eqz v13, :cond_0

    .line 111
    .line 112
    .line 113
    const v1, 0x7f0a0a7a

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
    check-cast v14, Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz v14, :cond_0

    .line 123
    .line 124
    .line 125
    const v1, 0x7f0a0bee

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
    .line 137
    const v1, 0x7f0a0c38

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
    check-cast v16, Lcom/narvii/widget/FontAwesomeView;

    .line 146
    .line 147
    if-eqz v16, :cond_0

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a0cc1

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
    check-cast v17, Lcom/narvii/poweruser/SectionSeekBar;

    .line 159
    .line 160
    if-eqz v17, :cond_0

    .line 161
    .line 162
    .line 163
    const v1, 0x7f0a0dda

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
    check-cast v18, Landroid/widget/TextView;

    .line 172
    .line 173
    if-eqz v18, :cond_0

    .line 174
    .line 175
    .line 176
    const v1, 0x7f0a0ddb

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
    check-cast v19, Landroid/widget/EditText;

    .line 185
    .line 186
    if-eqz v19, :cond_0

    .line 187
    .line 188
    .line 189
    const v1, 0x7f0a0ddc

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
    const v1, 0x7f0a0de0

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
    check-cast v21, Landroid/widget/TextView;

    .line 211
    .line 212
    if-eqz v21, :cond_0

    .line 213
    .line 214
    .line 215
    const v1, 0x7f0a0de1

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
    check-cast v22, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 224
    .line 225
    if-eqz v22, :cond_0

    .line 226
    .line 227
    .line 228
    const v1, 0x7f0a0df8

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
    check-cast v23, Landroid/widget/Button;

    .line 237
    .line 238
    if-eqz v23, :cond_0

    .line 239
    .line 240
    .line 241
    const v1, 0x7f0a0e43

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    move-object/from16 v24, v2

    .line 248
    .line 249
    check-cast v24, Landroid/widget/LinearLayout;

    .line 250
    .line 251
    if-eqz v24, :cond_0

    .line 252
    .line 253
    .line 254
    const v1, 0x7f0a0e44

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 258
    move-result-object v2

    .line 259
    .line 260
    move-object/from16 v25, v2

    .line 261
    .line 262
    check-cast v25, Landroid/widget/ProgressBar;

    .line 263
    .line 264
    if-eqz v25, :cond_0

    .line 265
    .line 266
    .line 267
    const v1, 0x7f0a0e45

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 271
    move-result-object v2

    .line 272
    .line 273
    move-object/from16 v26, v2

    .line 274
    .line 275
    check-cast v26, Landroid/widget/TextView;

    .line 276
    .line 277
    if-eqz v26, :cond_0

    .line 278
    .line 279
    .line 280
    const v1, 0x7f0a101e

    .line 281
    .line 282
    .line 283
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 284
    move-result-object v2

    .line 285
    .line 286
    move-object/from16 v27, v2

    .line 287
    .line 288
    check-cast v27, Landroid/widget/TextView;

    .line 289
    .line 290
    if-eqz v27, :cond_0

    .line 291
    .line 292
    .line 293
    const v1, 0x7f0a101f

    .line 294
    .line 295
    .line 296
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 297
    move-result-object v2

    .line 298
    .line 299
    move-object/from16 v28, v2

    .line 300
    .line 301
    check-cast v28, Landroid/widget/ImageView;

    .line 302
    .line 303
    if-eqz v28, :cond_0

    .line 304
    .line 305
    .line 306
    const v1, 0x7f0a1021

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 310
    move-result-object v2

    .line 311
    .line 312
    move-object/from16 v29, v2

    .line 313
    .line 314
    check-cast v29, Landroid/widget/TextView;

    .line 315
    .line 316
    if-eqz v29, :cond_0

    .line 317
    .line 318
    new-instance v1, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;

    .line 319
    move-object v3, v1

    .line 320
    move-object v4, v0

    .line 321
    .line 322
    check-cast v4, Landroid/widget/FrameLayout;

    .line 323
    .line 324
    .line 325
    invoke-direct/range {v3 .. v29}, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/NicknameView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/poweruser/SectionSeekBar;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/util/layouts/NVFlowLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 326
    return-object v1

    .line 327
    .line 328
    .line 329
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    new-instance v1, Ljava/lang/NullPointerException;

    .line 337
    .line 338
    const-string v2, "Missing required view with ID: "

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    .line 345
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 346
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;
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

    const v0, 0x7f0d0311

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentSendStrikeEntryBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
