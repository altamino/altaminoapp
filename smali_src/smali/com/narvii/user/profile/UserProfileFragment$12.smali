.class Lcom/narvii/user/profile/UserProfileFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/Item;

    .line 17
    .line 18
    const-string v6, "loggingSource"

    .line 19
    .line 20
    const-string v7, "Source"

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/model/Item;

    .line 26
    .line 27
    iget-object p1, v0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    add-int/lit8 v5, p2, -0x1

    .line 34
    .line 35
    .line 36
    invoke-static/range {v0 .. v5}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 43
    move-result p2

    .line 44
    .line 45
    const-string v0, "fromMyCatalog"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    const-string p2, "User Profile"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment$12;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_1
    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 71
    .line 72
    if-ne p1, p2, :cond_2

    .line 73
    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    const-class v0, Lcom/narvii/item/post/ItemPostActivity;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    new-instance p2, Lcom/narvii/item/post/ItemPost;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2}, Lcom/narvii/item/post/ItemPost;-><init>()V

    .line 91
    .line 92
    const-string v0, "post"

    .line 93
    .line 94
    .line 95
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    const-string p2, "User Profile > Add favorite"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$12;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 116
    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment$12;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_2
    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    .line 122
    .line 123
    if-ne p1, p2, :cond_3

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->F(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 127
    :cond_3
    :goto_0
    return-void
.end method
