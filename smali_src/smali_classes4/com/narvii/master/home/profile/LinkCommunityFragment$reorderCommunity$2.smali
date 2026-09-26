.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;->reorderCommunity()V
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
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/profile/LinkCommunityFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

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
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "progressDialog"

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
    .line 22
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    check-cast p2, Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$reloadData(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 66
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
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
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "progressDialog"

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
    .line 22
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$sendUserChangedNotification(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 26
    return-void
.end method
