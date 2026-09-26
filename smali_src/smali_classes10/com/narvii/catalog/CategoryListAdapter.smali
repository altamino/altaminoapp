.class public Lcom/narvii/catalog/CategoryListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Item;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 19
    .line 20
    const/16 v0, 0xfe

    .line 21
    .line 22
    iput v0, v1, Lcom/narvii/model/User;->role:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$1;

    .line 20
    .line 21
    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$1;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$2;

    .line 29
    .line 30
    const-class v1, Lcom/narvii/catalog/SubCategoryResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$2;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/catalog/CategoryListAdapter$3;

    .line 38
    .line 39
    const-class v1, Lcom/narvii/model/api/CategoryPreviewResponse;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/CategoryListAdapter$3;-><init>(Lcom/narvii/catalog/CategoryListAdapter;Ljava/lang/Class;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 51
    .line 52
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 56
    .line 57
    iput-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 58
    return-void
.end method

.method static buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 9
    move-result p0

    .line 10
    .line 11
    new-instance v1, Landroid/text/style/StyleSpan;

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, " ("

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, ")"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    .line 49
    .line 50
    const/high16 v1, 0x3f400000    # 0.75f

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 61
    .line 62
    :cond_0
    if-eqz p2, :cond_1

    .line 63
    .line 64
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    const p2, 0x7f060131

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 86
    move-result p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0, v2, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    :cond_1
    return-object v0
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryResponse;->itemCategory:Lcom/narvii/model/ItemCategory;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    :goto_0
    return v2
.end method

.method public getItem(I)Lcom/narvii/model/ItemCategory;
    .locals 1

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getRootCategory()Lcom/narvii/model/ItemCategory;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/catalog/SubCategoryResponse;->type()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v3, "itemCategory"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    return v1

    .line 26
    .line 27
    :cond_2
    const-string v1, "item"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryResponse;->childrenWrapper:Lcom/narvii/catalog/SubCategoryChildWrapper;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/catalog/SubCategoryChildWrapper;->itemList:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 v0, 0x3

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0

    .line 53
    :cond_5
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->uRole()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const/16 v2, 0xfe

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    move v1, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    .line 19
    .line 20
    :goto_0
    const v2, 0x7f0d008b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0a0799

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v6, ""

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget v6, v0, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v5, v1}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 69
    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    .line 73
    .line 74
    iget-object v5, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v5}, Lcom/narvii/catalog/SubCategoryResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    .line 78
    move-result-object v2

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    iget-object v5, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v5}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    check-cast v5, Lcom/narvii/model/ItemCategory;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 105
    move-result v6

    .line 106
    .line 107
    if-lez v6, :cond_2

    .line 108
    .line 109
    const-string v6, " | "

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    :cond_2
    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    goto :goto_2

    .line 119
    .line 120
    .line 121
    :cond_3
    const v2, 0x7f0a0e51

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    check-cast v2, Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 137
    .line 138
    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object p3

    .line 143
    .line 144
    check-cast p3, Ljava/util/List;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->keepForLeaderAndCurator()Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    new-instance v2, Lcom/narvii/util/FilterHelper;

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 163
    move-result-object p3

    .line 164
    goto :goto_3

    .line 165
    .line 166
    :cond_4
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 170
    move-result-object p3

    .line 171
    .line 172
    :goto_3
    if-eqz v1, :cond_5

    .line 173
    .line 174
    sget-object v1, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const/4 v1, 0x0

    .line 177
    .line 178
    :goto_4
    if-nez p3, :cond_6

    .line 179
    .line 180
    iget v2, v0, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 181
    goto :goto_5

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 185
    move-result v2

    .line 186
    .line 187
    .line 188
    :goto_5
    const v5, 0x7f0a0757

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    move-result-object v5

    .line 193
    .line 194
    check-cast v5, Lcom/narvii/widget/CardView;

    .line 195
    .line 196
    .line 197
    const v6, 0x7f0a0758

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v6

    .line 202
    .line 203
    check-cast v6, Lcom/narvii/widget/CardView;

    .line 204
    .line 205
    .line 206
    const v7, 0x7f0a0759

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    move-result-object v7

    .line 211
    .line 212
    check-cast v7, Lcom/narvii/widget/CardView;

    .line 213
    const/4 v8, 0x4

    .line 214
    .line 215
    if-lez v2, :cond_7

    .line 216
    move v9, v3

    .line 217
    goto :goto_6

    .line 218
    :cond_7
    move v9, v8

    .line 219
    .line 220
    .line 221
    :goto_6
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    if-le v2, v4, :cond_8

    .line 224
    move v9, v3

    .line 225
    goto :goto_7

    .line 226
    :cond_8
    move v9, v8

    .line 227
    .line 228
    .line 229
    :goto_7
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const/4 v9, 0x2

    .line 231
    .line 232
    if-le v2, v9, :cond_9

    .line 233
    move v8, v3

    .line 234
    .line 235
    .line 236
    :cond_9
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    if-eqz p3, :cond_a

    .line 239
    .line 240
    .line 241
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 242
    move-result v2

    .line 243
    .line 244
    if-lez v2, :cond_a

    .line 245
    .line 246
    .line 247
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v2

    .line 249
    .line 250
    check-cast v2, Lcom/narvii/model/Item;

    .line 251
    goto :goto_8

    .line 252
    :cond_a
    move-object v2, v1

    .line 253
    .line 254
    .line 255
    :goto_8
    invoke-virtual {v5, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 256
    .line 257
    if-eqz p3, :cond_b

    .line 258
    .line 259
    .line 260
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 261
    move-result v2

    .line 262
    .line 263
    if-le v2, v4, :cond_b

    .line 264
    .line 265
    .line 266
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    check-cast v2, Lcom/narvii/model/Item;

    .line 270
    goto :goto_9

    .line 271
    :cond_b
    move-object v2, v1

    .line 272
    .line 273
    .line 274
    :goto_9
    invoke-virtual {v6, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 275
    .line 276
    if-eqz p3, :cond_c

    .line 277
    .line 278
    .line 279
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 280
    move-result v2

    .line 281
    .line 282
    if-le v2, v9, :cond_c

    .line 283
    .line 284
    .line 285
    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object p3

    .line 287
    move-object v1, p3

    .line 288
    .line 289
    check-cast v1, Lcom/narvii/model/Item;

    .line 290
    .line 291
    .line 292
    :cond_c
    invoke-virtual {v7, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 293
    .line 294
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 295
    .line 296
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-result-object p3

    .line 301
    .line 302
    check-cast p3, Ljava/lang/Boolean;

    .line 303
    .line 304
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 305
    .line 306
    if-eq p3, v0, :cond_12

    .line 307
    .line 308
    sget-boolean p3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 309
    .line 310
    if-eqz p3, :cond_d

    .line 311
    goto :goto_a

    .line 312
    :cond_d
    const/4 v9, 0x5

    .line 313
    .line 314
    :goto_a
    new-instance p3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 320
    .line 321
    if-nez v1, :cond_e

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    if-eqz v1, :cond_e

    .line 328
    .line 329
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 330
    .line 331
    iget-object v3, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    move-result-object v2

    .line 336
    .line 337
    if-eq v2, v0, :cond_e

    .line 338
    .line 339
    iget-object v2, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 345
    .line 346
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    :cond_e
    rem-int v0, p1, v9

    .line 352
    sub-int/2addr p1, v0

    .line 353
    add-int/2addr v9, p1

    .line 354
    .line 355
    :goto_b
    if-ge p1, v9, :cond_11

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getCount()I

    .line 359
    move-result v0

    .line 360
    .line 361
    if-ge p1, v0, :cond_11

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->getItem(I)Lcom/narvii/model/ItemCategory;

    .line 365
    move-result-object v0

    .line 366
    .line 367
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-result-object v1

    .line 374
    .line 375
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 376
    .line 377
    if-ne v1, v2, :cond_f

    .line 378
    goto :goto_c

    .line 379
    .line 380
    .line 381
    :cond_f
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 382
    move-result v1

    .line 383
    .line 384
    if-lez v1, :cond_10

    .line 385
    .line 386
    const/16 v1, 0x2c

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    :cond_10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    :goto_c
    add-int/lit8 p1, p1, 0x1

    .line 400
    goto :goto_b

    .line 401
    .line 402
    .line 403
    :cond_11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 404
    move-result-object p1

    .line 405
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    const-string v1, "/item-category/"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string p3, "/item-previews"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object p3

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 430
    move-result-object p1

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 434
    move-result-object p1

    .line 435
    .line 436
    const-string p3, "api"

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    move-result-object p3

    .line 441
    .line 442
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 443
    .line 444
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 448
    :cond_12
    return-object p2
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :cond_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    .line 21
    :cond_2
    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    iput-boolean p2, p1, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewState:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 26
    return-void
.end method

.method sendCategoryRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "/item-category"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const-string v2, "type"

    .line 39
    .line 40
    const-string v3, "user"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    const-string v2, "q"

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v3, "/item-category/"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x0

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    const-string v3, "start"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/narvii/catalog/CatalogItemAdapter;->pageSize()I

    .line 105
    move-result v2

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    const-string v3, "size"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    iput-object v1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 126
    :goto_0
    return-void
.end method

.method setResponse(Lcom/narvii/catalog/SubCategoryResponse;)V
    .locals 3

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->subCategoryResponse:Lcom/narvii/catalog/SubCategoryResponse;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/catalog/SubCategoryResponse;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 7
    invoke-virtual {p1}, Lcom/narvii/catalog/SubCategoryResponse;->getItemListResponse()Lcom/narvii/model/api/ItemListResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/catalog/CatalogItemAdapter;->responseFirstPage(Lcom/narvii/model/api/ItemListResponse;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/catalog/SubCategoryResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 1

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->rootCategoryResponse:Lcom/narvii/model/api/CategoryListResponse;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->errorMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 3
    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    .line 4
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->categoryList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
