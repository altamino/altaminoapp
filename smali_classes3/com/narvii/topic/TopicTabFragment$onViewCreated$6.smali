.class final Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $extraData:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;->this$0:Lcom/narvii/topic/TopicTabFragment;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;->$extraData:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;->this$0:Lcom/narvii/topic/TopicTabFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ComposeButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 199
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const-string v0, "postEntry"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    .line 200
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;->$extraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->addTmpExtraData(Landroid/os/Bundle;)V

    return-void

    .line 199
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.post.entry.PostEntryDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
