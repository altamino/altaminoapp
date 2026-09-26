.class public final Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final delete:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageEdit:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mask:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SmoothProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retry:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/narvii/widget/SmoothProgressBar;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/SmoothProgressBar;
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
    iput-object p1, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->container:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->delete:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->image:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->imageContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->imageEdit:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->mask:Landroid/view/View;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->retry:Landroid/widget/ImageView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->container:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/mediaeditor/R$id;->delete:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    .line 20
    check-cast v5, Landroid/widget/ImageView;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/narvii/mediaeditor/R$id;->image:I

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
    check-cast v6, Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    sget v0, Lcom/narvii/mediaeditor/R$id;->image_container:I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    move-object v7, v1

    .line 41
    .line 42
    check-cast v7, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    sget v0, Lcom/narvii/mediaeditor/R$id;->image_edit:I

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    .line 53
    check-cast v8, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    sget v0, Lcom/narvii/mediaeditor/R$id;->mask:I

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 61
    move-result-object v9

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    sget v0, Lcom/narvii/mediaeditor/R$id;->progress:I

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 70
    move-object v10, v1

    .line 71
    .line 72
    check-cast v10, Lcom/narvii/widget/SmoothProgressBar;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    sget v0, Lcom/narvii/mediaeditor/R$id;->retry:I

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 81
    move-object v11, v1

    .line 82
    .line 83
    check-cast v11, Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v11, :cond_0

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;

    .line 88
    move-object v3, p0

    .line 89
    .line 90
    check-cast v3, Landroid/widget/FrameLayout;

    .line 91
    move-object v2, v0

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v2 .. v11}, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/narvii/widget/SmoothProgressBar;Landroid/widget/ImageView;)V

    .line 95
    return-object v0

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    const-string v1, "Missing required view with ID: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;
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

    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_template_materail_sort_media:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/ItemTemplateMaterailSortMediaBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
