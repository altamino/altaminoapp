.class public Lcom/narvii/story/StoryAddTopicsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;,
        Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;,
        Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;,
        Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;,
        Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;,
        Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;
    }
.end annotation


# instance fields
.field private apiService:Lcom/narvii/util/http/ApiService;

.field private copyHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation
.end field

.field private historyAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;

.field private historyHelper:Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

.field private keyword:Ljava/lang/String;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private oldTopicSuggestRequest:Lcom/narvii/util/http/ApiRequest;

.field private stopMatching:Z

.field private suggestAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

.field private tagLayout:Landroid/view/View;

.field private topicAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;

.field private topicHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation
.end field

.field private topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

.field private topicSuggest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation
.end field

.field private topicTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->stopMatching:Z

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->keyword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/StoryAddTopicsFragment;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->stopMatching:Z

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/story/StoryAddTopicsFragment;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->stopMatching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicSuggest:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment;->matchTopic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->copyHistory:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryTopicHistoryPrefsHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->historyHelper:Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->suggestAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->oldTopicSuggestRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->apiService:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/story/StoryAddTopicsFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->tagLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->tagLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->keyword:Ljava/lang/String;

    return-object p1
.end method

.method private copyTags(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/TopicTag;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method private historyRemoveTopics()V
    .locals 3

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/TopicTag;

    .line 276
    iget-object v2, v2, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 279
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/TopicTag;

    .line 281
    iget-object v2, v2, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private matchTopic(Ljava/lang/String;)V
    .locals 4

    .line 220
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/topic/suggest-topics"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 221
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "q"

    .line 222
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->oldTopicSuggestRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/narvii/story/StoryAddTopicsFragment;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 228
    :cond_0
    iput-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->oldTopicSuggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 229
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/story/StoryAddTopicsFragment$2;

    const-class v3, Lcom/narvii/model/api/TopicSuggestResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/story/StoryAddTopicsFragment$2;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private saveTopic()V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->getTagList()Ljava/util/List;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TagEditFlowView$Tag;

    .line 205
    instance-of v2, v1, Lcom/narvii/model/TopicTag;

    if-eqz v2, :cond_1

    .line 206
    new-instance v2, Lcom/narvii/model/TopicTag;

    invoke-direct {v2}, Lcom/narvii/model/TopicTag;-><init>()V

    .line 207
    check-cast v1, Lcom/narvii/model/TopicTag;

    iget v3, v1, Lcom/narvii/model/TopicTag;->id:I

    iput v3, v2, Lcom/narvii/model/TopicTag;->id:I

    .line 208
    iget-object v1, v1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    iput-object v1, v2, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topicList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 152
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 154
    new-instance p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;

    .line 155
    new-instance p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->historyAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;

    .line 156
    new-instance p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->suggestAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    .line 158
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 159
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->historyAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->suggestAdapter:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b002c

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0031

    :goto_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryTopicEdit"

    return-object v0
.end method

.method protected hideKeyBoard()V
    .locals 2

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to hide keyboard"

    .line 191
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isTagFull()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {v0}, Lcom/narvii/widget/TagEditFlowView;->isTagFull()Z

    move-result v0

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/narvii/story/StoryAddTopicsFragment;->hideKeyBoard()V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 87
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V

    if-nez p1, :cond_0

    const-string p1, "topicList"

    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-class v1, Lcom/narvii/model/TopicTag;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicTags:Ljava/util/ArrayList;

    .line 100
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicSuggest:Ljava/util/List;

    .line 101
    new-instance p1, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->historyHelper:Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    .line 102
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->historyHelper:Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    invoke-virtual {p1}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->getTopic()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    .line 103
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment;->copyTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->copyHistory:Ljava/util/List;

    .line 105
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    if-nez p1, :cond_2

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHistory:Ljava/util/List;

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/narvii/story/StoryAddTopicsFragment;->historyRemoveTopics()V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080264

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0601f6

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0601fa

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    .line 114
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0088

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string p1, "api"

    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->apiService:Lcom/narvii/util/http/ApiService;

    const-string p1, "content_language"

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v0, 0x7f0f0df3

    const/4 v1, 0x0

    .line 167
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 168
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0483

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0601f6

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 169
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0663

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0df3

    if-ne v0, v1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment;->topicHolder:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->editTopicFlowLayout:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p1}, Lcom/narvii/widget/TagEditFlowView;->editSubmit()V

    .line 177
    invoke-direct {p0}, Lcom/narvii/story/StoryAddTopicsFragment;->saveTopic()V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 141
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lcom/narvii/story/StoryAddTopicsFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/StoryAddTopicsFragment$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
