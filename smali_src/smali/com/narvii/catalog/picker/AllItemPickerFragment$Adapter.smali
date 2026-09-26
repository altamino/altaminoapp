.class Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;
.super Lcom/narvii/catalog/CatalogItemGridAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/AllItemPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/AllItemPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/catalog/CatalogItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/item"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;->uid:Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v1, "type"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "catalog-all"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string/jumbo v0, "user-all"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;->uid:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v1, "uid"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0633

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    const/4 p3, 0x4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-object p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
