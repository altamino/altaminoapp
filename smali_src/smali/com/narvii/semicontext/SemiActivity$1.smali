.class Lcom/narvii/semicontext/SemiActivity$1;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/semicontext/SemiActivity;->join()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/semicontext/SemiActivity;

.field final synthetic val$community:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/semicontext/SemiActivity;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/semicontext/SemiActivity$1;->val$community:Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    .line 4
    const/4 p2, 0x3

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/semicontext/SemiActivity;->w(Lcom/narvii/semicontext/SemiActivity;)V

    .line 12
    :cond_0
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/semicontext/SemiActivity$1;->val$community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/model/Community;->listedStatus:I

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "Listed"

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string v0, "Unlisted"

    .line 13
    .line 14
    :goto_0
    new-instance v1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    new-instance v2, Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v3, "type"

    .line 32
    .line 33
    const-string v4, "join"

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    const-string/jumbo v3, "source"

    .line 39
    .line 40
    iget-object v4, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/semicontext/SemiActivity$1;->val$community:Lcom/narvii/model/Community;

    .line 46
    .line 47
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    const-string v4, "community_id"

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/semicontext/SemiActivity$1;->val$community:Lcom/narvii/model/Community;

    .line 59
    .line 60
    iget v3, v3, Lcom/narvii/model/Community;->templateId:I

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    const-string/jumbo v4, "template"

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    .line 73
    .line 74
    const-string v4, "category"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    const-string v4, "category_type"

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    const-string v3, "listing_status"

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    const-string v3, "join_communities_joined_total"

    .line 91
    const/4 v4, 0x1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v0, "_communities_joined_total"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0, v4}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    .line 119
    .line 120
    const-string v0, "joins_a_community"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 127
    return-void
.end method
