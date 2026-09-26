.class Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;
.super Lcom/narvii/catalog/CategoryListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/catalog/CategoryListAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V

    .line 10
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    .line 12
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object p1, p3

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 8
    .line 9
    const-class p2, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    const-string p4, "pickOnFinish"

    .line 16
    const/4 p5, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object p4, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 22
    .line 23
    iget-object p4, p4, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "uid"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object p4, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "categoryId"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    const-string p4, "category"

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 47
    .line 48
    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    const-string p4, "itemList"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 60
    .line 61
    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 62
    .line 63
    const-string p4, "maximum"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 69
    .line 70
    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 71
    .line 72
    const-string p4, "mode"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 78
    .line 79
    iget-boolean p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 80
    .line 81
    const-string p4, "canSelectOfficial"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 87
    .line 88
    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    .line 89
    .line 90
    const-string p4, "title"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Ljava/util/List;

    .line 104
    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    move-result p3

    .line 110
    .line 111
    if-lez p3, :cond_0

    .line 112
    const/4 p3, 0x0

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/model/Item;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 122
    move-result-object p1

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const/4 p1, 0x0

    .line 125
    .line 126
    :goto_0
    const-string p3, "previewMedia"

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2, p5}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 139
    return p5

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 143
    move-result p1

    .line 144
    return p1
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;)V

    .line 46
    .line 47
    const-wide/16 v1, 0x12c

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    const/4 v1, 0x1

    .line 62
    .line 63
    iput-boolean v1, v0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget p1, p1, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 70
    .line 71
    iput p1, v0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 79
    :cond_1
    return-void
.end method
