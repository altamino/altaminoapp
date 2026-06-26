.class Lcom/narvii/catalog/CatalogFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "CatalogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/CatalogFragment$CAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

.field final synthetic val$category:Lcom/narvii/model/ItemCategory;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment$CAdapter;Lcom/narvii/model/ItemCategory;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 1178
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/narvii/catalog/category/CategoryPostActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1180
    new-instance p2, Lcom/narvii/catalog/category/CategoryPost;

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    invoke-direct {p2, v0}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 1181
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string v1, "categoryId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "post"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "category"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
