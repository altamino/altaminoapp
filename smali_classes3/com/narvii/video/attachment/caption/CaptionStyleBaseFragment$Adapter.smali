.class Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;
.super Lcom/narvii/asset/AssetAdapter;
.source "CaptionStyleBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/narvii/asset/AssetAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method


# virtual methods
.method protected autoLoadInitData()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2

    .line 92
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionStyleDataSource;

    invoke-direct {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionStyleDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionStyleBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const-string v1, "style"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V

    :cond_0
    return-object v0
.end method
