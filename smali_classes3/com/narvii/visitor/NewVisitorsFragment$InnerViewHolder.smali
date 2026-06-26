.class public final Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/NewVisitorsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerViewHolder"
.end annotation


# instance fields
.field private final communityName:Landroid/widget/TextView;

.field private final communityView:Lcom/narvii/widget/CommunityIconView;

.field private final newVisitorHint:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/visitor/NewVisitorsFragment;

.field private final userAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field private final userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/NewVisitorsFragment;Landroid/view/View;)V
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

    .line 99
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902a3

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    const v0, 0x7f0902b6

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityName:Landroid/widget/TextView;

    const v0, 0x7f090c10

    .line 103
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userAvatar:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090c2e

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userName:Landroid/widget/TextView;

    const v0, 0x7f09075b

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->newVisitorHint:Landroid/widget/TextView;

    .line 108
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindCommunityWrapper(Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;)V
    .locals 6

    const-string v0, "communityWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getCount()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->isGlobal()Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_2

    .line 118
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    if-eqz p1, :cond_1

    const v0, 0x7f080379

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityName:Landroid/widget/TextView;

    const v0, 0x7f0f0731

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityName:Landroid/widget/TextView;

    const-string v3, "communityName"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v5

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_2
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1, v1, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 126
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userAvatar:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 127
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userName:Landroid/widget/TextView;

    const-string v0, "userName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v5

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->newVisitorHint:Landroid/widget/TextView;

    const-string v0, "newVisitorHint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-static {v1, v2}, Lcom/narvii/visitor/NewVisitorsFragment;->access$getVisitorsCountText(Lcom/narvii/visitor/NewVisitorsFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->newVisitorHint:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final getCommunityName()Landroid/widget/TextView;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCommunityView()Lcom/narvii/widget/CommunityIconView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->communityView:Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getNewVisitorHint()Landroid/widget/TextView;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->newVisitorHint:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUserAvatar()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userAvatar:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getUserName()Landroid/widget/TextView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->userName:Landroid/widget/TextView;

    return-object v0
.end method
