.class Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;
.super Ljava/lang/Object;
.source "AvatarFrameMediaGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$500(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ProfileFrameBottomBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 192
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$500(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$500(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 194
    iget-boolean p1, p1, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isMembership:Z

    if-eqz p1, :cond_1

    .line 195
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$600(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$4;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$500(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->jumpToStoreWithCommunityCheck(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method
