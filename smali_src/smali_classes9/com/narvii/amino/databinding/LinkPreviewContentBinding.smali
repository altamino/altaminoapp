.class public final Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linkDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkIcon:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkPreview:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final snippetFavicon:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final snippetSource:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->linkDescription:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->linkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->linkPreview:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->linkTitle:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->snippetFavicon:Lcom/narvii/widget/ThumbImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->snippetSource:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a07e9

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
    const v0, 0x7f0a07eb

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
    check-cast v5, Lcom/narvii/widget/ThumbImageView;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    move-object v6, p0

    .line 26
    .line 27
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a07f5

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    move-object v7, v1

    .line 36
    .line 37
    check-cast v7, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0d44

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v8, v1

    .line 48
    .line 49
    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0d48

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    .line 61
    check-cast v9, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    new-instance p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;

    .line 66
    move-object v2, p0

    .line 67
    move-object v3, v6

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;)V

    .line 71
    return-object p0

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string v1, "Missing required view with ID: "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
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

    const v0, 0x7f0d04d9

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
