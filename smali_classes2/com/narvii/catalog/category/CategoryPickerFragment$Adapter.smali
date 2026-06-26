.class public Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "CategoryPickerFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/category/CategoryPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field errorMsg:Ljava/lang/String;

.field final indent:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryListResponse;",
            ">;"
        }
    .end annotation
.end field

.field response:Lcom/narvii/model/api/CategoryListResponse;

.field final synthetic this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

.field final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/category/CategoryPickerFragment;)V
    .locals 2

    .line 173
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 174
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 212
    new-instance v0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter$1;

    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter$1;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    const-string/jumbo v0, "uid"

    .line 175
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->indent:I

    return-void
.end method

.method private append(Ljava/util/ArrayList;Lcom/narvii/model/api/CategoryListResponse;Lcom/narvii/model/ItemCategory;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;",
            ">;",
            "Lcom/narvii/model/api/CategoryListResponse;",
            "Lcom/narvii/model/ItemCategory;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/model/api/CategoryListResponse;->isLeafCategory(Ljava/lang/String;)Z

    move-result v0

    .line 253
    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 254
    new-instance v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;-><init>()V

    .line 255
    iput-object p3, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 256
    iput p4, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    .line 257
    iput-boolean v0, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    .line 258
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-boolean v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz v1, :cond_2

    .line 262
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 264
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 269
    iput-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    .line 270
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 271
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 274
    :cond_3
    :goto_0
    iget-object p3, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ItemCategory;

    add-int/lit8 v1, p4, 0x1

    .line 275
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->append(Ljava/util/ArrayList;Lcom/narvii/model/api/CategoryListResponse;Lcom/narvii/model/ItemCategory;I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 292
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 349
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f0b0076

    .line 351
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 353
    :cond_0
    iget-object v0, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object v1, v1, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0b0077

    .line 354
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b03

    .line 355
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->indent:I

    iget v3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    add-int/lit8 v3, v3, -0x1

    mul-int v2, v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    const p3, 0x7f090619

    .line 357
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-boolean p3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    const v1, 0x7f090562

    const/4 v2, 0x0

    const/4 v3, 0x4

    const v4, 0x7f090907

    if-eqz p3, :cond_4

    .line 360
    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-boolean v5, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz v5, :cond_1

    .line 361
    iget-object p3, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-static {p3, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p3

    goto :goto_0

    .line 363
    :cond_1
    iget-object v5, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iget-object p3, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    invoke-static {v5, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 365
    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f080219

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v5, 0x7f080459

    :goto_2
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 369
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const p3, 0x7f09005f

    .line 372
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget v4, v3, Lcom/narvii/model/ItemCategory;->subcategoriesCount:I

    if-gtz v4, :cond_6

    iget v3, v3, Lcom/narvii/model/ItemCategory;->itemsCount:I

    if-nez v3, :cond_5

    iget p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    const/4 v3, 0x3

    if-ge p1, v3, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :cond_6
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_7

    .line 375
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->bg:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 313
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 317
    :cond_0
    iget-boolean v1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    if-eqz v1, :cond_1

    .line 318
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object v1, v1, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 182
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    :goto_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->errorMsg:Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    .line 332
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 383
    instance-of v0, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p5, :cond_0

    .line 384
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f09005f

    if-ne p1, p2, :cond_0

    .line 385
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    goto :goto_1

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-boolean p2, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz p2, :cond_1

    .line 388
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 389
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_1
    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    iget-object p3, p2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    iput-object p3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 393
    iput-object p2, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    .line 395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 396
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1
    return v1

    :cond_3
    if-nez p3, :cond_4

    .line 401
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    return v1

    .line 404
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 409
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "response"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/api/CategoryListResponse;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/CategoryListResponse;

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 191
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 343
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    .line 344
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method sendRequest()V
    .locals 4

    const-string v0, "api"

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 204
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/item-category"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "user"

    .line 206
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 207
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    const-string v3, "q"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 209
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 226
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 228
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-boolean v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    if-eqz v1, :cond_1

    .line 229
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    const-string v1, "categoryIdList"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    iget-object v2, p1, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ItemCategory;

    if-eqz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    iget-object v2, v2, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->append(Ljava/util/ArrayList;Lcom/narvii/model/api/CategoryListResponse;Lcom/narvii/model/ItemCategory;I)V

    .line 245
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 246
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
