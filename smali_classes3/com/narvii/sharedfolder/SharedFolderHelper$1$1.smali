.class Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

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

    .line 133
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 136
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectMode"

    const-string v1, "singlePickChoosePhoto"

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    const-string v1, "filterAlbumId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    const-string v1, "toAlbumId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
