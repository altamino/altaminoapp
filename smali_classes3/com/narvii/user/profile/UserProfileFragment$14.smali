.class Lcom/narvii/user/profile/UserProfileFragment$14;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

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

    .line 1181
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/Object;I)V
    .locals 8

    .line 1184
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return-void

    .line 1188
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/Item;

    const-string v6, "loggingSource"

    const-string v7, "Source"

    if-eqz v1, :cond_1

    .line 1189
    move-object v1, p1

    check-cast v1, Lcom/narvii/model/Item;

    iget-object p1, v0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    iget-object v2, p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    invoke-static/range {v0 .. v5}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 1190
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p2

    const-string v0, "fromMyCatalog"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "User Profile"

    .line 1191
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1194
    :cond_1
    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_2

    .line 1195
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/narvii/item/post/ItemPostActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1196
    new-instance p2, Lcom/narvii/item/post/ItemPost;

    invoke-direct {p2}, Lcom/narvii/item/post/ItemPost;-><init>()V

    .line 1197
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "post"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "User Profile > Add favorite"

    .line 1198
    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1201
    :cond_2
    sget-object p2, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_3

    .line 1202
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$600(Lcom/narvii/user/profile/UserProfileFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
