.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final container:Landroid/widget/FrameLayout;

.field private final delete:Landroid/widget/ImageView;

.field private final image:Lcom/narvii/widget/NVImageView;

.field private final imageEdit:Landroid/widget/FrameLayout;

.field private final mask:Landroid/view/View;

.field private final progress:Lcom/narvii/widget/SmoothProgressBar;

.field private final retry:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    sget p2, Lcom/narvii/mediaeditor/R$id;->image:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    sget p2, Lcom/narvii/mediaeditor/R$id;->container:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    sget p2, Lcom/narvii/mediaeditor/R$id;->image_edit:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    sget p2, Lcom/narvii/mediaeditor/R$id;->delete:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 62
    .line 63
    sget p2, Lcom/narvii/mediaeditor/R$id;->mask:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    .line 73
    sget p2, Lcom/narvii/mediaeditor/R$id;->progress:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/widget/SmoothProgressBar;

    .line 80
    .line 81
    const/16 p2, 0x64

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 85
    .line 86
    const/16 p2, 0x32

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setDuration(I)V

    .line 90
    .line 91
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 94
    .line 95
    sget p2, Lcom/narvii/mediaeditor/R$id;->retry:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    check-cast p1, Landroid/widget/ImageView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    .line 104
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$1(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$3(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$4(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$5(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update$lambda$6(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Landroid/view/View;)V

    return-void
.end method

.method private static final update$lambda$1(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;->onBackgroundItemClick()V

    .line 16
    :cond_0
    return-void
.end method

.method private static final update$lambda$2(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static final update$lambda$3(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$data"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p2, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x4

    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;->onItemClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 28
    :cond_0
    return-void
.end method

.method private static final update$lambda$4(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo p2, "this$1"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getItemTouchHelper$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private static final update$lambda$5(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$deleteItem(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V

    .line 10
    return-void
.end method

.method private static final update$lambda$6(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string p2, "$data"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;->onRetryClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final getContainer()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getDelete()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/NVImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getImageEdit()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getMask()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    return-object v0
.end method

.method public final getProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getRetry()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final update(ILcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 3
    .param p2    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "data"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 14
    const/4 p2, 0x4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/scene/template/view/b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p2}, Lcom/narvii/scene/template/view/b;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/scene/template/view/c;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2}, Lcom/narvii/scene/template/view/c;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/scene/template/view/d;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p2, v1}, Lcom/narvii/scene/template/view/d;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 83
    .line 84
    new-instance v2, Lcom/narvii/scene/template/view/e;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v1, p0}, Lcom/narvii/scene/template/view/e;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/scene/template/view/f;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v1, p1}, Lcom/narvii/scene/template/view/f;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/scene/template/view/g;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v0, p2}, Lcom/narvii/scene/template/view/g;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 118
    :goto_1
    return-void
.end method

.method public final updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 4
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "data"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    const/4 p1, 0x3

    .line 17
    .line 18
    if-eq v0, p1, :cond_1

    .line 19
    const/4 p1, 0x4

    .line 20
    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getProgress()I

    .line 90
    move-result p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 94
    :goto_0
    return-void
.end method
