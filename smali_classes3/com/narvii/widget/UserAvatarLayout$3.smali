.class Lcom/narvii/widget/UserAvatarLayout$3;
.super Ljava/lang/Object;
.source "UserAvatarLayout.java"

# interfaces
.implements Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/UserAvatarLayout;->setUserInfo(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 337
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->access$400(Lcom/narvii/widget/UserAvatarLayout;Z)V

    .line 339
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$500(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->access$602(Lcom/narvii/widget/UserAvatarLayout;Z)Z

    .line 341
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$700(Lcom/narvii/widget/UserAvatarLayout;)V

    .line 342
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$800(Lcom/narvii/widget/UserAvatarLayout;)V

    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 349
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->access$902(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 350
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$900(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->access$1000(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    :cond_1
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
