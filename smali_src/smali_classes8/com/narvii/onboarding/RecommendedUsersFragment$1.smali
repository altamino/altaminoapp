.class Lcom/narvii/onboarding/RecommendedUsersFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

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
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 33
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
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->method()I

    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x3

    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/model/User;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method
