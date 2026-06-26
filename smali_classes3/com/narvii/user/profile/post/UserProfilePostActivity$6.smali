.class Lcom/narvii/user/profile/post/UserProfilePostActivity$6;
.super Ljava/lang/Object;
.source "UserProfilePostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/UserProfilePostActivity;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iput-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 716
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;->val$callback:Lcom/narvii/util/Callback;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 712
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;->call(Ljava/lang/Boolean;)V

    return-void
.end method
