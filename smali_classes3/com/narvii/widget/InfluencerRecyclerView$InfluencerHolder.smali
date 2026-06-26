.class public final Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InfluencerRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/InfluencerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfluencerHolder"
.end annotation


# instance fields
.field private fanClubMemberCount:Landroid/widget/TextView;

.field private nicknameView:Lcom/narvii/widget/NicknameView;

.field final synthetic this$0:Lcom/narvii/widget/InfluencerRecyclerView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.user_avatar_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090764

    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.nickname)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090420

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.fan_club_member)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getFanClubMemberCount()Landroid/widget/TextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final setFanClubMemberCount(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setNicknameView(Lcom/narvii/widget/NicknameView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-void
.end method

.method public final setUserAvatarLayout(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method
