.class Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;
.super Lcom/narvii/catalog/AllItemAdapter;
.source "CatalogPickerFragment.java"


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

    .line 308
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 309
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/AllItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 314
    const-class p1, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "pickOnFinish"

    .line 315
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo p4, "uid"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "itemList"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    const-string p4, "maximum"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const-string p4, "mode"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-boolean p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    const-string p4, "canSelectOfficial"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {p3}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "previewMedia"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p2
.end method
