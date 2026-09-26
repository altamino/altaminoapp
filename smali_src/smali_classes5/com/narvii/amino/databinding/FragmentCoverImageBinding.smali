.class public final Lcom/narvii/amino/databinding/FragmentCoverImageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final customImageRl:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customImageView:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editBackgroundView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageThumbIv:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Lcom/narvii/list/overlay/OverlayListPlaceholder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playerButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectCoverImageBtn:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeHintTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabCustom:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabScreenShoot:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoTimeLineComponentContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/ImageView;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/FrameLayout;Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V
    .locals 2
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/list/overlay/OverlayListPlaceholder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/HorizontalRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->customImageRl:Landroid/widget/FrameLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->customImageView:Lcom/narvii/widget/NVImageView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->editBackgroundView:Landroid/widget/FrameLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->imageThumbIv:Lcom/narvii/widget/NVImageView;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->overlay:Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->playerButton:Landroid/widget/ImageView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->selectCoverImageBtn:Lcom/narvii/widget/TintButton;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->swipeHintTv:Landroid/widget/TextView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->tabCustom:Landroid/widget/Button;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->tabScreenShoot:Landroid/widget/Button;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->videoContainer:Landroid/widget/FrameLayout;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->videoTimeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->videoTimeLineComponentContainer:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentCoverImageBinding;
    .locals 20
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
    const v1, 0x7f0a03f7

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
    check-cast v5, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a03f8

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
    const v1, 0x7f0a04b6

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
    check-cast v7, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0709

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
    check-cast v8, Lcom/narvii/widget/NVImageView;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a0ab1

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
    check-cast v9, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a0afb

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
    check-cast v10, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a0cca

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
    check-cast v11, Lcom/narvii/widget/TintButton;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0a0e11

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
    check-cast v12, Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f0a0e1c

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
    check-cast v13, Landroid/widget/Button;

    .line 109
    .line 110
    if-eqz v13, :cond_0

    .line 111
    .line 112
    .line 113
    const v1, 0x7f0a0e25

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
    check-cast v14, Landroid/widget/Button;

    .line 121
    .line 122
    if-eqz v14, :cond_0

    .line 123
    .line 124
    .line 125
    const v1, 0x7f0a0f7a

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
    check-cast v15, Landroid/widget/FrameLayout;

    .line 133
    .line 134
    if-eqz v15, :cond_0

    .line 135
    .line 136
    .line 137
    const v1, 0x7f0a0faf

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
    check-cast v16, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 146
    .line 147
    if-eqz v16, :cond_0

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a0fb0

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
    check-cast v17, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 159
    .line 160
    if-eqz v17, :cond_0

    .line 161
    .line 162
    .line 163
    const v1, 0x7f0a0fb1

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
    check-cast v18, Landroid/widget/FrameLayout;

    .line 172
    .line 173
    if-eqz v18, :cond_0

    .line 174
    .line 175
    .line 176
    const v1, 0x7f0a0fb5

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
    check-cast v19, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 185
    .line 186
    if-eqz v19, :cond_0

    .line 187
    .line 188
    new-instance v1, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;

    .line 189
    move-object v3, v1

    .line 190
    move-object v4, v0

    .line 191
    .line 192
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout;

    .line 193
    .line 194
    .line 195
    invoke-direct/range {v3 .. v19}, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/list/overlay/OverlayListPlaceholder;Landroid/widget/ImageView;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/widget/FrameLayout;Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 196
    return-object v1

    .line 197
    .line 198
    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    new-instance v1, Ljava/lang/NullPointerException;

    .line 207
    .line 208
    const-string v2, "Missing required view with ID: "

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 216
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentCoverImageBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentCoverImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentCoverImageBinding;
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

    const v0, 0x7f0d02c2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentCoverImageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentCoverImageBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
