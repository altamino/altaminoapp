.class Lcom/narvii/search/SearchItemGridFragment$Adapter;
.super Lcom/narvii/item/list/ItemGridAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/search/SearchItemGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/SearchItemGridFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/search/SearchItemGridFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/search/SearchItemGridFragment$Adapter;->this$0:Lcom/narvii/search/SearchItemGridFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/search/SearchItemGridFragment$Adapter;->this$0:Lcom/narvii/search/SearchItemGridFragment;

    .line 3
    .line 4
    const-string v0, "q"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "/item"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "type"

    .line 33
    .line 34
    const-string v3, "hashTags"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    const/16 p1, 0x4e20

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    const/4 p1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Item;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "Source"

    .line 13
    .line 14
    const-string p3, "Search Results"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/narvii/search/SearchItemGridFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method
