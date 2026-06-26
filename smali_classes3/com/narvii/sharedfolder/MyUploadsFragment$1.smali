.class Lcom/narvii/sharedfolder/MyUploadsFragment$1;
.super Ljava/lang/Object;
.source "MyUploadsFragment.java"

# interfaces
.implements Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotosCountChanged(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 51
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 53
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    goto :goto_0

    .line 55
    :cond_0
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    const p1, 0x7f0f0f6c

    .line 56
    new-instance v1, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsFragment$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
