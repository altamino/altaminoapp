.class final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;
.super Ljava/lang/Object;
.source "TopicTitleAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicTitleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicTitleAdapter.kt\ncom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1\n*L\n1#1,177:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isTopic:Z

.field final synthetic $pw:Landroid/widget/PopupWindow;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;ZLandroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    iput-boolean p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->$isTopic:Z

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->$pw:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 107
    iget-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->$isTopic:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->unbookmark:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 110
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 112
    new-instance v1, Lcom/narvii/topic/TopicRequestHelper;

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getCtx$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/narvii/topic/TopicRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 113
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v5, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;

    invoke-direct {v5, p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->notInterested:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 122
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 124
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persona/interests/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const-string v1, "api"

    invoke-virtual {p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 127
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;

    const-class v2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-direct {v1, v2, p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;-><init>(Ljava/lang/Class;Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 137
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->$pw:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
