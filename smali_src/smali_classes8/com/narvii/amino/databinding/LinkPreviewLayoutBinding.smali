.class public final Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final linkPreviewContent:Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkPreviewFail:Lcom/narvii/amino/databinding/LinkPreviewFailBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkPreviewLoading:Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/blog/post/LinkPostPreviewLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/blog/post/LinkPostPreviewLayout;Lcom/narvii/amino/databinding/LinkPreviewContentBinding;Lcom/narvii/amino/databinding/LinkPreviewFailBinding;Lcom/narvii/blog/post/LinkPostPreviewLayout;Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;)V
    .locals 0
    .param p1    # Lcom/narvii/blog/post/LinkPostPreviewLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/LinkPreviewContentBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/LinkPreviewFailBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/blog/post/LinkPostPreviewLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->rootView:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->linkPreviewContent:Lcom/narvii/amino/databinding/LinkPreviewContentBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->linkPreviewFail:Lcom/narvii/amino/databinding/LinkPreviewFailBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->linkPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->linkPreviewLoading:Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a07ef

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/amino/databinding/LinkPreviewContentBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewContentBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a07f0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/amino/databinding/LinkPreviewFailBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewFailBinding;

    .line 26
    move-result-object v5

    .line 27
    move-object v6, p0

    .line 28
    .line 29
    check-cast v6, Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a07f2

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    new-instance p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;

    .line 45
    move-object v2, p0

    .line 46
    move-object v3, v6

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;-><init>(Lcom/narvii/blog/post/LinkPostPreviewLayout;Lcom/narvii/amino/databinding/LinkPreviewContentBinding;Lcom/narvii/amino/databinding/LinkPreviewFailBinding;Lcom/narvii/blog/post/LinkPostPreviewLayout;Lcom/narvii/amino/databinding/LinkPreviewLoadingBinding;)V

    .line 50
    return-object p0

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    .line 61
    .line 62
    const-string v1, "Missing required view with ID: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
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

    const v0, 0x7f0d04db

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->getRoot()Lcom/narvii/blog/post/LinkPostPreviewLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/blog/post/LinkPostPreviewLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->rootView:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    return-object v0
.end method
