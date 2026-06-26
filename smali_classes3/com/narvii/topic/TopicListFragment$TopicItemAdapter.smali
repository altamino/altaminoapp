.class public Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "TopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/TopicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TopicItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/TopicListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;->this$0:Lcom/narvii/topic/TopicListFragment;

    const/4 p1, 0x1

    .line 89
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;->this$0:Lcom/narvii/topic/TopicListFragment;

    const-string v0, "KEY_PATH"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/narvii/util/Utils;->getApiRequestFromPath(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/topic/trending"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "content_language"

    .line 112
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 113
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 94
    const-class v0, Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0b0397

    .line 142
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 144
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    const p3, 0x7f090aee

    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 148
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/narvii/topic/widgets/GeneralTopicCard;

    if-eqz v0, :cond_0

    .line 149
    check-cast p3, Lcom/narvii/topic/widgets/GeneralTopicCard;

    invoke-virtual {p0}, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;->showOnlineInfo()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setShownOnlineInfo(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;->showSubscribeTag()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setShownSubscribeTag(Z)V

    .line 151
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p3, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onAttach()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 85
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    iget-object v1, p0, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;->this$0:Lcom/narvii/topic/TopicListFragment;

    const-string v2, "_module"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {v0, p0, v1}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 159
    instance-of v0, p3, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_1

    .line 161
    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    .line 163
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 165
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "topic"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget p2, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-nez p2, :cond_0

    const-string p1, "topic0problem : StoryTopicView open with error: $topic"

    .line 169
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 181
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .line 99
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method

.method protected showOnlineInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showSubscribeTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
