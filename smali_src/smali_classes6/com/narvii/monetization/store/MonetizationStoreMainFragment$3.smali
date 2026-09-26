.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/store/data/StoreSectionListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->G(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p4}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->F(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/monetization/store/data/StoreSectionListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreSectionListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreSectionListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->G(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreSectionListResponse;->getSectionList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/store/data/StoreSection;

    .line 7
    iget-object v2, v0, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    const-string v3, "sticker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v0, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 9
    new-instance v2, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;

    iget-object v3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v0, v0, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 11
    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 12
    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 13
    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 14
    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->B(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->C(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    const/4 v0, 0x1

    .line 15
    invoke-static {p2, v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->I(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)V

    const/4 p2, -0x1

    move v0, p2

    .line 16
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/store/data/StoreSection;

    iget-object v3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 18
    invoke-static {v3}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->C(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, p2, :cond_5

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 20
    invoke-virtual {p2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 21
    invoke-virtual {p2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 22
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;Lcom/narvii/widget/NVListView;ILcom/narvii/app/NVActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 23
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 24
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
