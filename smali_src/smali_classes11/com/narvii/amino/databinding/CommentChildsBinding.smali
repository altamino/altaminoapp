.class public final Lcom/narvii/amino/databinding/CommentChildsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final commentImages:Lcom/narvii/comment/list/CommentImagesLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentReply:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentVotes:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Lcom/narvii/widget/ExpandTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final datetime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emojiSticker:Lcom/narvii/widget/EmojioneView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expand:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image1:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image2:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image3:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image4:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image5:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stickerImage:Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteCount2:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteHeart2:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteProgress2:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/narvii/comment/list/CommentImagesLayout;Landroid/widget/TextView;Landroid/view/ViewStub;Lcom/narvii/widget/ExpandTextView;Landroid/widget/TextView;Lcom/narvii/widget/EmojioneView;Landroid/widget/FrameLayout;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/NicknameView;Landroid/widget/FrameLayout;Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/comment/list/CommentImagesLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/ExpandTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/EmojioneView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/narvii/widget/SpinningView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->rootView:Landroid/view/View;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->commentImages:Lcom/narvii/comment/list/CommentImagesLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->commentReply:Landroid/widget/TextView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->commentVotes:Landroid/view/ViewStub;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->content:Lcom/narvii/widget/ExpandTextView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->datetime:Landroid/widget/TextView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->emojiSticker:Lcom/narvii/widget/EmojioneView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->expand:Landroid/widget/FrameLayout;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->image1:Lcom/narvii/widget/ThumbImageView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->image2:Lcom/narvii/widget/ThumbImageView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->image3:Lcom/narvii/widget/ThumbImageView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->image4:Lcom/narvii/widget/ThumbImageView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->image5:Lcom/narvii/widget/ThumbImageView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->rightLayout:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->stickerImage:Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->voteCount2:Lcom/narvii/widget/AutoSizingTextView;

    .line 60
    .line 61
    move-object/from16 v1, p18

    .line 62
    .line 63
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->voteHeart2:Lcom/narvii/widget/FontAwesomeView;

    .line 64
    .line 65
    move-object/from16 v1, p19

    .line 66
    .line 67
    iput-object v1, v0, Lcom/narvii/amino/databinding/CommentChildsBinding;->voteProgress2:Lcom/narvii/widget/SpinningView;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommentChildsBinding;
    .locals 21
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a035b

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    check-cast v2, Lcom/narvii/comment/list/CommentImagesLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a035f

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0363

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Landroid/view/ViewStub;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a039d

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    check-cast v5, Lcom/narvii/widget/ExpandTextView;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0408

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    check-cast v6, Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a04dd

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Lcom/narvii/widget/EmojioneView;

    .line 67
    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a053c

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 75
    move-result-object v8

    .line 76
    .line 77
    check-cast v8, Landroid/widget/FrameLayout;

    .line 78
    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a06ec

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 86
    move-result-object v9

    .line 87
    .line 88
    check-cast v9, Lcom/narvii/widget/ThumbImageView;

    .line 89
    .line 90
    if-eqz v9, :cond_0

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a06ed

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    check-cast v10, Lcom/narvii/widget/ThumbImageView;

    .line 100
    .line 101
    if-eqz v10, :cond_0

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a06ee

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v11

    .line 109
    .line 110
    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    .line 111
    .line 112
    if-eqz v11, :cond_0

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a06ef

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    check-cast v12, Lcom/narvii/widget/ThumbImageView;

    .line 122
    .line 123
    if-eqz v12, :cond_0

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a06f0

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 130
    move-result-object v13

    .line 131
    .line 132
    check-cast v13, Lcom/narvii/widget/ThumbImageView;

    .line 133
    .line 134
    if-eqz v13, :cond_0

    .line 135
    .line 136
    .line 137
    const v0, 0x7f0a09f9

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 141
    move-result-object v14

    .line 142
    .line 143
    check-cast v14, Lcom/narvii/widget/NicknameView;

    .line 144
    .line 145
    if-eqz v14, :cond_0

    .line 146
    .line 147
    .line 148
    const v0, 0x7f0a0c44

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 152
    move-result-object v15

    .line 153
    .line 154
    check-cast v15, Landroid/widget/FrameLayout;

    .line 155
    .line 156
    if-eqz v15, :cond_0

    .line 157
    .line 158
    .line 159
    const v0, 0x7f0a0dac

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 163
    move-result-object v16

    .line 164
    .line 165
    check-cast v16, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;

    .line 166
    .line 167
    if-eqz v16, :cond_0

    .line 168
    .line 169
    .line 170
    const v0, 0x7f0a0ffe

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 174
    move-result-object v17

    .line 175
    .line 176
    check-cast v17, Lcom/narvii/widget/AutoSizingTextView;

    .line 177
    .line 178
    if-eqz v17, :cond_0

    .line 179
    .line 180
    .line 181
    const v0, 0x7f0a1000

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 185
    move-result-object v18

    .line 186
    .line 187
    check-cast v18, Lcom/narvii/widget/FontAwesomeView;

    .line 188
    .line 189
    if-eqz v18, :cond_0

    .line 190
    .line 191
    .line 192
    const v0, 0x7f0a1007

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 196
    move-result-object v19

    .line 197
    .line 198
    check-cast v19, Lcom/narvii/widget/SpinningView;

    .line 199
    .line 200
    if-eqz v19, :cond_0

    .line 201
    .line 202
    new-instance v20, Lcom/narvii/amino/databinding/CommentChildsBinding;

    .line 203
    .line 204
    move-object/from16 v0, v20

    .line 205
    .line 206
    move-object/from16 v1, p0

    .line 207
    .line 208
    .line 209
    invoke-direct/range {v0 .. v19}, Lcom/narvii/amino/databinding/CommentChildsBinding;-><init>(Landroid/view/View;Lcom/narvii/comment/list/CommentImagesLayout;Landroid/widget/TextView;Landroid/view/ViewStub;Lcom/narvii/widget/ExpandTextView;Landroid/widget/TextView;Lcom/narvii/widget/EmojioneView;Landroid/widget/FrameLayout;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/NicknameView;Landroid/widget/FrameLayout;Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;Lcom/narvii/widget/AutoSizingTextView;Lcom/narvii/widget/FontAwesomeView;Lcom/narvii/widget/SpinningView;)V

    .line 210
    return-object v20

    .line 211
    .line 212
    .line 213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    new-instance v1, Ljava/lang/NullPointerException;

    .line 221
    .line 222
    const-string v2, "Missing required view with ID: "

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    .line 229
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 230
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/CommentChildsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d0103

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/CommentChildsBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/CommentChildsBinding;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p1, "parent"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/databinding/CommentChildsBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
