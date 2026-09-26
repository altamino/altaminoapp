.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/paging/source/PagingConfiguration;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(II)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getThread$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/model/ChatThread;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v3, "/chat/thread/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "/co-host"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p1
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 0
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    const-string p3, "loadingDialog"

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object p1, p2

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object p2, p1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 45
    :cond_2
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/UserListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 3
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    iget-object p2, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$setCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 4
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "loadingDialog"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 5
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 6
    iget-object p1, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    :cond_2
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method
