.class Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->setViewPagerIdle(Z)V

    .line 15
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->r(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    .line 11
    return-void
.end method
