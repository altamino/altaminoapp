.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)Z

    move-result v0

    const-string v1, "single"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 238
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$4;->call(Landroid/content/Intent;)V

    return-void
.end method
