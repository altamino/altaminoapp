.class Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "selectMode"

    .line 9
    .line 10
    const-string v1, "singlePickChoosePhoto"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "filterAlbumId"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "toAlbumId"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void
.end method
