.class public final Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final answer1:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer2:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer3:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final answer4:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final divider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final realShareLayout:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareBg:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareBgOverlay:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareCustomTitle:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareQuestionTitle:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareQuizPlayedTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareQuizTitle:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topBigOverlay:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topSmallOverlay:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView;)V
    .locals 2
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/NVImageView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->answer1:Lcom/narvii/widget/AutoSizingTextView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->answer2:Lcom/narvii/widget/AutoSizingTextView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->answer3:Lcom/narvii/widget/AutoSizingTextView;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->answer4:Lcom/narvii/widget/AutoSizingTextView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->divider:Landroid/view/View;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->nickname:Landroid/widget/TextView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->realShareLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareBg:Lcom/narvii/widget/ThumbImageView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareBgOverlay:Landroid/view/View;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareCustomTitle:Landroid/widget/EditText;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareQuestionTitle:Lcom/narvii/widget/AutoSizingTextView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareQuizPlayedTime:Landroid/widget/TextView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->shareQuizTitle:Lcom/narvii/widget/AutoSizingTextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->topBigOverlay:Lcom/narvii/widget/NVImageView;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->topSmallOverlay:Lcom/narvii/widget/NVImageView;

    .line 60
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;
    .locals 21
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
    const v1, 0x7f0a0119

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
    check-cast v5, Lcom/narvii/widget/AutoSizingTextView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a011a

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
    check-cast v6, Lcom/narvii/widget/AutoSizingTextView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a011b

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
    check-cast v7, Lcom/narvii/widget/AutoSizingTextView;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a011c

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
    check-cast v8, Lcom/narvii/widget/AutoSizingTextView;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a0171

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
    check-cast v9, Lcom/narvii/widget/ThumbImageView;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a044f

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v10

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a09f9

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
    check-cast v11, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a0be1

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
    check-cast v12, Lcom/github/mmin18/widget/FlexLayout;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a0ce8

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
    check-cast v13, Lcom/narvii/widget/ThumbImageView;

    .line 106
    .line 107
    if-eqz v13, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0ce9

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v14

    .line 115
    .line 116
    if-eqz v14, :cond_0

    .line 117
    .line 118
    .line 119
    const v1, 0x7f0a0cf2

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
    check-cast v15, Landroid/widget/EditText;

    .line 127
    .line 128
    if-eqz v15, :cond_0

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0a0cfc

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
    check-cast v16, Lcom/narvii/widget/AutoSizingTextView;

    .line 140
    .line 141
    if-eqz v16, :cond_0

    .line 142
    .line 143
    .line 144
    const v1, 0x7f0a0cfd

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
    check-cast v17, Landroid/widget/TextView;

    .line 153
    .line 154
    if-eqz v17, :cond_0

    .line 155
    .line 156
    .line 157
    const v1, 0x7f0a0cfe

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
    check-cast v18, Lcom/narvii/widget/AutoSizingTextView;

    .line 166
    .line 167
    if-eqz v18, :cond_0

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0a0ed3

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
    const v1, 0x7f0a0edf

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
    check-cast v20, Lcom/narvii/widget/NVImageView;

    .line 192
    .line 193
    if-eqz v20, :cond_0

    .line 194
    .line 195
    new-instance v1, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;

    .line 196
    move-object v3, v1

    .line 197
    move-object v4, v0

    .line 198
    .line 199
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout;

    .line 200
    .line 201
    .line 202
    invoke-direct/range {v3 .. v20}, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView;)V

    .line 203
    return-object v1

    .line 204
    .line 205
    .line 206
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    new-instance v1, Ljava/lang/NullPointerException;

    .line 214
    .line 215
    const-string v2, "Missing required view with ID: "

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 223
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;
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

    const v0, 0x7f0d0684

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/QuizeShareContentLayoutBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
