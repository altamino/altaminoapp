.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "AddCoHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoHostDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/app/NVContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    new-instance p1, Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(II)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 172
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object v2, v2, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {v2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getThread$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/co-host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 193
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 169
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 184
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    iget-object p2, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$setCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;Ljava/util/List;)V

    .line 185
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 187
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    .line 176
    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method
