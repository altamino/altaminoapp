.class public final Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cover:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gradient:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final locked:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final photoCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/sharedfolder/SharedAlbumView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/sharedfolder/SharedAlbumView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->cover:Lcom/narvii/widget/ThumbImageView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->gradient:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->locked:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->photoCount:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->title:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->voteCount:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->voteIcon:Landroid/widget/ImageView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a03cf

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
    const v0, 0x7f0a062a

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a082c

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    .line 31
    check-cast v6, Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0ae4

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
    const v0, 0x7f0a0d08

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
    check-cast v8, Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0e9e

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
    check-cast v9, Landroid/widget/TextView;

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
    check-cast v11, Landroid/widget/ImageView;

    .line 92
    .line 93
    if-eqz v11, :cond_0

    .line 94
    .line 95
    new-instance v0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;

    .line 96
    move-object v2, v0

    .line 97
    move-object v3, p0

    .line 98
    .line 99
    .line 100
    invoke-direct/range {v2 .. v11}, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;-><init>(Landroid/view/View;Lcom/narvii/widget/ThumbImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/sharedfolder/SharedAlbumView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 101
    return-object v0

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    .line 112
    .line 113
    const-string v1, "Missing required view with ID: "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;
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
    const v0, 0x7f0d0478

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;

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

    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemSnippetSharedAlbumBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
