.class public final Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameError:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p3, "url"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "tag"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    const/16 p2, 0x8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    :goto_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameError:Landroid/view/View;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 p2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "resp"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "tag"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v0

    .line 26
    .line 27
    :goto_0
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->id:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    const/16 v1, 0x8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    :goto_1
    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x2

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p1, v1, v2, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    .line 51
    :cond_2
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "tag"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
