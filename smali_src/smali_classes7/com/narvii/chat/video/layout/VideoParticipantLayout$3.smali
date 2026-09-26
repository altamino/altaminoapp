.class Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

.field final synthetic val$blurImageView:Lcom/narvii/widget/BlurImageView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/widget/BlurImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;->val$blurImageView:Lcom/narvii/widget/BlurImageView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p3, 0x4

    .line 8
    .line 9
    if-ne p2, p3, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;->val$blurImageView:Lcom/narvii/widget/BlurImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/widget/BlurImageView;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_0
    return-void
.end method
