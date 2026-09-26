.class Lcom/narvii/catalog/CatalogFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    const-class v0, Lcom/narvii/catalog/category/CategoryPostActivity;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    new-instance p2, Lcom/narvii/catalog/category/CategoryPost;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0}, Lcom/narvii/catalog/category/CategoryPost;-><init>(Lcom/narvii/model/ItemCategory;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "categoryId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    const-string v0, "post"

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->val$category:Lcom/narvii/model/ItemCategory;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    const-string v0, "category"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method
