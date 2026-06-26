.class Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "CatalogPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    const-class v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pickOnFinish"

    const/4 v2, 0x1

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    const-string v2, "maximum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {v1}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "previewMedia"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "customFinishAnimIn"

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "customFinishAnimOut"

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v2, v2, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-boolean v2, v2, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    const-string v3, "canSelectOfficial"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v2, v2, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v2, v2, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 249
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
