.class Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAdapter"
.end annotation


# instance fields
.field flHeight:I

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 3090
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3091
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "User Profile"

    .line 3092
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 3093
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method


# virtual methods
.method protected firstLoadingHeight()I
    .locals 1

    .line 3109
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 3098
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 3099
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 3104
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 3114
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
