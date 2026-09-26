.class Lcom/narvii/media/MediaPickerGalleryFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/media/MediaPickerGalleryFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->val$membershipService:Lcom/narvii/wallet/MembershipService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    const-string v0, "HD Image (Dialog)"

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    iput-object v0, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$3;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    iput-object v0, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method
