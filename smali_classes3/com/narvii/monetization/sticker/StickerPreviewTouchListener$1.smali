.class Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;
.super Ljava/lang/Object;
.source "StickerPreviewTouchListener.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewSticker(Landroid/view/View;Lcom/narvii/model/Sticker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;Landroid/widget/ProgressBar;Lcom/narvii/monetization/sticker/widget/StickerImageView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;->this$0:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;->val$stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;->val$stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

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
