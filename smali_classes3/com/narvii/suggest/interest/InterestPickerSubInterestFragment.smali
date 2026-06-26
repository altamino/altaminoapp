.class public Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "InterestPickerSubInterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;,
        Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
    }
.end annotation


# static fields
.field private static final MIN_PICKS:I = 0x4


# instance fields
.field private agree:Landroid/widget/CheckBox;

.field private agreeLayout:Landroid/view/ViewGroup;

.field private agreeText:Landroid/widget/TextView;

.field private bottomCover:Landroid/view/View;

.field private bottomCover2:Landroid/view/View;

.field private btNext:Landroid/widget/Button;

.field private createTimes:I

.field private expendedInterests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private searchedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTopics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private skip:Landroid/widget/TextView;

.field private subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

.field private uploadTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    return-object p0
.end method

.method private updateButton()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->btNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 191
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_4

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 103
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 105
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0b036f

    aput v3, v1, v2

    .line 121
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 122
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    .line 155
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    .line 158
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 159
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    invoke-direct {v0, p0, v1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/list/NVAdapter;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected doSubmit()V
    .locals 8

    .line 200
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 202
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$4;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 220
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$5;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 228
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 230
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 233
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 234
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 235
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/story/StoryTopic;

    .line 236
    invoke-virtual {v4}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v5, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    .line 242
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v5, "Next"

    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 249
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "topicCount"

    invoke-virtual {v2, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v5, ","

    .line 250
    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "topicNameList"

    invoke-virtual {v2, v6, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "searchTopicCount"

    invoke-virtual {v2, v6, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 252
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "searchTopicNameList"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 253
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "notificationEnabled"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 257
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/persona/picked-topics?language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    const-string v4, "pickedTopicIds"

    .line 258
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 259
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "subscribe"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 261
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 262
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 182
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 177
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SubInterests"

    return-object v0
.end method

.method public synthetic lambda$onViewCreated$0$InterestPickerSubInterestFragment(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/16 v0, 0x65

    if-ne p1, v0, :cond_5

    const-string p1, "selected_topic"

    .line 526
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    const-string p2, "canceled_topic"

    .line 527
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Ljava/lang/Integer;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 529
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 530
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 535
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 538
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    .line 539
    iget v1, v0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-ne v1, v2, :cond_1

    move-object p2, v0

    :cond_2
    if-eqz p2, :cond_3

    .line 545
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_3
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_4
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 550
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    return-void

    .line 553
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 70
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0369

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 80
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09075d

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->btNext:Landroid/widget/Button;

    const p2, 0x7f090a4d

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->skip:Landroid/widget/TextView;

    const p2, 0x7f090082

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    const p2, 0x7f09014d

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->bottomCover:Landroid/view/View;

    const p2, 0x7f09014e

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->bottomCover2:Landroid/view/View;

    const p2, 0x7f09007f

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    const p2, 0x7f090084

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeText:Landroid/widget/TextView;

    .line 90
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->bottomCover:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->bottomCover2:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerSubInterestFragment$qyP0TfuD0zgqS6bv-3bJ7RLD5MM;

    invoke-direct {p2, p0}, Lcom/narvii/suggest/interest/-$$Lambda$InterestPickerSubInterestFragment$qyP0TfuD0zgqS6bv-3bJ7RLD5MM;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    return-void
.end method
