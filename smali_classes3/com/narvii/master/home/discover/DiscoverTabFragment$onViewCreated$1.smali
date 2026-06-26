.class final Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverTabFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "TopicPickerIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 110
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
