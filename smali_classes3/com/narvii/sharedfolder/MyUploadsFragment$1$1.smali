.class Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;
.super Ljava/lang/Object;
.source "MyUploadsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsFragment$1;->onPhotosCountChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/MyUploadsFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsFragment$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectMode"

    const-string v1, "edit"

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsFragment$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment$1$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsFragment$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
