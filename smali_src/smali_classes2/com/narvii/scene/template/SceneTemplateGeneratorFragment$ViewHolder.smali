.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

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


# instance fields
.field private final addLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final image:Lcom/narvii/widget/ThumbImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maskView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectView:Lcom/narvii/widget/PickerSelectedView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

.field private final videoLabel:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoTime:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
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
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    sget p1, Lcom/narvii/mediaeditor/R$id;->image_view:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "findViewById(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 26
    .line 27
    sget v1, Lcom/narvii/mediaeditor/R$id;->select:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/widget/PickerSelectedView;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    .line 39
    .line 40
    sget v1, Lcom/narvii/mediaeditor/R$id;->mask_view:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    .line 50
    .line 51
    sget v1, Lcom/narvii/mediaeditor/R$id;->layout_add:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    iput-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    .line 61
    .line 62
    sget v2, Lcom/narvii/mediaeditor/R$id;->media_picker_label:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    iput-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    .line 72
    .line 73
    sget v2, Lcom/narvii/mediaeditor/R$id;->media_picker_video_time:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    check-cast p2, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private final updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/widget/PickerSelectedView;->update(Z)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAddLayout()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getEntry()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    return-object v0
.end method

.method public final getImage()Lcom/narvii/widget/ThumbImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getMaskView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    return-object v0
.end method

.method public final getSelectView()Lcom/narvii/widget/PickerSelectedView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->selectView:Lcom/narvii/widget/PickerSelectedView;

    return-object v0
.end method

.method public final getVideoLabel()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    return-object v0
.end method

.method public final getVideoTime()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->image_view:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ne v1, v0, :cond_4

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 26
    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isSelected()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getSelectId()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteEntry(Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getMaxSelectedEntryCount()I

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getSortLayout()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 63
    move-result v2

    .line 64
    .line 65
    if-gt v1, v2, :cond_3

    .line 66
    .line 67
    sget p1, Lcom/narvii/mediaeditor/R$string;->reached_the_maximum_number:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 75
    return-void

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-static {v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$selectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_4
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->layout_add:I

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result p1

    .line 95
    .line 96
    if-ne p1, v0, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$pickResource(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    .line 102
    :cond_6
    :goto_2
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo p3, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    instance-of p3, p3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    const/4 p3, 0x2

    .line 16
    .line 17
    if-eq p2, p3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p3, "null cannot be cast to non-null type com.narvii.scene.template.SceneTemplateGeneratorFragment.Entry"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getAdapter()Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final setEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    return-void
.end method

.method public final updateView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V
    .locals 6
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->entry:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->isVideo()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    iget-wide v4, v4, Lcom/narvii/model/Media;->duration:J

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v4, v5}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    iget-object v1, v4, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getMedia()Lcom/narvii/model/Media;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getWebMediaExtractor()Lcom/narvii/util/WebMediaExtractor;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->image:Lcom/narvii/widget/ThumbImageView;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->addLayout:Landroid/view/View;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoTime:Landroid/widget/TextView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->videoLabel:Landroid/view/View;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateSelectStatus(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->maskView:Landroid/view/View;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->getCanSelected()Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-nez v1, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    .line 155
    move-result p1

    .line 156
    .line 157
    if-nez p1, :cond_6

    .line 158
    :cond_5
    move v2, v3

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    return-void
.end method
