.class Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;
.super Ljava/lang/Object;
.source "SharedPhotoGalleryPickFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->setViewPagerIdle(Z)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->access$100(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    return-void
.end method
