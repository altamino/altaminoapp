.class Lcom/narvii/media/PhoneImagePickerFragment$3;
.super Ljava/lang/Object;
.source "PhoneImagePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/PhoneImagePickerFragment;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;

.field final synthetic val$membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/wallet/MembershipService;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iput-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_1

    .line 269
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 270
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    const-string v0, "HD Image (Dialog)"

    if-eqz p1, :cond_0

    .line 271
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 272
    iput-object v0, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$3;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 276
    iput-object v0, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
