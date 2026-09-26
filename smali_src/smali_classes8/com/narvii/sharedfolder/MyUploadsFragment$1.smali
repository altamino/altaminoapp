.class Lcom/narvii/sharedfolder/MyUploadsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPhotosCountChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsFragment$1;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f121078

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method
