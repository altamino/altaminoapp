.class Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/guideline/GuidelineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfficialGuideAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/guideline/CommunityGuideline;",
        "Lcom/narvii/guideline/OfficialGuidelineResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/guideline/GuidelineFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/guideline/GuidelineFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/guideline/CommunityGuideline;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->w(Lcom/narvii/guideline/GuidelineFragment;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->t(Lcom/narvii/guideline/GuidelineFragment;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 65
    .line 66
    sget-object v2, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    iget-object v3, v1, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v3, v1, p1, v2}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v1

    .line 86
    .line 87
    if-lez v1, :cond_0

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    move-result v1

    .line 95
    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    sget-object v1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    :cond_1
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object v1, v0, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    iget-object v2, v0, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 127
    move-result v0

    .line 128
    .line 129
    if-lez v0, :cond_2

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_2
    return-void
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a06eb

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    move-object v0, p2

    .line 16
    move-object v2, p1

    .line 17
    .line 18
    .line 19
    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 20
    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->v(Lcom/narvii/guideline/GuidelineFragment;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v1, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 31
    .line 32
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 36
    .line 37
    const-string v2, "/community/official-guideline"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v2, "language"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0d0114

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 27
    .line 28
    .line 29
    const p3, 0x7f1207fe

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object p1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->t(Lcom/narvii/guideline/GuidelineFragment;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/guideline/CommunityGuideline;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/guideline/CommunityGuideline;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->u(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    return v1

    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    .line 37
    if-eq v2, v3, :cond_3

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    move-object p1, p3

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/model/Media;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    const-class p3, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, p3}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    const-class p4, Lcom/narvii/media/MediaGalleryOptionActivity;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .line 75
    const-string p2, "list"

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    const-string p2, "position"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    const-string p2, "parent"

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 100
    :goto_1
    return v1

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 104
    move-result p1

    .line 105
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/guideline/OfficialGuidelineResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/guideline/OfficialGuidelineResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/guideline/CommunityGuideline;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/guideline/OfficialGuidelineResponse;

    invoke-direct {v0}, Lcom/narvii/guideline/OfficialGuidelineResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/guideline/OfficialGuidelineResponse;->officialGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/guideline/CommunityGuideline;

    invoke-virtual {p0, p1}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->setObject(Lcom/narvii/guideline/CommunityGuideline;)V

    return-void
.end method
