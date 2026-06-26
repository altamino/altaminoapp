.class public Lcom/narvii/catalog/CategoryListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CategoryListAdapter.java"


# static fields
.field static final EMPTY_GOLD:Lcom/narvii/model/Item;

.field static final TYPE_CATEGORY:I = 0x2

.field static final TYPE_LEAF:I = 0x3

.field static final TYPE_NONE:I = 0x0

.field static final TYPE_UNKNOWN:I = 0x1


# instance fields
.field public allEntryCategory:Lcom/narvii/model/ItemCategory;

.field final categoryId:Ljava/lang/String;

.field categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation
.end field

.field categoryRequest:Lcom/narvii/util/http/ApiRequest;

.field errorMsg:Ljava/lang/String;

.field filterHelper:Lcom/narvii/util/FilterHelper;

.field final itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

.field final previewListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryPreviewResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final previewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field final previewState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final rootCategoryListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryListResponse;",
            ">;"
        }
    .end annotation
.end field

.field rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

.field final subCategoryListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/catalog/SubCategoryResponse;",
            ">;"
        }
    .end annotation
.end field

.field subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

.field final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/narvii/model/Item;

    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    sput-object v0, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    .line 49
    sget-object v0, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    const-string v1, ""

    iput-object v1, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 51
    sget-object v0, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/16 v1, 0xfe

    iput v1, v0, Lcom/narvii/model/User;->role:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$1;

    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$1;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 152
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$2;

    const-class v1, Lcom/narvii/catalog/SubCategoryResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$2;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 314
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$3;

    const-class v1, Lcom/narvii/model/api/CategoryPreviewResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$3;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 67
    iput-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 70
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    return-void
.end method

.method static buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 4

    .line 230
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 232
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 235
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p1, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-eqz p2, :cond_1

    .line 238
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600eb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p0, v2, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryResponse;->itemCategory:Lcom/narvii/model/ItemCategory;

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getRootCategory()Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/catalog/SubCategoryResponse;->type()Ljava/lang/String;

    move-result-object v0

    const-string v3, "itemCategory"

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const-string v1, "item"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->itemList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_5
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 249
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->uRole()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xfe

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7f0b0075

    .line 251
    invoke-virtual {p0, v4, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090619

    .line 253
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/narvii/model/ItemCategory;->itemsCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    iget-object v4, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    iget-object v5, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 256
    invoke-virtual {v4, v5}, Lcom/narvii/catalog/SubCategoryResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 257
    invoke-virtual {v4, v5}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 258
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/ItemCategory;

    .line 259
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, " | "

    .line 260
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_2
    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const v4, 0x7f090b5b

    .line 264
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 269
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->keepForLeaderAndCurator()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    new-instance v4, Lcom/narvii/util/FilterHelper;

    invoke-direct {v4, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v4}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    goto :goto_3

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/narvii/catalog/CategoryListAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {v4, p3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    :goto_3
    if-eqz v1, :cond_5

    .line 274
    sget-object v1, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-nez p3, :cond_6

    .line 275
    iget v4, v0, Lcom/narvii/model/ItemCategory;->itemsCount:I

    goto :goto_5

    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    :goto_5
    const v5, 0x7f0905d8

    .line 276
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/CardView;

    const v6, 0x7f0905d9

    .line 277
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/CardView;

    const v7, 0x7f0905da

    .line 278
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/CardView;

    const/4 v8, 0x4

    if-lez v4, :cond_7

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    const/4 v9, 0x4

    .line 279
    :goto_6
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-le v4, v2, :cond_8

    const/4 v9, 0x0

    goto :goto_7

    :cond_8
    const/4 v9, 0x4

    .line 280
    :goto_7
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v9, 0x2

    if-le v4, v9, :cond_9

    const/4 v8, 0x0

    .line 281
    :cond_9
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p3, :cond_a

    .line 282
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    goto :goto_8

    :cond_a
    move-object v3, v1

    :goto_8
    invoke-virtual {v5, v3}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-eqz p3, :cond_b

    .line 283
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_b

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    goto :goto_9

    :cond_b
    move-object v2, v1

    :goto_9
    invoke-virtual {v6, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-eqz p3, :cond_c

    .line 284
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v9, :cond_c

    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Item;

    :cond_c
    invoke-virtual {v7, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 286
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    .line 287
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p3, v0, :cond_12

    .line 288
    sget-boolean p3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p3, :cond_d

    goto :goto_a

    :cond_d
    const/4 v9, 0x5

    .line 289
    :goto_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 291
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 292
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_e

    .line 293
    iget-object v1, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_e
    rem-int v0, p1, v9

    sub-int/2addr p1, v0

    add-int/2addr v9, p1

    :goto_b
    if-ge p1, v9, :cond_11

    .line 298
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 299
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_f

    goto :goto_c

    .line 302
    :cond_f
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_10

    const/16 v1, 0x2c

    .line 303
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 307
    :cond_11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/item-category/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/item-previews"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p3, "api"

    .line 308
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 309
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p3, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_12
    return-object p2
.end method

.method public isEmpty()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 102
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    if-nez v0, :cond_2

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    :cond_2
    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    return-void
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

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 213
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    .line 214
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 215
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 216
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method sendCategoryRequest()V
    .locals 4

    const-string v0, "api"

    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 109
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 114
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/item-category"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "user"

    .line 116
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    const-string v3, "q"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 120
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/item-category/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 124
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    invoke-virtual {v2}, Lcom/narvii/catalog/CatalogItemAdapter;->pageSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 126
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method setResponse(Lcom/narvii/catalog/SubCategoryResponse;)V
    .locals 3

    .line 166
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lcom/narvii/catalog/SubCategoryResponse;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 171
    invoke-virtual {p1}, Lcom/narvii/catalog/SubCategoryResponse;->getItemListResponse()Lcom/narvii/model/api/ItemListResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/catalog/CatalogItemAdapter;->responseFirstPage(Lcom/narvii/model/api/ItemListResponse;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/catalog/SubCategoryResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 175
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 147
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 148
    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    .line 149
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 180
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
