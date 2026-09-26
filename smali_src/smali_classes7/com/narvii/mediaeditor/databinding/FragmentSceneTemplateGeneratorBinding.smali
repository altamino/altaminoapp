.class public final Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final wmeFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/app/theme/view/NVThemeLinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/app/theme/view/NVThemeLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->sortLayout:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->wmeFrame:Landroid/widget/FrameLayout;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->recycler_view:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/narvii/mediaeditor/R$id;->sort_layout:I

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget v0, Lcom/narvii/mediaeditor/R$id;->wme_frame:I

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;

    .line 33
    .line 34
    check-cast p0, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;-><init>(Lcom/narvii/app/theme/view/NVThemeLinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/widget/FrameLayout;)V

    .line 38
    return-object v0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    .line 49
    .line 50
    const-string v1, "Missing required view with ID: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;
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

    sget v0, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_template_generator:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->bind(Landroid/view/View;)Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->getRoot()Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/mediaeditor/databinding/FragmentSceneTemplateGeneratorBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    return-object v0
.end method
