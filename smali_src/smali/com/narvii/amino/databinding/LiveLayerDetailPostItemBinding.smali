.class public final Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final feedToolbar:Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/SecretImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveLayerAdditionalLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/SecretImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->rootView:Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->feedToolbar:Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->image:Lcom/narvii/widget/SecretImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->liveLayerAdditionalLayout:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->title:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;
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
    const v0, 0x7f0a0588

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a06eb

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    move-object v5, v1

    .line 22
    .line 23
    check-cast v5, Lcom/narvii/widget/SecretImageView;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a080a

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    move-object v6, v1

    .line 34
    .line 35
    check-cast v6, Landroid/widget/FrameLayout;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0e9e

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    move-object v7, v1

    .line 46
    .line 47
    check-cast v7, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;

    .line 52
    move-object v3, p0

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;

    .line 55
    move-object v2, v0

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;Lcom/narvii/amino/databinding/LiveLayerFeedToolbarBinding;Lcom/narvii/widget/SecretImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    .line 59
    return-object v0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string v1, "Missing required view with ID: "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;
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

    const v0, 0x7f0d04fd

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->getRoot()Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/LiveLayerDetailPostItemBinding;->rootView:Lcom/narvii/livelayer/detailview/LiveLayerDetailListItemView;

    return-object v0
.end method
