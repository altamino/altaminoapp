.class public final Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final commentContent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentSeeAll:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentTime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emojiSticker:Lcom/narvii/widget/EmojioneView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stickerImage:Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/EmojioneView;Landroid/widget/FrameLayout;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/SpinningView;Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/EmojioneView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->commentContent:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->commentSeeAll:Landroid/widget/Button;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->commentTime:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->contentContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->emojiSticker:Lcom/narvii/widget/EmojioneView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->listFrame:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->stickerImage:Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;

    .line 24
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0357

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    .line 10
    check-cast v4, Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0360

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    .line 22
    check-cast v5, Landroid/widget/Button;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0362

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v6, v1

    .line 33
    .line 34
    check-cast v6, Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a039f

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    move-object v7, v1

    .line 45
    .line 46
    check-cast v7, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a04dd

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    move-object v8, v1

    .line 57
    .line 58
    check-cast v8, Lcom/narvii/widget/EmojioneView;

    .line 59
    .line 60
    if-eqz v8, :cond_0

    .line 61
    move-object v9, p0

    .line 62
    .line 63
    check-cast v9, Landroid/widget/FrameLayout;

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a09f9

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    move-object v10, v1

    .line 72
    .line 73
    check-cast v10, Lcom/narvii/widget/NicknameView;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    .line 78
    const v0, 0x102000d

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 83
    move-object v11, v1

    .line 84
    .line 85
    check-cast v11, Lcom/narvii/widget/SpinningView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a0dac

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    move-result-object v1

    .line 95
    move-object v12, v1

    .line 96
    .line 97
    check-cast v12, Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;

    .line 98
    .line 99
    if-eqz v12, :cond_0

    .line 100
    .line 101
    new-instance p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;

    .line 102
    move-object v2, p0

    .line 103
    move-object v3, v9

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v12}, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/widget/EmojioneView;Landroid/widget/FrameLayout;Lcom/narvii/widget/NicknameView;Lcom/narvii/widget/SpinningView;Lcom/narvii/monetization/sticker/widget/CommentStickerImageVIew;)V

    .line 107
    return-object p0

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    .line 118
    .line 119
    const-string v1, "Missing required view with ID: "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;
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

    const v0, 0x7f0d0291

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FlagResolveCommentLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
