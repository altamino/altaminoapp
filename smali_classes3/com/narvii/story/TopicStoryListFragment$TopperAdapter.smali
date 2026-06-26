.class public Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "TopicStoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/TopicStoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopperAdapter"
.end annotation


# instance fields
.field languageService:Lcom/narvii/language/ContentLanguageService;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

.field final synthetic this$0:Lcom/narvii/story/TopicStoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    .line 206
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 180
    new-instance p1, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;-><init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;)V

    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 198
    new-instance p1, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$2;-><init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;)V

    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    const-string p1, "content_language"

    .line 207
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 208
    invoke-virtual {p0}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->sendRequest()V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "SubTopic"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p1, 0x7f0b06a3

    .line 269
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 270
    sget p2, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 271
    iget-object p2, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object p2

    if-eqz p2, :cond_4

    const p2, 0x7f090bcf

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 273
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090bc5

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 277
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/TopicStoryListFragment;->access$200(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/story/StoryListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/TopicStoryListFragment;->access$200(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/story/StoryListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 278
    :goto_0
    instance-of v3, v1, Lcom/narvii/model/Blog;

    if-eqz v3, :cond_1

    .line 279
    check-cast v1, Lcom/narvii/model/Blog;

    .line 280
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :cond_1
    const p2, 0x7f090b25

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    .line 284
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object p2, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f090b24

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 292
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 294
    iget-object v3, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v3}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/story/StoryTopic;

    const v5, 0x7f0b0671

    .line 295
    invoke-virtual {p2, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/story/widgets/StoryTopicView;

    .line 296
    invoke-virtual {v5, v4}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 297
    iget-object v6, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->preClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 298
    invoke-static {v5, v4}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v5, p3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 301
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    const p2, 0x7f090010

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 310
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 214
    new-instance v0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$3;

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$3;-><init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public sendRequest()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 247
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {v3}, Lcom/narvii/story/TopicStoryListFragment;->access$000(Lcom/narvii/story/TopicStoryListFragment;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 248
    iget-object v1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 249
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 250
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;

    const-class v3, Lcom/narvii/model/story/StoryTopicMetaResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;-><init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
