.class public Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "SourceFile"


# static fields
.field public static final KEY_STATISTIC_TAB:Ljava/lang/String; = "statistics_tab"


# instance fields
.field leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    .line 4
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
    iget-object v0, p0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;->leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->getScreenShot()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0d06ca

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 7

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
    const-string v0, "leaderboard"

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
    const/4 v3, 0x0

    .line 48
    .line 49
    iput-object v3, v2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x1

    .line 55
    .line 56
    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v5, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 59
    const/4 v6, 0x0

    .line 60
    .line 61
    aput-object v5, v4, v6

    .line 62
    .line 63
    .line 64
    const v5, 0x7f1210c7

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    iput-object v3, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 71
    .line 72
    iput-boolean v6, v2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 73
    .line 74
    iget-object v1, v1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, v2, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v0, v2, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 79
    .line 80
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;->leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120b7b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 16
    .line 17
    const-string p2, "leaderboard"

    .line 18
    .line 19
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 20
    return-void
.end method
