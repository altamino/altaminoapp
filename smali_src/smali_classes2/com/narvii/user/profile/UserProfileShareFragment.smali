.class public Lcom/narvii/user/profile/UserProfileShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static getDynamicProfileImg()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Bitmap;

    .line 9
    return-object v0
.end method

.method public static saveDynamicProfileImg(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/user/profile/UserProfileShareFragment;->DYNAMIC_PROFILE_IMG:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    const-wide/16 v1, 0x3e8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 8
    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0be1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/user/profile/UserProfileShareFragment;->getDynamicProfileImg()Landroid/graphics/Bitmap;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0d06cd

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0be1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "profile"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "config"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    const-string v2, "community"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/share/SharePayload;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    .line 49
    .line 50
    iput-object v3, v2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 51
    const/4 v3, 0x1

    .line 52
    .line 53
    iput-boolean v3, v2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 54
    .line 55
    iput-object v0, v2, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 56
    .line 57
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    .line 59
    const-string p1, "account"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    .line 72
    .line 73
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    const/4 v0, 0x0

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    new-array p1, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 91
    .line 92
    aput-object v1, p1, v0

    .line 93
    .line 94
    .line 95
    const v0, 0x7f1210cf

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 107
    .line 108
    aput-object v1, p1, v0

    .line 109
    .line 110
    .line 111
    const v0, 0x7f1210cc

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 118
    :goto_1
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    :goto_0
    const-class v0, Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/User;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileShareFragment;->user:Lcom/narvii/model/User;

    .line 29
    return-void
.end method
