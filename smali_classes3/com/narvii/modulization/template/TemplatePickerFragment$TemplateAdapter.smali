.class Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "TemplatePickerFragment.java"


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

    .line 143
    iput-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 144
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method private setUpCollapseLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V
    .locals 2

    .line 183
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/modulization/template/AminoTemplate;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget v0, Lcom/narvii/lib/R$id;->subTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 191
    iget-object p1, p1, Lcom/narvii/modulization/template/AminoTemplate;->subtitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V
    .locals 6

    .line 195
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/modulization/template/AminoTemplate;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    sget v0, Lcom/narvii/lib/R$id;->subTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    sget v0, Lcom/narvii/lib/R$id;->desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    sget v0, Lcom/narvii/lib/R$id;->features_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 209
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 211
    iget-object v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->features:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$layout;->amino_template_feature_ul:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/ULTextview;

    .line 214
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 219
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->create_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 221
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 224
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->create_push_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 225
    iget p1, p1, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/modulization/template/AminoTemplate;

    .line 150
    sget v0, Lcom/narvii/lib/R$layout;->amino_template_picker_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 151
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/narvii/modulization/template/AminoTemplate;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 152
    sget v0, Lcom/narvii/lib/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    sget p3, Lcom/narvii/lib/R$id;->gradient:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/GradientView;

    .line 155
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->template_picker_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 156
    invoke-virtual {p3, v0}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    const/4 v0, -0x1

    const/high16 v1, 0x3e800000    # 0.25f

    .line 157
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    const/high16 v1, -0x1000000

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 158
    sget p3, Lcom/narvii/lib/R$id;->collapse:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 160
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v0, v0, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 161
    sget v1, Lcom/narvii/lib/R$id;->expand:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpCollapseLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 174
    invoke-direct {p0, p1, v1}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 176
    sget p1, Lcom/narvii/lib/R$id;->container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/transition/TransitionLayout;

    const/4 p3, 0x0

    .line 177
    invoke-virtual {p1, p3}, Lcom/narvii/transition/TransitionLayout;->setTransitionManager(Lcom/narvii/transition/TransitionManager;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 232
    instance-of v0, p3, Lcom/narvii/modulization/template/AminoTemplate;

    if-eqz v0, :cond_1

    .line 233
    move-object v0, p3

    check-cast v0, Lcom/narvii/modulization/template/AminoTemplate;

    .line 234
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    iget v2, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 236
    sget v2, Lcom/narvii/lib/R$id;->collapse:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    sget v3, Lcom/narvii/lib/R$id;->expand:I

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 240
    invoke-direct {p0, v0, v3}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->setUpExpandLayout(Lcom/narvii/modulization/template/AminoTemplate;Landroid/view/View;)V

    .line 242
    sget v4, Lcom/narvii/lib/R$id;->container:I

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/transition/TransitionLayout;

    .line 243
    new-instance v5, Lcom/narvii/transition/TransitionManager;

    invoke-direct {v5}, Lcom/narvii/transition/TransitionManager;-><init>()V

    .line 244
    iget-object v6, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-static {v6}, Lcom/narvii/modulization/template/TemplatePickerFragment;->access$000(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/transition/TransitionManager;->setMatchParentIds(Ljava/util/List;)V

    .line 245
    iget-object v6, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-static {v6}, Lcom/narvii/modulization/template/TemplatePickerFragment;->access$100(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/transition/TransitionManager;->setTransitionTargetIds(Ljava/util/List;)V

    .line 246
    invoke-virtual {v4, v5}, Lcom/narvii/transition/TransitionLayout;->setTransitionManager(Lcom/narvii/transition/TransitionManager;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 249
    invoke-virtual {p4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v6, 0x1

    .line 250
    aget v5, v5, v6

    .line 252
    new-instance v7, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;

    invoke-direct {v7, p0, v5, p4}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;ILandroid/view/View;)V

    invoke-virtual {v4, v7}, Lcom/narvii/transition/TransitionLayout;->setTransitionListener(Lcom/narvii/transition/TransitionLayout$TransitionListener;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    iget v0, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {v4, p4, v2, v3}, Lcom/narvii/transition/TransitionLayout;->transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    iget v0, v0, Lcom/narvii/modulization/template/AminoTemplate;->id:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 289
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v4, p4, v3, v2}, Lcom/narvii/transition/TransitionLayout;->transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 295
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
