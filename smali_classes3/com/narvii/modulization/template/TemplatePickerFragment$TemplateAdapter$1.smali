.class Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;
.super Ljava/lang/Object;
.source "TemplatePickerFragment.java"

# interfaces
.implements Lcom/narvii/transition/TransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastProgress:F

.field final synthetic this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$startWindowY:I


# direct methods
.method constructor <init>(Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;ILandroid/view/View;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iput p2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$startWindowY:I

    iput-object p3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$cell:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionProgress(IIF)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 262
    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v4, v4, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v4, v4, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 263
    iget-object v5, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    invoke-virtual {v5}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    iget-object v5, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v5, v5, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v5, v5, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 266
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getLocationInWindow([I)V

    .line 267
    iget v5, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$startWindowY:I

    aget v0, v4, v0

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v4, v4, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-virtual {v4}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    sub-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 268
    iget v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->lastProgress:F

    sub-float v4, p3, v4

    int-to-float v0, v0

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    cmpl-float v0, p3, v3

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v0, v0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v0, v0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    invoke-virtual {v1}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_1
    iput p3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->lastProgress:F

    .line 278
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, -0x5a

    goto :goto_1

    :cond_3
    const/16 v0, 0x5a

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$cell:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->chevron:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-le p2, p1, :cond_4

    int-to-float p1, v0

    mul-float p3, p3, p1

    goto :goto_2

    :cond_4
    int-to-float p1, v0

    sub-float/2addr v3, p3

    mul-float p3, p1, v3

    :goto_2
    invoke-virtual {v1, p3}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
