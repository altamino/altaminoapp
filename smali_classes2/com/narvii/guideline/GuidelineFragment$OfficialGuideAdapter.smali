.class Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "GuidelineFragment.java"


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

    .line 126
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 127
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 173
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/guideline/CommunityGuideline;

    .line 175
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$300(Lcom/narvii/guideline/GuidelineFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$000(Lcom/narvii/guideline/GuidelineFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 176
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    .line 177
    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 179
    sget-object v2, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v3, v1, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v3, v1, p1, v2}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 182
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 189
    iget-object v1, v0, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v2, v0, Lcom/narvii/guideline/CommunityGuideline;->content:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 193
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 167
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const v1, 0x7f090571

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    const-string v0, "community"

    .line 154
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 155
    iget-object v1, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v1}, Lcom/narvii/guideline/GuidelineFragment;->access$200(Lcom/narvii/guideline/GuidelineFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 160
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "/community/official-guideline"

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "language"

    .line 161
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 207
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    const v1, 0x7f0b00fe

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    .line 211
    :cond_0
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_1

    .line 212
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 213
    iget-object p2, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    const p3, 0x7f0f074e

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 216
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

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

    .line 201
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 202
    sget-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->access$000(Lcom/narvii/guideline/GuidelineFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 144
    const-class v0, Lcom/narvii/guideline/CommunityGuideline;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 222
    instance-of v0, p3, Lcom/narvii/model/Media;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->this$0:Lcom/narvii/guideline/GuidelineFragment;

    invoke-static {v0}, Lcom/narvii/guideline/GuidelineFragment;->access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 227
    :cond_1
    iget-object v0, v0, Lcom/narvii/guideline/CommunityGuideline;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-eqz p3, :cond_2

    .line 230
    move-object p1, p3

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    const-class p3, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1, p2, p3}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 233
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "list"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "position"

    .line 236
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "parent"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v1

    .line 243
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 149
    const-class v0, Lcom/narvii/guideline/OfficialGuidelineResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/guideline/CommunityGuideline;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/narvii/guideline/OfficialGuidelineResponse;

    invoke-direct {v0}, Lcom/narvii/guideline/OfficialGuidelineResponse;-><init>()V

    .line 138
    iput-object p1, v0, Lcom/narvii/guideline/OfficialGuidelineResponse;->officialGuideline:Lcom/narvii/guideline/CommunityGuideline;

    .line 139
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/narvii/guideline/CommunityGuideline;

    invoke-virtual {p0, p1}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;->setObject(Lcom/narvii/guideline/CommunityGuideline;)V

    return-void
.end method
