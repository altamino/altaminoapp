.class public final Lcom/narvii/video/widget/VolumeProgressView$init$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$2;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$2;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/widget/VolumeProgressView;->access$getBinding$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ComponentVolumeProgressBarBinding;->volumeProgressText:Landroid/widget/TextView;

    .line 9
    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v0, 0x25

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$2;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/narvii/video/widget/VolumeProgressView;->access$updateVolumeIcon(Lcom/narvii/video/widget/VolumeProgressView;I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView$init$2;->this$0:Lcom/narvii/video/widget/VolumeProgressView;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/video/widget/VolumeProgressView;->access$getVolumeListener$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p2}, Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;->onVolumeChanged(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
