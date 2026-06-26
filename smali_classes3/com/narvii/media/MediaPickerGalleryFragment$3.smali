.class Lcom/narvii/media/MediaPickerGalleryFragment$3;
.super Ljava/lang/Object;
.source "MediaPickerGalleryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

.field final synthetic val$membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/wallet/MembershipService;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 273
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    const-string v0, "HD Image (Dialog)"

    if-eqz p1, :cond_0

    .line 276
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 277
    iput-object v0, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 280
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 281
    iput-object v0, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
