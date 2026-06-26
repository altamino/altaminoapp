.class public final Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommunityProfileListFragment.kt"


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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902a3

    .line 171
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    const v0, 0x7f090764

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f090c10

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0902b6

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    const v0, 0x7f0903bb

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->btnEdit:Landroid/view/View;

    .line 178
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    iget-object v1, p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-virtual {v1}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 179
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->btnEdit:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindInfo(Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 186
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 189
    :cond_3
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 190
    :cond_5
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 191
    :cond_6
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :cond_7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getBtnEdit()Landroid/view/View;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->btnEdit:Landroid/view/View;

    return-object v0
.end method

.method public final getCommunityView()Lcom/narvii/widget/CommunityIconView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getTvCommunityName()Landroid/widget/TextView;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvCommunityName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvNickname()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->tvNickname:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method
