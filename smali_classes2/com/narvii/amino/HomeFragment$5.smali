.class Lcom/narvii/amino/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveItemClicked(Landroid/view/View;Lcom/narvii/model/ChatThread;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->access$000(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 409
    iget-object v1, p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 411
    iget-object p1, p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 414
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 417
    :cond_3
    new-instance p1, Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p1, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public onNormalItemClicked(Landroid/view/View;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V
    .locals 4

    .line 378
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "customFinishAnimOut"

    const v1, 0x7f01000d

    .line 379
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "customFinishAnimIn"

    .line 380
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 381
    :cond_0
    iget-object p2, p2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getLiveCategoryType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "targetTopic"

    .line 382
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Source"

    const-string v3, "Speed Dial"

    .line 383
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 385
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 386
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v2, 0x7f01000c

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
