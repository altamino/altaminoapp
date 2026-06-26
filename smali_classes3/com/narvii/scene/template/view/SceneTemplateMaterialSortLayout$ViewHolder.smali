.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SceneTemplateMaterialSortLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateMaterialSortLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateMaterialSortLayout.kt\ncom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder\n*L\n1#1,280:1\n*E\n"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 188
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    .line 189
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    .line 190
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->image_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    .line 191
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 192
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->mask:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    .line 193
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SmoothProgressBar;

    const/16 p2, 0x64

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 p2, 0x32

    .line 195
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setDuration(I)V

    .line 193
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    .line 197
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getDelete()Landroid/widget/ImageView;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getImageEdit()Landroid/widget/FrameLayout;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getMask()Landroid/view/View;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    return-object v0
.end method

.method public final getProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getRetry()Landroid/widget/ImageView;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final update(ILcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->isEmpty()Z

    move-result v0

    const-string v1, "container"

    if-eqz v0, :cond_0

    .line 200
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$1;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$2;->INSTANCE:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$2;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$3;

    invoke-direct {v1, p0, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$3;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;

    invoke-direct {v1, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;

    invoke-direct {v0, p0, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :goto_1
    return-void
.end method

.method public final updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "imageEdit"

    const-string v3, "retry"

    const-string v4, "mask"

    const-string v5, "progress"

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->mask:Landroid/view/View;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->retry:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->imageEdit:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->progress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
