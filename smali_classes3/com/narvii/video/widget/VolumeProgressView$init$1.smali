.class public final Lcom/narvii/video/widget/VolumeProgressView$init$1;
.super Ljava/lang/Object;
.source "VolumeProgressView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/VolumeProgressView;->init(ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/VolumeProgressView;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/VolumeProgressView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$1;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$1;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    sget p3, Lcom/narvii/mediaeditor/R$id;->volume_progress_text:I

    invoke-virtual {p1, p3}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p3, "volume_progress_text"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$1;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    invoke-static {p1, p2}, Lcom/narvii/video/widget/VolumeProgressView;->access$updateVolumeIcon(Lcom/narvii/video/widget/VolumeProgressView;I)V

    .line 47
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$1;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    invoke-static {p1}, Lcom/narvii/video/widget/VolumeProgressView;->access$getVolumeListener$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;->onVolumeChanged(I)V

    :cond_0
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
