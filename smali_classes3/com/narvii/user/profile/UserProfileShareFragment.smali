.class public Lcom/narvii/user/profile/UserProfileShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "UserProfileShareFragment.java"


# static fields
.field private static DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private user:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    return-void
.end method

.method public static getDynamicProfileImg()Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    sget-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static saveDynamicProfileImg(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090924

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 59
    invoke-static {}, Lcom/narvii/user/profile/UserProfileShareFragment;->getDynamicProfileImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0b061e

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 4

    const v0, 0x7f090924

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "profile"

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "config"

    .line 67
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "community"

    .line 68
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 69
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/narvii/share/SharePayload;

    invoke-direct {v2}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 72
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    iput-object v3, v2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v3, 0x1

    .line 73
    iput-boolean v3, v2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 74
    iput-object v0, v2, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 75
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    const-string p1, "account"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 78
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f0f0fc4

    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const p1, 0x7f0f0fc1

    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-virtual {p0, p1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    :goto_1
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    :goto_0
    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    return-void
.end method
