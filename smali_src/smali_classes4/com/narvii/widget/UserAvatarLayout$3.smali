.class Lcom/narvii/widget/UserAvatarLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->d(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 17
    const/4 p2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->j(Lcom/narvii/widget/UserAvatarLayout;Z)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->a(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/ThumbImageView;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->f(Lcom/narvii/widget/UserAvatarLayout;Z)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->l(Lcom/narvii/widget/UserAvatarLayout;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->m(Lcom/narvii/widget/UserAvatarLayout;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->d(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->d(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result p2

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->e(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$3;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->b(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->h(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 39
    :cond_1
    return-void
.end method

.method public onProgressUpdate(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
