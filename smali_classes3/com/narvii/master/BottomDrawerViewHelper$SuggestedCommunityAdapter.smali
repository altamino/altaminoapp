.class Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "BottomDrawerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/BottomDrawerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestedCommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 391
    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0b067c

    return v0
.end method

.method protected onEndItemClicked(Landroid/view/View;)V
    .locals 2

    .line 407
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter;->onEndItemClicked(Landroid/view/View;)V

    .line 408
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v0, p1, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 413
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 414
    const-class p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 416
    :cond_1
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "__communityId"

    .line 417
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->access$000(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    .line 420
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 421
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f01000e

    const v1, 0x7f010011

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 4

    .line 427
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "toast"

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v2, v2, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object v3, v3, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v3, :cond_1

    .line 431
    invoke-virtual {v3, v2, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 433
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 434
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 436
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->access$000(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected showEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
