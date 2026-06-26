.class public Lcom/narvii/story/StoryTopicHistoryPrefsHelper;
.super Ljava/lang/Object;
.source "StoryTopicHistoryPrefsHelper.java"


# static fields
.field public static final KEY_STORY_TOPIC_HISTORY:Ljava/lang/String; = "key_story_topic_history"

.field public static final MXT_STORY_TOPIC_SIZE:I = 0x32

.field public static final SHAREDPRE_NAME:Ljava/lang/String; = "story"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;

.field private topicsHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "story"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public addTopic(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->getTopic()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/TopicTag;

    if-eqz v1, :cond_1

    .line 46
    iget-object v2, v1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/TopicTag;

    .line 57
    iget-object v2, v2, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 61
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->setTopic(Ljava/util/List;)V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->setTopic(Ljava/util/List;)V

    return-void
.end method

.method public getTopic()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_story_topic_history"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/TopicTag;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    return-object v0
.end method

.method public saveConfigChange(ZLjava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter_by_my_amino"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sort_by"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTopic(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 69
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->topicsHistory:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_story_topic_history"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
