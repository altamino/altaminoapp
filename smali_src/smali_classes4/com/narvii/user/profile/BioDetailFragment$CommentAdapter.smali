.class Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/BioDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Bio"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 14
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 3
    .line 4
    const/16 v1, 0x6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method
