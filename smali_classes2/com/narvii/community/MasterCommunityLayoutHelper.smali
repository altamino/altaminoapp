.class public final Lcom/narvii/community/MasterCommunityLayoutHelper;
.super Lcom/narvii/community/CommunityLayoutHelper;
.source "MasterCommunityLayoutHelper.kt"


# instance fields
.field private context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super/range {p0 .. p5}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const p3, 0x7f0907b0

    .line 17
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/OnlineMemberBar;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 18
    iget-object p3, p2, Lcom/narvii/model/Community;->activeInfo:Lcom/narvii/model/ActiveInfo;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/narvii/model/ActiveInfo;->latestActiveUserList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/narvii/model/Community;->activeInfo:Lcom/narvii/model/ActiveInfo;

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/narvii/model/ActiveInfo;->memberCount:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/OnlineMemberBar;->setUserList(Ljava/util/List;I)V

    :cond_2
    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final setContext(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/narvii/community/MasterCommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method
