.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->onBindViewHolder(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;Lcom/narvii/model/Community;Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$holder:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p1, p1, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/widget/NVImageView;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 35
    .line 36
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/community/CommunityUserInfo;

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_0
    move-object v6, p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :goto_1
    iget-object v4, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->val$c:Lcom/narvii/model/Community;

    .line 57
    .line 58
    iget v3, v4, Lcom/narvii/model/Community;->id:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->w(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->w(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 85
    .line 86
    const-string/jumbo v0, "statistics"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 93
    .line 94
    const-string v0, "Search For Communities - Chooses My Communities"

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string v0, "Chooses My Communities via Search"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    return-void
.end method
