.class public final Lcom/narvii/amino/databinding/PostLinkLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Lcom/narvii/widget/EditTextIMG;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkPreviewLayout:Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postEmbedImageHint:Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/EditTextIMG;Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;Landroid/widget/EditText;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/EditTextIMG;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->content:Lcom/narvii/widget/EditTextIMG;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->linkPreviewLayout:Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->postEmbedImageHint:Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->title:Landroid/widget/EditText;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PostLinkLayoutBinding;
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
    const v0, 0x7f0a039d

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
    check-cast v4, Lcom/narvii/widget/EditTextIMG;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a07f1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0b3d

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0e9e

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    move-object v7, v1

    .line 47
    .line 48
    check-cast v7, Landroid/widget/EditText;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;

    .line 53
    move-object v3, p0

    .line 54
    .line 55
    check-cast v3, Landroid/widget/LinearLayout;

    .line 56
    move-object v2, v0

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/EditTextIMG;Lcom/narvii/amino/databinding/LinkPreviewLayoutBinding;Lcom/narvii/amino/databinding/PostEmbedImageHintSmallBinding;Landroid/widget/EditText;)V

    .line 60
    return-object v0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string v1, "Missing required view with ID: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/PostLinkLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/PostLinkLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/PostLinkLayoutBinding;
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

    const v0, 0x7f0d0638

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PostLinkLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/PostLinkLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
