.class Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;
.super Ljava/lang/Object;
.source "VideoPresenterItemView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VideoPresenterItemView;->updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VideoPresenterItemView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;->this$0:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 183
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;->this$0:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-static {p2}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->access$000(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
