.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder\n*L\n1#1,914:1\n*E\n"
.end annotation


# instance fields
.field private final addLayout:Landroid/view/View;

.field private entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

.field private final image:Lcom/narvii/widget/ThumbImageView;

.field private final maskView:Landroid/view/View;

.field private final selectView:Lcom/narvii/widget/PickerSelectedView;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

.field private final videoLabel:Landroid/view/View;

.field private final videoTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 712
    sget p1, Lcom/narvii/mediaeditor/R$id;->image_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.image_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 713
    sget p1, Lcom/narvii/mediaeditor/R$id;->select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.select)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/PickerSelectedView;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    .line 715
    sget p1, Lcom/narvii/mediaeditor/R$id;->mask_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.mask_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    .line 716
    sget p1, Lcom/narvii/mediaeditor/R$id;->layout_add:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.layout_add)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    .line 717
    sget p1, Lcom/narvii/mediaeditor/R$id;->media_picker_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.media_picker_label)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    .line 718
    sget p1, Lcom/narvii/mediaeditor/R$id;->media_picker_video_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.\u2026.media_picker_video_time)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 723
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 2

    .line 772
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/PickerSelectedView;->update(Z)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getAddLayout()Landroid/view/View;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getMaskView()Landroid/view/View;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    return-object v0
.end method

.method public final getSelectView()Lcom/narvii/widget/PickerSelectedView;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    return-object v0
.end method

.method public final getVideoLabel()Landroid/view/View;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    return-object v0
.end method

.method public final getVideoTime()Landroid/widget/TextView;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 783
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->image_view:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 784
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    if-eqz p1, :cond_6

    .line 785
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteEntry(Ljava/lang/String;)V

    goto :goto_2

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMaxSelectedEntryCount()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 789
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    sget v0, Lcom/narvii/mediaeditor/R$string;->reached_the_maximum_number:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    return-void

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 794
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    goto :goto_2

    .line 801
    :cond_4
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->layout_add:I

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 802
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$pickResource(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    if-eqz p3, :cond_2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 760
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 761
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 760
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.scene.template.SceneTemplateGeneratorFragment.Entry"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x4

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    return-void
.end method

.method public final updateView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 6

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 729
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lcom/narvii/model/Media;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 739
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getWebMediaExtractor()Lcom/narvii/util/WebMediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    goto :goto_2

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 754
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getCanSelected()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/16 v2, 0x8

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
