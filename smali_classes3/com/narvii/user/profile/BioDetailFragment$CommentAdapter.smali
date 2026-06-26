.class Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "BioDetailFragment.java"


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

    .line 267
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 268
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Bio"

    .line 269
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 270
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method


# virtual methods
.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

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

    .line 280
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
