.class Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;
.super Ljava/lang/Object;
.source "MyUploadsBaseFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;
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
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$2;->call(Landroid/content/Intent;)V

    return-void
.end method
