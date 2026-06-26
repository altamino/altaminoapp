.class Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/view/LiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudienceHolder"
.end annotation


# instance fields
.field avatar:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;Landroid/view/View;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0900e4

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->avatar:Lcom/narvii/widget/NVImageView;

    .line 85
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 p2, 0x3fc00000    # 1.5f

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setMembershipStrokeRatio(F)V

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->avatar:Lcom/narvii/widget/NVImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setFixStroke(Z)V

    return-void
.end method
