.class public Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "LeaderBoardShareFragment.java"


# static fields
.field public static final KEY_STATISTIC_TAB:Ljava/lang/String; = "statistics_tab"


# instance fields
.field leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090924

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 50
    iget-object v0, p0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;->leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    invoke-virtual {v0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->getScreenShot()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    const v0, 0x7f0b0618

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 8

    const v0, 0x7f090924

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "leaderboard"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "config"

    .line 59
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "community"

    .line 60
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 61
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/narvii/share/SharePayload;

    invoke-direct {v2}, Lcom/narvii/share/SharePayload;-><init>()V

    const/4 v3, 0x0

    .line 64
    iput-object v3, v2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0f0fbc

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 66
    iput-boolean v7, v2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v3, v1, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 68
    iput-object v0, v2, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 69
    iput-object p1, v2, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;->leaderBoardShareHelper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0f0ac8

    .line 38
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    const-string p2, "leaderboard"

    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    return-void
.end method
