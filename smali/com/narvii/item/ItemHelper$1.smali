.class Lcom/narvii/item/ItemHelper$1;
.super Ljava/lang/Object;
.source "ItemHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/ItemHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/item/ItemHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    iput-object p2, p0, Lcom/narvii/item/ItemHelper$1;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/item/ItemHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 57
    check-cast p1, Lcom/narvii/model/api/CategoryListResponse;

    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/item/ItemHelper$1;->val$itemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/item/ItemHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 62
    :cond_0
    const-class v0, Lcom/narvii/catalog/category/CategoryPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "multiPick"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object v1, v1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 65
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "resp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const v1, 0x7f0f019a

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$1;->val$itemId:Ljava/lang/String;

    const-string v1, "itemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$1;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/ItemHelper$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
