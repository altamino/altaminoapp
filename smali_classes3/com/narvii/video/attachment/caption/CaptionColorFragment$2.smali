.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;
.super Ljava/lang/Object;
.source "CaptionColorFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionColorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

.field final synthetic val$progressText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->val$progressText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I

    move-result p3

    invoke-static {p3, p2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Z

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V

    .line 84
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->val$progressText:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p2, p2, 0x64

    div-int/lit16 p2, p2, 0xff

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
