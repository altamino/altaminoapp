.class final Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;
.super Ljava/lang/Object;
.source "VideoCameraPreviewView.kt"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VideoCameraPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;->this$0:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 52
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoCameraPreviewView$1;->this$0:Lcom/narvii/chat/video/layout/VideoCameraPreviewView;

    invoke-static {p2}, Lcom/narvii/chat/video/layout/VideoCameraPreviewView;->access$getUserBackgroundView$p(Lcom/narvii/chat/video/layout/VideoCameraPreviewView;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    const-string/jumbo p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
