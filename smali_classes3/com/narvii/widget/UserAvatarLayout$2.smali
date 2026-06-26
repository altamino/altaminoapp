.class Lcom/narvii/widget/UserAvatarLayout$2;
.super Ljava/lang/Object;
.source "UserAvatarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/UserAvatarLayout;->onSizeChanged(IIII)V
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

    .line 241
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$100(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$100(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v1}, Lcom/narvii/widget/UserAvatarLayout;->access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->access$100(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->userIcon:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {v2}, Lcom/narvii/widget/UserAvatarLayout;->access$100(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->isMembership:Z

    invoke-static {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->access$300(Lcom/narvii/widget/UserAvatarLayout;Ljava/lang/String;Z)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->access$102(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    return-void
.end method
