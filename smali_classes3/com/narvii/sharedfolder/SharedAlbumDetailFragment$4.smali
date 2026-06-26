.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "SharedAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

.field final synthetic val$photoAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/MergeAdapter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;->val$photoAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;->val$photoAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/MergeAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
