.class Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "CatalogPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 201
    invoke-direct {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 206
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0909cd

    if-ne v0, v1, :cond_0

    .line 207
    const-class p1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "pickOnFinish"

    .line 208
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo p4, "uid"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "itemList"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    const-string p4, "maximum"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const-string p4, "mode"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    const-string p4, "title"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-boolean p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    const-string p4, "canSelectOfficial"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {p3}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "previewMedia"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p2

    .line 219
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
