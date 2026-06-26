.class public Lcom/narvii/editor/attachment/caption/CaptionStyleFragment;
.super Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;
.source "CaptionStyleFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetSelected(Lcom/narvii/asset/IAsset;Ljava/io/File;)Z
    .locals 2

    .line 16
    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const-string v1, ".captionstyle"

    .line 17
    invoke-static {p2, v0, v1}, Lcom/narvii/editor/utils/MeisheUtils;->installAsset(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    invoke-interface {p1}, Lcom/narvii/asset/IAsset;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
