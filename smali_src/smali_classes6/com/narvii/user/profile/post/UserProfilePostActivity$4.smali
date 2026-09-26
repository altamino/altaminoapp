.class Lcom/narvii/user/profile/post/UserProfilePostActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/UserProfilePostActivity;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

.field final synthetic val$avatarFrameError:Landroid/widget/ImageView;

.field final synthetic val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

.field final synthetic val$post:Lcom/narvii/user/profile/post/UserProfilePost;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/widget/SpinningView;Lcom/narvii/user/profile/post/UserProfilePost;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameError:Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->y(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameError:Landroid/widget/ImageView;

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->y(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->id:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->z(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
