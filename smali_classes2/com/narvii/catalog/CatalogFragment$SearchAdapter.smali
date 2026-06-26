.class Lcom/narvii/catalog/CatalogFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1048
    invoke-direct {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_2

    .line 1053
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0909cd

    if-ne v0, v1, :cond_2

    .line 1054
    const-class p1, Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1055
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo p3, "uid"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "previewMedia"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result p2

    const-string p3, "fromMyCatalog"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1058
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result p2

    const-string p3, "fromOfficialCatalog"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p2, 0x7f010029

    const-string p3, "customFinishAnimIn"

    .line 1059
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p3, 0x7f01002a

    const-string p4, "customFinishAnimOut"

    .line 1060
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    iget-object p4, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const-string p5, "isAllEntry"

    invoke-virtual {p4, p5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p4}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-virtual {p1, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1063
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v0

    .line 1066
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
