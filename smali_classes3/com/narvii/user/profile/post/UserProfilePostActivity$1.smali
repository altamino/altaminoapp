.class Lcom/narvii/user/profile/post/UserProfilePostActivity$1;
.super Ljava/lang/Object;
.source "UserProfilePostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/UserProfilePostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rc:I

.field final synthetic this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 161
    :cond_0
    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->rc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->rc:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0xc8

    .line 162
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
