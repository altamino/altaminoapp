.class Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;->this$0:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p3, 0x4

    .line 2
    .line 3
    if-ne p2, p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;->this$0:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->d(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)Lcom/narvii/widget/BlurImageView;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_0
    return-void
.end method
