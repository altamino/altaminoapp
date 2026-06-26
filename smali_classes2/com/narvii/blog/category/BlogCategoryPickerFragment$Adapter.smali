.class Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BlogCategoryPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/category/BlogCategoryPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/BlogCategory;",
        "Lcom/narvii/model/api/BlogCategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "blogCategoryList"

    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/BlogCategory;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 106
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 124
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/blog-category"

    .line 125
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    .line 114
    const-class v0, Lcom/narvii/model/BlogCategory;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    invoke-static {p2}, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->access$000(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 247
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BlogCategory;

    .line 249
    iget v1, v0, Lcom/narvii/model/BlogCategory;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 250
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 136
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 137
    iget p1, p1, Lcom/narvii/model/BlogCategory;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 168
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 169
    iget v0, p1, Lcom/narvii/model/BlogCategory;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0061

    .line 170
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const v0, 0x7f0b0062

    .line 176
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 177
    move-object p3, p2

    check-cast p3, Lcom/narvii/blog/category/BlogCategoryListItem;

    invoke-virtual {p3, p1}, Lcom/narvii/blog/category/BlogCategoryListItem;->setCategory(Lcom/narvii/model/BlogCategory;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/blog/category/BlogCategoryListItem;->setChecked(Ljava/lang/Boolean;)V

    .line 179
    invoke-virtual {p0, p2, p1}, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Lcom/narvii/model/BlogCategory;

    if-eqz v1, :cond_2

    .line 158
    check-cast v0, Lcom/narvii/model/BlogCategory;

    iget p1, v0, Lcom/narvii/model/BlogCategory;->type:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 162
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 192
    instance-of v0, p3, Lcom/narvii/model/BlogCategory;

    if-eqz v0, :cond_9

    .line 193
    check-cast p3, Lcom/narvii/model/BlogCategory;

    .line 195
    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->status()I

    move-result p1

    const-string p2, "account"

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    .line 196
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 197
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-nez p1, :cond_2

    .line 199
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->status()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 200
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 201
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const p3, 0x7f0f016b

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const p3, 0x7f0f016c

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x104000a

    const/4 p3, 0x4

    const/4 p5, 0x0

    .line 203
    invoke-virtual {p1, p2, p3, p5}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 204
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    return p4

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const-string p5, "single"

    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 211
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 212
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "blogCategoryList"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 216
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto/16 :goto_2

    .line 218
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    .line 222
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const/4 p5, 0x2

    const-string v0, "maximum"

    invoke-virtual {p1, v0, p5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    if-gt p1, p5, :cond_5

    const/4 p1, 0x2

    .line 226
    :cond_5
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    const/4 p5, 0x0

    if-eqz p2, :cond_6

    .line 227
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_7

    .line 228
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p2, p1, :cond_7

    .line 229
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    const v0, 0x7f0f016d

    new-array v1, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p5

    invoke-virtual {p3, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 231
    :cond_7
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_2
    return p4

    .line 238
    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/BlogCategoryListResponse;",
            ">;"
        }
    .end annotation

    .line 119
    const-class v0, Lcom/narvii/model/api/BlogCategoryListResponse;

    return-object v0
.end method
