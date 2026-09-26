.class Lcom/narvii/widget/UserAvatarLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->c(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->d(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->c(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->uid:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/widget/UserAvatarLayout;->d(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/widget/UserAvatarLayout;->c(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v1, v1, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->userIcon:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/narvii/widget/UserAvatarLayout;->c(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    iget-boolean v2, v2, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->isMembership:Z

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->k(Lcom/narvii/widget/UserAvatarLayout;Ljava/lang/String;Z)V

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout$2;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->g(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;)V

    .line 67
    return-void
.end method
