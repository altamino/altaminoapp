.class public Lcom/narvii/quiz/QuizMilestoneAvatarView;
.super Landroid/widget/FrameLayout;
.source "QuizMilestoneAvatarView.java"


# instance fields
.field avatar:Lcom/narvii/widget/UserAvatarLayout;

.field milestone:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b05c2

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090711

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->milestone:Lcom/narvii/widget/TintButton;

    const p1, 0x7f090c10

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method


# virtual methods
.method public setMileStoneColor(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->milestone:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneAvatarView;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-void
.end method
