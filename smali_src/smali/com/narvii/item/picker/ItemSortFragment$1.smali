.class Lcom/narvii/item/picker/ItemSortFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    const-string v1, "maximum"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-lt v0, p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 34
    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    aput-object p1, v2, v3

    .line 43
    .line 44
    .line 45
    const p1, 0x7f120b4f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v3, "mine"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    const-string v4, "itemList"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment$1;->this$0:Lcom/narvii/item/picker/ItemSortFragment;

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0, v2}, Lcom/narvii/item/picker/ItemSortFragment$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 94
    return-void
.end method
