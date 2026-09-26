.class public final Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nicknameView:Lcom/narvii/widget/NicknameView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/widget/InfluencerRecyclerView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/InfluencerRecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0f36

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a09f9

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 41
    .line 42
    .line 43
    const p1, 0x7f0a0559

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public final getFanClubMemberCount()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public final getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final setFanClubMemberCount(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->fanClubMemberCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setNicknameView(Lcom/narvii/widget/NicknameView;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/NicknameView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-void
.end method

.method public final setUserAvatarLayout(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/UserAvatarLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method
