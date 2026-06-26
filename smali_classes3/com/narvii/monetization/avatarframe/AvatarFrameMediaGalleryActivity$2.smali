.class Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;
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

    .line 124
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ProfileFrameBottomBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 128
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$2;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)V

    return-void
.end method
