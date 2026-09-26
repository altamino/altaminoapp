.class Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->this$0:Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0f36

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a09f9

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a0989

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/widget/MoodView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a06d5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/widget/EmojioneView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a0a5e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->onlineView:Landroid/view/View;

    .line 59
    return-void
.end method
