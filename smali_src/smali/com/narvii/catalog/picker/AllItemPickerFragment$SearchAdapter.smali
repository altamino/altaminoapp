.class Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/AllItemPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/AllItemPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0c95

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-class p1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "pickOnFinish"

    .line 20
    const/4 p3, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/narvii/catalog/picker/AllItemPickerFragment;->uid:Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo p4, "uid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    const-string p4, "itemList"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 48
    .line 49
    iget p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 50
    .line 51
    const-string p4, "maximum"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 57
    .line 58
    iget p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 59
    .line 60
    const-string p4, "mode"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    .line 68
    .line 69
    const-string/jumbo p4, "title"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 75
    .line 76
    iget-boolean p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 77
    .line 78
    const-string p4, "canSelectOfficial"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p1, p3}, Lcom/narvii/catalog/picker/AllItemPickerFragment$SearchAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 87
    return p3

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 91
    move-result p1

    .line 92
    return p1
.end method
