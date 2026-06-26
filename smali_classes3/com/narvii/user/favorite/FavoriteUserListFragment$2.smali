.class Lcom/narvii/user/favorite/FavoriteUserListFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FavoriteUserListFragment.java"


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

    .line 204
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iput-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 221
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 222
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 223
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-object p1, p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 210
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 211
    iget-object p2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-object p2, p2, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p2

    .line 212
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "userList"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object p2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
