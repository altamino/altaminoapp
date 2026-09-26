.class Lcom/narvii/user/profile/UserProfileFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->val$fbmp:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->val$fbmp:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->H(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$6;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    return-void
.end method
