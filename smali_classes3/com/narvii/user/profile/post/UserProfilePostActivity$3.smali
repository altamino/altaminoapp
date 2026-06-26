.class Lcom/narvii/user/profile/post/UserProfilePostActivity$3;
.super Ljava/lang/Object;
.source "UserProfilePostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/UserProfilePostActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/narvii/model/User;->onlineStatus:I

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-static {p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->access$100(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 247
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
