.class final Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "AggregationTopicFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/picker/AggregationTopicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Search"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 65
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_type"

    const/4 v1, 0x4

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "showKeyboard"

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$onViewCreated$2;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
