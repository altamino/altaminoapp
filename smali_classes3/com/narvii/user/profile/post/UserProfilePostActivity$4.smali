.class Lcom/narvii/user/profile/post/UserProfilePostActivity$4;
.super Ljava/lang/Object;
.source "UserProfilePostActivity.java"

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

    .line 572
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iput-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    iput-object p3, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    iput-object p4, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameError:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 588
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-static {p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->access$200(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameError:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 2

    .line 580
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-static {p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->access$200(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getFrameId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->id:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 581
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$avatarFrameLoading:Lcom/narvii/widget/SpinningView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;->val$post:Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-static {p2, p1, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->access$300(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
