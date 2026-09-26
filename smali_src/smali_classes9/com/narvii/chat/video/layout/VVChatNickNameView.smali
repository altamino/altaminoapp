.class public Lcom/narvii/chat/video/layout/VVChatNickNameView;
.super Lcom/narvii/widget/NicknameView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NicknameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 14
    return-void
.end method
