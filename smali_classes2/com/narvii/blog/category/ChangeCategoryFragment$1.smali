.class Lcom/narvii/blog/category/ChangeCategoryFragment$1;
.super Ljava/lang/Object;
.source "ChangeCategoryFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/category/ChangeCategoryFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/blog/category/ChangeCategoryFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    const v1, 0x7f0f01c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 47
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    iget-object v0, v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blogCategoryList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->this$0:Lcom/narvii/blog/category/ChangeCategoryFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/category/ChangeCategoryFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
