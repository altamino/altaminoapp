.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->updateDetailView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

.field final synthetic val$imageView:Lcom/narvii/widget/TouchImageView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;->val$imageView:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$1;->val$imageView:Lcom/narvii/widget/TouchImageView;

    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method
