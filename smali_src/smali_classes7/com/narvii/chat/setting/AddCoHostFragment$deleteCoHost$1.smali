.class public final Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/AddCoHostFragment;->deleteCoHost(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/setting/AddCoHostFragment;",
            "Lcom/narvii/model/User;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "loadingDialog"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 21
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "coHostDataSource"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object p1, p2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->$user:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/paging/source/DataSource;->removeData(Lcom/narvii/model/NVObject;)I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getMergeAdapter$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    const-string p1, "mergeAdapter"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object p1, p2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$sendCoHostNotification(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, "loadingDialog"

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object p2, p1

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 64
    return-void
.end method
