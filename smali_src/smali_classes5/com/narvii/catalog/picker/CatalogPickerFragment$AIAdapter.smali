.class Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;
.super Lcom/narvii/catalog/AllItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AIAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/AllItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
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
    .locals 0

    .line 1
    .line 2
    const-class p1, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string p2, "pickOnFinish"

    .line 9
    const/4 p3, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 17
    .line 18
    const-string p4, "uid"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    const-string p4, "itemList"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 37
    .line 38
    iget p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 39
    .line 40
    const-string p4, "maximum"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 46
    .line 47
    iget p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 48
    .line 49
    const-string p4, "mode"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 55
    .line 56
    iget-boolean p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 57
    .line 58
    const-string p4, "canSelectOfficial"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    const-string p4, "previewMedia"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p1, p3}, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 82
    return p3
.end method
