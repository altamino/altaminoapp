.class Lcom/narvii/chat/video/layout/LiveCallingLayout$1;
.super Ljava/lang/Object;
.source "LiveCallingLayout.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/LiveCallingLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 128
    iget-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {p2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$000(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/widget/BlurImageView;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
