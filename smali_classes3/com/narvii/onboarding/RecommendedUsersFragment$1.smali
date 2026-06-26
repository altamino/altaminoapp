.class Lcom/narvii/onboarding/RecommendedUsersFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RecommendedUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/RecommendedUsersFragment;
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
.field final synthetic this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onboarding/RecommendedUsersFragment;Ljava/lang/Class;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

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

    .line 197
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 198
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 199
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->method()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 186
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
