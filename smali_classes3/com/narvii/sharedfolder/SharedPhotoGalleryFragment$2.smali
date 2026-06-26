.class Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;
.super Ljava/lang/Object;
.source "SharedPhotoGalleryFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
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

    .line 117
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    return-void
.end method
