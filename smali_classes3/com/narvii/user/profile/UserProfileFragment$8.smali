.class Lcom/narvii/user/profile/UserProfileFragment$8;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->popupCustomMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$fbmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$fbmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 847
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$fbmp:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;)V

    .line 848
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
