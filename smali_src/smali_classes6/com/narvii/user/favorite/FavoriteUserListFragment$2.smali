.class Lcom/narvii/user/favorite/FavoriteUserListFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/favorite/FavoriteUserListFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 27
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "userList"

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 31
    const/4 v0, -0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 40
    return-void
.end method
