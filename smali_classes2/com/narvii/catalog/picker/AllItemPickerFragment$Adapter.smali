.class Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;
.super Lcom/narvii/catalog/CatalogItemGridAdapter;
.source "AllItemPickerFragment.java"


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

    .line 114
    iput-object p1, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/catalog/CatalogItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 125
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/item"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    iget-object v0, v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo v1, "type"

    if-nez v0, :cond_0

    const-string v0, "catalog-all"

    .line 127
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "user-all"

    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    iget-object v0, p0, Lcom/narvii/catalog/picker/AllItemPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/AllItemPickerFragment;

    iget-object v0, v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904e4

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
