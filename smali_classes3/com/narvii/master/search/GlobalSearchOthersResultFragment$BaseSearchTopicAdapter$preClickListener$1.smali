.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1;
.super Ljava/lang/Object;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
