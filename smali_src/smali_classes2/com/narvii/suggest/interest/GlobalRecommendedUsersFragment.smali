.class public Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private updateButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->btNext:Landroid/widget/Button;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUidList()Ljava/util/Set;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->updateButton()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$1;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d03a7

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [I

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, v1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Lcom/narvii/list/NVAdapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-object p1
.end method

.method protected doSubmit()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->adapter:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUidList()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    .line 24
    .line 25
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 29
    .line 30
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const-string v3, "FollowAndNext"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    const-string v4, "followUserCount"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 58
    .line 59
    const-string v2, "api"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v4

    .line 78
    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    check-cast v4, Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string v5, "/persona/onboarding-following?language="

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    const-string v4, "followingUserIds"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 142
    return-void
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method protected getNextButtonText(II)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f1207b0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "recommend_user"

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d03a3

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

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a09f3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/Button;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->btNext:Landroid/widget/Button;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->updateButton()V

    .line 18
    return-void
.end method

.method protected showSkip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
