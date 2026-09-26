.class Lcom/narvii/user/profile/post/UserProfilePostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->this$0:Lcom/narvii/user/profile/post/UserProfilePostActivity;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->rc:I

    .line 21
    .line 22
    add-int/lit8 v1, v0, 0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;->rc:I

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    const-wide/16 v0, 0xc8

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method
