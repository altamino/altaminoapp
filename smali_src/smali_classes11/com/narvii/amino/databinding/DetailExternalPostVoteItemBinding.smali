.class public final Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final datetime:Landroid/widget/TextView;
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

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userLayout:Landroid/widget/RelativeLayout;
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

.field public final voteProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/VoteIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->datetime:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->divider:Landroid/view/View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->nickname:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->userLayout:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->voteBtn:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->voteCount:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 24
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;
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
    const v0, 0x7f0a0171

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
    check-cast v4, Lcom/narvii/widget/ThumbImageView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0408

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
    check-cast v5, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a044f

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a09f9

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v7, v1

    .line 42
    .line 43
    check-cast v7, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0f4b

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v8, v1

    .line 54
    .line 55
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0ffb

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v9, v1

    .line 66
    .line 67
    check-cast v9, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a0ffd

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    move-object v10, v1

    .line 78
    .line 79
    check-cast v10, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v10, :cond_0

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a1002

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    move-object v11, v1

    .line 90
    .line 91
    check-cast v11, Lcom/narvii/widget/VoteIcon;

    .line 92
    .line 93
    if-eqz v11, :cond_0

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0a1006

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 100
    move-result-object v1

    .line 101
    move-object v12, v1

    .line 102
    .line 103
    check-cast v12, Lcom/narvii/widget/SpinningView;

    .line 104
    .line 105
    if-eqz v12, :cond_0

    .line 106
    .line 107
    new-instance v0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;

    .line 108
    move-object v3, p0

    .line 109
    .line 110
    check-cast v3, Landroid/widget/LinearLayout;

    .line 111
    move-object v2, v0

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v2 .. v12}, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V

    .line 115
    return-object v0

    .line 116
    .line 117
    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    .line 126
    .line 127
    const-string v1, "Missing required view with ID: "

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;
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

    const v0, 0x7f0d015c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DetailExternalPostVoteItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
