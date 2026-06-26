.class public final Lcom/narvii/scene/poll/ScenePollPlayView$call$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ScenePollPlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;->call(Lcom/narvii/widget/LongPushButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePollPlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPlayView.kt\ncom/narvii/scene/poll/ScenePollPlayView$call$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,448:1\n1587#2,2:449\n*E\n*S KotlinDebug\n*F\n+ 1 ScenePollPlayView.kt\ncom/narvii/scene/poll/ScenePollPlayView$call$1\n*L\n208#1,2:449\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 206
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 207
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setVotedOptionId$p(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getOptionViewList$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/util/List;

    move-result-object p1

    .line 449
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 208
    sget p5, Lcom/narvii/mediaeditor/R$id;->push_btn:I

    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/LongPushButton;

    invoke-virtual {p3}, Lcom/narvii/widget/LongPushButton;->reset()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$updateOptions(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 210
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 211
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    .line 212
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$onTimeOut(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isActive$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$updateCountDownState(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    :goto_1
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 180
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getLogEventBuilder(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->vote:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "Poll"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getShowId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pollShowId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getCurrentPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/PollAttach;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string v1, "pollId"

    invoke-virtual {p1, v1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 183
    iget-object p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getVotedOptionId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "optionId"

    invoke-virtual {p1, v1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 185
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 186
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$setPlayed$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 187
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$updateOptions(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 188
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    const-wide/16 v1, 0xbb8

    invoke-static {p1, v1, v2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$startCountDown(Lcom/narvii/scene/poll/ScenePollPlayView;J)V

    .line 189
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isActive$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$updateCountDownState(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V

    .line 191
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getOriginalPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/PollAttach;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getPolloptListFixed(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 192
    :cond_1
    new-instance p1, Lcom/narvii/scene/ScenePlayRecord;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 193
    new-instance v1, Lcom/narvii/scene/poll/ScenePollResult;

    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getVotedOptionId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/scene/poll/ScenePollResult;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getScenePlayListener$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/scene/ScenePlayListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v2}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getSceneId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getStory$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 196
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getStory$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/Blog;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    const-string v1, "story.sceneList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/Scene;

    iget-object v2, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v3}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getSceneId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_4
    check-cast v0, Lcom/narvii/model/Scene;

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getOriginalPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/PollAttach;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 197
    :cond_5
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 198
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$getStory$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v0, "update"

    .line 199
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 201
    invoke-static {v0, p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    :cond_6
    return-void
.end method
