.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreateCommuViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

.field private final tintIcon:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090b7c

    .line 349
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.tint_add)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->tintIcon:Lcom/narvii/widget/TintButton;

    .line 352
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->tintIcon:Lcom/narvii/widget/TintButton;

    const-string p2, "#FF50E3C2"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-void
.end method


# virtual methods
.method public final getTintIcon()Lcom/narvii/widget/TintButton;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;->tintIcon:Lcom/narvii/widget/TintButton;

    return-object v0
.end method
