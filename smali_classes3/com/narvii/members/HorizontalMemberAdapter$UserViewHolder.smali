.class public Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HorizontalMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/HorizontalMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserViewHolder"
.end annotation


# instance fields
.field badgeView:Landroid/widget/ImageView;

.field moodView:Lcom/narvii/widget/MoodView;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field onlineView:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/members/HorizontalMemberAdapter;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->this$0:Lcom/narvii/members/HorizontalMemberAdapter;

    .line 116
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090764

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090115

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->badgeView:Landroid/widget/ImageView;

    const p1, 0x7f090720

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/MoodView;

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    const p1, 0x7f0907ba

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->onlineView:Landroid/view/View;

    return-void
.end method
