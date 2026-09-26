.class public final Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/InfluencerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfluencerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/InfluencerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->onBindViewHolder$lambda$0(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/InfluencerRecyclerView;->getOnUserClickListener()Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;->onUserClicked(Lcom/narvii/model/User;)V

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView;->getList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView;->getList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/model/User;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    move-object v0, p1

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getNicknameView()Lcom/narvii/widget/NicknameView;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object v2, p2, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget v2, v2, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    :goto_1
    const v3, 0x7f120df8

    .line 62
    .line 63
    .line 64
    const v4, 0x7f120d26

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;->getFanClubMemberCount()Landroid/widget/TextView;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/widget/h;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v0, p2}, Lcom/narvii/widget/h;-><init>(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0d03e2

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 37
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    .line 40
    .line 41
    const v1, 0x3f19999a    # 0.6f

    .line 42
    mul-float/2addr v0, v1

    .line 43
    float-to-int v0, v0

    .line 44
    .line 45
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/widget/InfluencerRecyclerView;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0, p1}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;-><init>(Lcom/narvii/widget/InfluencerRecyclerView;Landroid/view/View;)V

    .line 56
    return-object p2
.end method
