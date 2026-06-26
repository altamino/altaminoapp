.class Lcom/narvii/item/picker/ItemSortFragment$1;
.super Ljava/lang/Object;
.source "ItemSortFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/picker/ItemSortFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/picker/ItemSortFragment;


# direct methods
.method constructor <init>(Lcom/narvii/item/picker/ItemSortFragment;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 77
    iget-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    const-string v0, "maximum"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    .line 78
    iget-object v1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    iget-object v1, v1, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 80
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    const v3, 0x7f0f0a9d

    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 81
    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {v0, p1, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 86
    :cond_0
    const-class v1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "mine"

    .line 87
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    iget-object v3, v3, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
