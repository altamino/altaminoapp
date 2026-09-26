.class Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;
.super Lcom/narvii/asset/AssetAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionFontFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionFontFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 1
    invoke-direct {p0, p2}, Lcom/narvii/asset/AssetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/video/attachment/caption/CaptionFontFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/NVObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/narvii/asset/AssetAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method


# virtual methods
.method protected autoLoadInitData()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionFontFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionFontDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionFontDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    instance-of p1, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionFontFragment$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 24
    .line 25
    const-string v1, "font"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V

    .line 29
    :cond_0
    return-object v0
.end method
