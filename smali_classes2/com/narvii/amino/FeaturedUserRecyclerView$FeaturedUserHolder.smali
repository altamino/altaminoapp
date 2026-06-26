.class public final Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeaturedUserRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/FeaturedUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FeaturedUserHolder"
.end annotation


# instance fields
.field private moodView:Lcom/narvii/widget/MoodView;

.field private nicknameView:Lcom/narvii/widget/NicknameView;

.field private onlineDot:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V
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

    .line 55
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.user_avatar_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090764

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.nickname)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090720

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.mood)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/MoodView;

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->moodView:Lcom/narvii/widget/MoodView;

    const p1, 0x7f0907ba

    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.online_status_oval)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->onlineDot:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getMoodView()Lcom/narvii/widget/MoodView;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->moodView:Lcom/narvii/widget/MoodView;

    return-object v0
.end method

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public final getOnlineDot()Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->onlineDot:Landroid/view/View;

    return-object v0
.end method

.method public final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final setMoodView(Lcom/narvii/widget/MoodView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->moodView:Lcom/narvii/widget/MoodView;

    return-void
.end method

.method public final setNicknameView(Lcom/narvii/widget/NicknameView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-void
.end method

.method public final setOnlineDot(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->onlineDot:Landroid/view/View;

    return-void
.end method

.method public final setUserAvatarLayout(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method
