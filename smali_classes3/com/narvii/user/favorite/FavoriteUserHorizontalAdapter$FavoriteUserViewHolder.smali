.class Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FavoriteUserHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteUserViewHolder"
.end annotation


# instance fields
.field emojioneView:Lcom/narvii/widget/EmojioneView;

.field moodView:Lcom/narvii/widget/MoodView;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field onlineView:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;Landroid/view/View;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->this$0:Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;

    .line 128
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090c10

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090764

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090720

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/MoodView;

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    const p1, 0x7f090562

    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EmojioneView;

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->emojioneView:Lcom/narvii/widget/EmojioneView;

    const p1, 0x7f0907ba

    .line 133
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->onlineView:Landroid/view/View;

    return-void
.end method
