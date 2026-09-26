.class public Lcom/narvii/onboarding/RecommendedUsersFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

.field followed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field following:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lcom/narvii/widget/NVListView;

.field final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    const/high16 v1, 0x66000000

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/onboarding/RecommendedUsersFragment$1;

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/narvii/onboarding/RecommendedUsersFragment$1;-><init>(Lcom/narvii/onboarding/RecommendedUsersFragment;Ljava/lang/Class;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 22
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/onboarding/RecommendedUsersFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public follow(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "targetUidList"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 16
    .line 17
    const-string v1, "account"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v4, "/user-profile/"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "/joined"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "api"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->onBoardingRecommendHelper:Lcom/narvii/onboarding/OnBoardingRecommendHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/onboarding/OnBoardingRecommendHelper;->getRecommendedUsers()Ljava/util/ArrayList;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->users:Ljava/util/List;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashSet;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 28
    .line 29
    new-instance p1, Ljava/util/HashSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d069a

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0e9e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f120fc4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    const p2, 0x102000a

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listView:Lcom/narvii/widget/NVListView;

    .line 30
    const/4 p2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listView:Lcom/narvii/widget/NVListView;

    .line 36
    const/4 p2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;-><init>(Lcom/narvii/onboarding/RecommendedUsersFragment;)V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 54
    const/4 v0, 0x3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listView:Lcom/narvii/widget/NVListView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listView:Lcom/narvii/widget/NVListView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method public unfollow(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v3, "/user-profile/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "/joined/"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "api"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment;->adapter:Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
