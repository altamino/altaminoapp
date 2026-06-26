.class public Lcom/narvii/chat/video/VVChatMembershipNameLayout;
.super Landroid/widget/LinearLayout;
.source "VVChatMembershipNameLayout.java"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field forceHideBadge:Z

.field nicknameView:Lcom/narvii/widget/NicknameView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/16 p1, 0x10

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090597

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-void
.end method

.method public setForceHideBadge(Z)V
    .locals 1

    .line 33
    iput-boolean p1, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->forceHideBadge:Z

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge(Z)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
