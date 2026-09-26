.class public final Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommunityViewHolder"
.end annotation


# instance fields
.field private final avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private final btnEdit:Landroid/view/View;

.field private final communityView:Lcom/narvii/widget/CommunityIconView;

.field final synthetic this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;

.field private final tvCommunityName:Landroid/widget/TextView;

.field private final tvNickname:Lcom/narvii/widget/NicknameView;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a036b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a09f9

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0f36

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a037c

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a04b2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->btnEdit:Landroid/view/View;

    .line 64
    .line 65
    sget-object v1, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, p2}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final bindInfo(Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 3
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 16
    .line 17
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 24
    .line 25
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 31
    .line 32
    :cond_3
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    if-eqz p2, :cond_5

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    move-object v2, v0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p2, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 45
    .line 46
    :cond_5
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    .line 47
    .line 48
    if-eqz p2, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 52
    .line 53
    :cond_6
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    .line 54
    .line 55
    if-nez p2, :cond_7

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_7
    if-eqz p1, :cond_8

    .line 59
    .line 60
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    :cond_8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    return-void
.end method

.method public final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getBtnEdit()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->btnEdit:Landroid/view/View;

    return-object v0
.end method

.method public final getCommunityView()Lcom/narvii/widget/CommunityIconView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getTvCommunityName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvNickname()Lcom/narvii/widget/NicknameView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method
