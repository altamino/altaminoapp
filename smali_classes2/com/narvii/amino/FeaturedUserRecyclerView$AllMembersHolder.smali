.class public final Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeaturedUserRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/FeaturedUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AllMembersHolder"
.end annotation


# instance fields
.field private allMembers:Landroid/view/View;

.field private memberCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;


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

    .line 62
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0906dd

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.member_count)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->memberCount:Landroid/widget/TextView;

    const p1, 0x7f09009a

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.all_member_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->allMembers:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getAllMembers()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->allMembers:Landroid/view/View;

    return-object v0
.end method

.method public final getMemberCount()Landroid/widget/TextView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->memberCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setAllMembers(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->allMembers:Landroid/view/View;

    return-void
.end method

.method public final setMemberCount(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->memberCount:Landroid/widget/TextView;

    return-void
.end method
