.class public Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "GlobalRecommendedUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

.field private btNext:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->updateButton()V

    return-void
.end method

.method private updateButton()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->btNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUidList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 51
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 54
    new-instance v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b036c

    aput v4, v2, v3

    .line 60
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    new-instance v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 64
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 65
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;

    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    invoke-direct {v0, p0, v1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Lcom/narvii/list/NVAdapter;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected doSubmit()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUidList()Ljava/util/Set;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v2, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 128
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 130
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, "FollowAndNext"

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "followUserCount"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-string v2, "api"

    .line 132
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 133
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/persona/onboarding-following?language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v4, "followingUserIds"

    .line 139
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 141
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 107
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getNextButtonText(II)Ljava/lang/String;
    .locals 0

    const p1, 0x7f0f070d

    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecommendUser"

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0369

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09075d

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->btNext:Landroid/widget/Button;

    .line 79
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->updateButton()V

    return-void
.end method

.method protected showSkip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
