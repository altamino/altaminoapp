.class Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->val$progressText:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)I

    .line 6
    move-result p3

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p2}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 10
    move-result p3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorFragment;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p3, v0}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorFragment;IZ)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorFragment$2;->val$progressText:Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    mul-int/lit8 p2, p2, 0x64

    .line 29
    .line 30
    div-int/lit16 p2, p2, 0xff

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "%"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
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
