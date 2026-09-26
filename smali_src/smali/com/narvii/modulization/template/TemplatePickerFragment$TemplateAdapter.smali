.class Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/modulization/template/TemplatePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemplateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/modulization/template/AminoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/modulization/template/AminoTemplate;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/template/AminoTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 6
    return-void
.end method

.method private setUpCollapseLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/narvii/modulization/template/AminoTemplate;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->title:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    sget v0, Lcom/narvii/lib/R$id;->subTitle:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/modulization/template/AminoTemplate;->subtitle:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method private setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/narvii/modulization/template/AminoTemplate;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->title:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    sget v0, Lcom/narvii/lib/R$id;->subTitle:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->subtitle:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    sget v0, Lcom/narvii/lib/R$id;->desc:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->description:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    sget v0, Lcom/narvii/lib/R$id;->features_layout:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    .line 71
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->features:Ljava/util/ArrayList;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    sget v4, Lcom/narvii/lib/R$layout;->amino_template_feature_ul:I

    .line 100
    const/4 v5, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    check-cast v3, Lcom/narvii/widget/ULTextview;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->create_text:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 127
    .line 128
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->create_push_button:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    iget p1, p1, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .line 143
    iget-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/modulization/template/AminoTemplate;

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$layout;->amino_template_picker_item:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/narvii/modulization/template/AminoTemplate;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    sget v0, Lcom/narvii/lib/R$id;->container:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    sget p3, Lcom/narvii/lib/R$id;->gradient:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    check-cast p3, Lcom/narvii/widget/GradientView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    sget v2, Lcom/narvii/lib/R$dimen;->template_picker_radius:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 54
    const/4 v1, -0x1

    .line 55
    .line 56
    const/high16 v2, 0x3e800000    # 0.25f

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 60
    move-result v1

    .line 61
    .line 62
    const/high16 v2, -0x1000000

    .line 63
    .line 64
    .line 65
    const v3, 0x3e4ccccd    # 0.2f

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v1, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 73
    .line 74
    sget p3, Lcom/narvii/lib/R$id;->collapse:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    .line 83
    .line 84
    iget v2, p1, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Ljava/lang/Boolean;

    .line 91
    .line 92
    sget v2, Lcom/narvii/lib/R$id;->expand:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    const/16 v3, 0x8

    .line 99
    const/4 v4, 0x0

    .line 100
    .line 101
    if-nez v1, :cond_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_0
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpCollapseLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1, v2}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    check-cast p1, Lcom/narvii/transition/TransitionLayout;

    .line 127
    const/4 p3, 0x0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p3}, Lcom/narvii/transition/TransitionLayout;->setTransitionManager(Lcom/narvii/transition/TransitionManager;)V

    .line 131
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/modulization/template/AminoTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/modulization/template/AminoTemplate;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget v2, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$id;->collapse:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget v3, Lcom/narvii/lib/R$id;->expand:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v3}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 35
    .line 36
    sget v4, Lcom/narvii/lib/R$id;->container:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    check-cast v4, Lcom/narvii/transition/TransitionLayout;

    .line 43
    .line 44
    new-instance v5, Lcom/narvii/transition/TransitionManager;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5}, Lcom/narvii/transition/TransitionManager;-><init>()V

    .line 48
    .line 49
    iget-object v6, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v6}, Lcom/narvii/modulization/template/TemplatePickerFragment;->t(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Lcom/narvii/transition/TransitionManager;->setMatchParentIds(Ljava/util/List;)V

    .line 57
    .line 58
    iget-object v6, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Lcom/narvii/modulization/template/TemplatePickerFragment;->u(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lcom/narvii/transition/TransitionManager;->setTransitionTargetIds(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Lcom/narvii/transition/TransitionLayout;->setTransitionManager(Lcom/narvii/transition/TransitionManager;)V

    .line 69
    const/4 v5, 0x2

    .line 70
    .line 71
    new-array v5, v5, [I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 75
    const/4 v6, 0x1

    .line 76
    .line 77
    aget v5, v5, v6

    .line 78
    .line 79
    new-instance v6, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {v6, p0, v5, p4}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;ILandroid/view/View;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6}, Lcom/narvii/transition/TransitionLayout;->setTransitionListener(Lcom/narvii/transition/TransitionLayout$TransitionListener;)V

    .line 86
    const/4 v5, 0x0

    .line 87
    .line 88
    const/16 v6, 0x8

    .line 89
    .line 90
    if-nez v1, :cond_0

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    .line 95
    .line 96
    iget v0, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    .line 97
    .line 98
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, p4, v2, v3}, Lcom/narvii/transition/TransitionLayout;->transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_0
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    .line 116
    .line 117
    iget v0, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, p4, v3, v2}, Lcom/narvii/transition/TransitionLayout;->transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 133
    move-result p1

    .line 134
    return p1
.end method
