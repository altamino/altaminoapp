.class Lcom/narvii/sharedfolder/MediaSelectFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MediaSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

.field final synthetic val$imageView:Lcom/narvii/widget/TouchImageView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MediaSelectFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;->val$progressBar:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;->val$imageView:Lcom/narvii/widget/TouchImageView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;->val$progressBar:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;->val$imageView:Lcom/narvii/widget/TouchImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x1

    .line 10
    .line 11
    if-ne p2, p3, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p3, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 17
    return-void
.end method
