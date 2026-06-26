.class public final Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;
.super Ljava/lang/Object;
.source "ProfileListFragment.kt"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/ProfileListFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarFrameError:Landroid/view/View;

.field final synthetic $avatarFrameLoading:Lcom/narvii/widget/SpinningView;

.field final synthetic this$0:Lcom/narvii/master/home/profile/ProfileListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/SpinningView;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    iput-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    iput-object p3, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameError:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const-string p3, "url"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 476
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameError:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 3

    const-string v0, "resp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->id:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 469
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    if-eqz p2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, p1, v1, v2, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    const-string p1, "tag"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
