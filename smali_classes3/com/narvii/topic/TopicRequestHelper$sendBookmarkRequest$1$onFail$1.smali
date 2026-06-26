.class final Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1$onFail$1;
.super Ljava/lang/Object;
.source "TopicRequestHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1$onFail$1;->this$0:Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1$onFail$1;->this$0:Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;

    iget-object p1, p1, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
