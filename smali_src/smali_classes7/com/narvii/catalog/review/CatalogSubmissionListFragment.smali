.class public Lcom/narvii/catalog/review/CatalogSubmissionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;
    }
.end annotation


# static fields
.field static final PICK_CATEGORY_REQUEST:I = 0x1


# instance fields
.field adapter:Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;

.field currentSubmission:Lcom/narvii/catalog/review/ItemSubmission;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public approve(Lcom/narvii/catalog/review/ItemSubmission;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/catalog/review/ItemSubmission;->originalItem:Lcom/narvii/model/Item;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->currentSubmission:Lcom/narvii/catalog/review/ItemSubmission;

    .line 7
    .line 8
    const-class p1, Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "multiPick"

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, v1}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-class v0, Lcom/narvii/catalog/review/SubmissionDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "itemSubmission"

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 41
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;-><init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->adapter:Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const-string p1, "categoryList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/narvii/model/ItemCategory;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-ge p3, v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/model/ItemCategory;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    new-instance p3, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$2;

    .line 57
    .line 58
    .line 59
    invoke-direct {p3, p0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$2;-><init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;)V

    .line 60
    .line 61
    iput-object p3, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v1, "/knowledge-base-request/"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->currentSubmission:Lcom/narvii/catalog/review/ItemSubmission;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "/approve"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object p3

    .line 100
    .line 101
    const-string v0, "destinationCategoryIdList"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    const-string p3, "actionType"

    .line 108
    .line 109
    const-string v0, "create"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    const-string p3, "api"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p3

    .line 124
    .line 125
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 126
    .line 127
    iget-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 134
    return-void

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "currentSubmission"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-class v0, Lcom/narvii/catalog/review/ItemSubmission;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/catalog/review/ItemSubmission;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->currentSubmission:Lcom/narvii/catalog/review/ItemSubmission;

    .line 22
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "type"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string p2, "pending"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0d0096

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 24
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->currentSubmission:Lcom/narvii/catalog/review/ItemSubmission;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "currentSubmission"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public reject(Lcom/narvii/catalog/review/ItemSubmission;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$1;-><init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;Lcom/narvii/catalog/review/ItemSubmission;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v3, "/knowledge-base-request/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p1, "/reject"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v1, "api"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 65
    .line 66
    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 73
    return-void
.end method
