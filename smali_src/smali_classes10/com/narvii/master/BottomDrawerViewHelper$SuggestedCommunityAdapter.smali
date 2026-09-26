.class Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0d071f

    return v0
.end method

.method protected onEndItemClicked(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter;->onEndItemClicked(Landroid/view/View;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 24
    .line 25
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "__communityId"

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->d(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    const v0, 0x7f01000e

    .line 58
    .line 59
    .line 60
    const v1, 0x7f010011

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 64
    :cond_1
    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    const-string v1, "toast"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->SuggestPopup:Lcom/narvii/util/logging/LoggingOrigin;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    .line 35
    :goto_0
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->d(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    .line 79
    :cond_2
    return-void
.end method

.method protected showEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
