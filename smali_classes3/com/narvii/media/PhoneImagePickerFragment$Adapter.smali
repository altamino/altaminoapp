.class Lcom/narvii/media/PhoneImagePickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "PhoneImagePickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 492
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z
    .locals 3

    .line 524
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->access$400(Lcom/narvii/media/PhoneImagePickerFragment;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$400(Lcom/narvii/media/PhoneImagePickerFragment;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$500(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$600(Lcom/narvii/media/PhoneImagePickerFragment;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$700(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$600(Lcom/narvii/media/PhoneImagePickerFragment;)I

    move-result p1

    if-eq p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z
    .locals 0

    .line 520
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$300(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private openDetail(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object v1, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 724
    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$300(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 727
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 728
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 730
    invoke-virtual {v2}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 736
    :cond_2
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndc://fragment/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v0, :cond_3

    .line 737
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3

    .line 738
    sget-object v2, Lcom/narvii/media/MediaPickerGalleryFragment;->MEDIA_ITEM_LIST:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 740
    :cond_3
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    :goto_1
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1400(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-class v2, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const-string v3, "class"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 744
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v3, "single"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 745
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v3, "maximum"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    const-string v3, "maxCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v3, "maxStr"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v0, "position"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v0, "minGifWidth"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v0, "minGifHeight"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v0, "minWidth"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v0, "minHeight"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v0, "showHQBar"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 753
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const-string v0, "hqChecked"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const/16 v0, 0x58

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openVideoEditor(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 4

    .line 684
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/narvii/media/PhoneImagePickerFragment;->isSupportMeishe:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/narvii/media/PhoneImagePickerFragment;->ffmpegInstalled:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1000(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "membership"

    .line 695
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    sget v1, Lcom/narvii/lib/R$string;->chat_video_membership_hint:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const-string v1, "fragmentRegister"

    .line 704
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/FragmentRegister;

    if-eqz v1, :cond_2

    const-string v2, "mediaEditor"

    .line 706
    invoke-virtual {v1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 708
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    iget-object v1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    const-string v3, "inputFile"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFileDir"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account"

    .line 711
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x1

    const-string v3, "isVideoTrimming"

    .line 712
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "realOutput"

    .line 713
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrivilegeOfMaxVideoDuration()I

    move-result v0

    const-string v1, "maxOutputLength"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "entryInfo"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const/16 v0, 0x63

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void

    .line 686
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 687
    sget v0, Lcom/narvii/lib/R$string;->device_not_support:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 689
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 690
    sget-object p1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "no cpu detected"

    :cond_4
    const-string v0, "VideoPicker"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 10

    .line 611
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "single"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 612
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v3, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/narvii/media/PhoneImagePickerFragment;->access$902(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 616
    :cond_1
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const/4 v4, 0x0

    const-string v5, "checkUnsupportedImageType"

    invoke-virtual {v3, v5, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v3

    .line 617
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v5}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 619
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v3, :cond_2

    .line 620
    iget-object v3, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/Utils;->getImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->invalid_input_image:I

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 626
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "config"

    .line 627
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    const/high16 v5, 0x600000

    const-string v6, "maxUploadImagePayloadLength"

    .line 628
    invoke-virtual {v3, v6, v5}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 629
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 630
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_file_too_large:I

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 637
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v5, "minGifWidth"

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v5, "minWidth"

    :goto_0
    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    .line 638
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v6, "minGifHeight"

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v6, "minHeight"

    :goto_1
    invoke-virtual {v5, v6}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v5

    if-gtz v3, :cond_6

    if-lez v5, :cond_b

    .line 640
    :cond_6
    iget v6, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 641
    iget v7, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    if-eqz v6, :cond_7

    if-nez v7, :cond_8

    .line 644
    :cond_7
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 645
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 646
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 647
    iget v6, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 648
    iget v7, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    .line 650
    invoke-static {v8}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    if-lez v6, :cond_9

    if-lez v3, :cond_9

    if-lt v6, v3, :cond_a

    :cond_9
    if-lez v7, :cond_b

    if-lez v5, :cond_b

    if-ge v7, v5, :cond_b

    .line 655
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_image_picker_image_too_small:I

    invoke-static {p1, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    :cond_b
    if-lez v0, :cond_d

    .line 662
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v0, :cond_d

    .line 663
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const-string v5, "maxStr"

    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 664
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 665
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    sget v6, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_3

    .line 667
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_3

    .line 670
    :cond_d
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$300(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 677
    :cond_f
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1200(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 678
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 679
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1300(Lcom/narvii/media/PhoneImagePickerFragment;)V

    goto :goto_5

    .line 675
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$200(Lcom/narvii/media/PhoneImagePickerFragment;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 507
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 508
    instance-of v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 509
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 510
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v1

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 531
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 532
    instance-of v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz v1, :cond_4

    .line 533
    check-cast v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 534
    sget v1, Lcom/narvii/lib/R$layout;->media_image_grid:I

    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 536
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 537
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 539
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v1, p3, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->access$800(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 541
    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 542
    :goto_0
    sget v2, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 543
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_1
    invoke-virtual {v9, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    new-instance p3, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;-><init>(Lcom/narvii/media/PhoneImagePickerFragment$Adapter;ILcom/narvii/media/PhoneImagePickerFragment$Entry;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v9, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {v9, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 552
    sget p1, Lcom/narvii/lib/R$id;->membership_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "membership"

    .line 553
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/wallet/MembershipService;

    .line 554
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->hideSelect(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v2}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1000(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 556
    sget p1, Lcom/narvii/lib/R$id;->media_picker_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 557
    sget p3, Lcom/narvii/lib/R$id;->media_picker_video_time:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 559
    invoke-virtual {v0}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget p1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    int-to-long v1, p1

    .line 562
    invoke-static {v1, v2}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    .line 566
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    :goto_3
    sget p1, Lcom/narvii/lib/R$id;->grey_mask:I

    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 579
    instance-of v0, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz v0, :cond_8

    .line 580
    check-cast p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 582
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->greyItem(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 583
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$500(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isImage()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$700(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/narvii/lib/R$string;->can_not_select_image_and_video_together:I

    invoke-static {p1, p3, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 586
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$400(Lcom/narvii/media/PhoneImagePickerFragment;)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    .line 587
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    sget p5, Lcom/narvii/lib/R$string;->video_duration_less_than_one_second:I

    invoke-virtual {p1, p5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    sget v0, Lcom/narvii/lib/R$string;->video_duration_less_than_seconds:I

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p4

    invoke-virtual {p5, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p3, p1, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_1
    return p2

    :cond_4
    if-eqz p5, :cond_5

    .line 592
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    sget p4, Lcom/narvii/lib/R$id;->select:I

    if-ne p1, p4, :cond_5

    .line 593
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    goto :goto_2

    .line 595
    :cond_5
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1100(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 596
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->openVideoEditor(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    goto :goto_2

    .line 597
    :cond_6
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$300(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 598
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->selectEntry(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    goto :goto_2

    .line 600
    :cond_7
    invoke-direct {p0, p3}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->openDetail(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    :goto_2
    return p2

    .line 607
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
