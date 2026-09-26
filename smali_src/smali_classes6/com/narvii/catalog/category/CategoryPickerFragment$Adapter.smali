.class public Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter$1;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/model/api/CategoryListResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter$1;-><init>(Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    .line 16
    const-string v0, "uid"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0700c3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p1

    .line 34
    .line 35
    iput p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->indent:I

    .line 36
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

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/narvii/model/api/CategoryListResponse;->isLeafCategory(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;-><init>()V

    .line 19
    .line 20
    iput-object p3, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 21
    .line 22
    iput p4, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    .line 23
    .line 24
    iput-boolean v0, v1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    :cond_1
    if-nez v0, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 32
    .line 33
    iget-boolean v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    .line 70
    .line 71
    iput-object v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 78
    .line 79
    :cond_3
    :goto_0
    iget-object p3, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    .line 86
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/model/ItemCategory;

    .line 100
    .line 101
    add-int/lit8 v1, p4, 0x1

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->append(Ljava/util/ArrayList;Lcom/narvii/model/api/CategoryListResponse;Lcom/narvii/model/ItemCategory;I)V

    .line 105
    goto :goto_1

    .line 106
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

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    add-int/lit8 v1, v0, 0x1

    .line 22
    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;
    .locals 1

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 2
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 15
    move-result p1

    .line 16
    int-to-long v0, p1

    .line 17
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d008c

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0d008d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a0de5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->indent:I

    .line 47
    .line 48
    iget v3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    mul-int/2addr v2, v3

    .line 52
    .line 53
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 61
    .line 62
    .line 63
    const p3, 0x7f0a0799

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    check-cast p3, Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    iget-boolean p3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    .line 79
    .line 80
    .line 81
    const v1, 0x7f0a06d5

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x4

    .line 84
    .line 85
    .line 86
    const v4, 0x7f0a0bc4

    .line 87
    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 91
    .line 92
    iget-boolean v5, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 93
    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    iget-object p3, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v5, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-static {p3, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 104
    move-result p3

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    iget-object v5, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 108
    .line 109
    iget-object v5, v5, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 110
    .line 111
    iget-object p3, p3, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-static {v5, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result p3

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    move v6, v3

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move v6, v2

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    check-cast v4, Landroid/widget/ImageView;

    .line 134
    .line 135
    if-eqz p3, :cond_3

    .line 136
    .line 137
    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object p3

    .line 142
    .line 143
    .line 144
    const v5, 0x7f080303

    .line 145
    .line 146
    .line 147
    :goto_2
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object p3

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_3
    iget-object p3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 155
    move-result-object p3

    .line 156
    .line 157
    .line 158
    const v5, 0x7f080580

    .line 159
    goto :goto_2

    .line 160
    .line 161
    .line 162
    :goto_3
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    goto :goto_4

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p3

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object p3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :goto_4
    const p3, 0x7f0a0097

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    iget-object v3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 194
    .line 195
    iget v4, v3, Lcom/narvii/model/ItemCategory;->subcategoriesCount:I

    .line 196
    .line 197
    if-gtz v4, :cond_6

    .line 198
    .line 199
    iget v3, v3, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 200
    .line 201
    if-nez v3, :cond_5

    .line 202
    .line 203
    iget p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->level:I

    .line 204
    const/4 v3, 0x3

    .line 205
    .line 206
    if-ge p1, v3, :cond_5

    .line 207
    goto :goto_5

    .line 208
    .line 209
    :cond_5
    const/16 v2, 0x8

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    if-eqz v0, :cond_7

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 226
    .line 227
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->bg:Landroid/graphics/drawable/Drawable;

    .line 228
    goto :goto_6

    .line 229
    :cond_7
    const/4 p1, 0x0

    .line 230
    .line 231
    .line 232
    :goto_6
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->getItem(I)Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-boolean v1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->leaf:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/catalog/category/CategoryPickerFragment;->categoryId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    xor-int/2addr p1, v0

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public isListShown()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    .line 15
    :goto_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->errorMsg:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0097

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 21
    .line 22
    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 29
    .line 30
    iget-boolean p2, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 35
    .line 36
    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 37
    .line 38
    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    check-cast p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;

    .line 57
    .line 58
    iget-object p2, p3, Lcom/narvii/catalog/category/CategoryPickerFragment$Stub;->category:Lcom/narvii/model/ItemCategory;

    .line 59
    .line 60
    iget-object p3, p2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p3, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategoryId:Ljava/lang/String;

    .line 63
    .line 64
    iput-object p2, p1, Lcom/narvii/catalog/category/CategoryPickerFragment;->selectedCategory:Lcom/narvii/model/ItemCategory;

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 71
    :goto_1
    return v1

    .line 72
    .line 73
    :cond_3
    if-nez p3, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 76
    const/4 p2, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/narvii/catalog/category/CategoryPickerFragment;->addCategory(Lcom/narvii/model/ItemCategory;)V

    .line 80
    return v1

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 3
    .line 4
    const/16 v1, 0xd

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "response"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/api/CategoryListResponse;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/api/CategoryListResponse;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 20
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "response"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method

.method sendRequest()V
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
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "/item-category"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v2, "type"

    .line 25
    .line 26
    const-string v3, "user"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    .line 31
    const-string v2, "q"

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->uid:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 46
    return-void
.end method

.method setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->response:Lcom/narvii/model/api/CategoryListResponse;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->multiPick:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 16
    .line 17
    const-string v1, "categoryIdList"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-class v1, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/narvii/model/api/CategoryListResponse;->itemCategoryList:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/model/ItemCategory;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/narvii/catalog/category/CategoryPickerFragment;->selections:Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->list:Ljava/util/ArrayList;

    .line 77
    const/4 v2, 0x0

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/narvii/catalog/category/CategoryPickerFragment$Adapter;->append(Ljava/util/ArrayList;Lcom/narvii/model/api/CategoryListResponse;Lcom/narvii/model/ItemCategory;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
