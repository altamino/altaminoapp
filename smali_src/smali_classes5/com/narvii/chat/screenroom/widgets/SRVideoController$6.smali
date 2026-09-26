.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initControllerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    .line 15
    const/4 v0, 0x4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0fe7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/widget/VerticalSeekBar;

    .line 48
    .line 49
    iput-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const/high16 v0, 0x41400000    # 12.0f

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 61
    move-result p1

    .line 62
    float-to-int p1, p1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 67
    .line 68
    div-int/lit8 v1, p1, 0x2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    .line 85
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getMediaVolume()F

    .line 93
    move-result p1

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->gainToVolume(F)F

    .line 97
    move-result p1

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 105
    move-result v1

    .line 106
    int-to-float v1, v1

    .line 107
    mul-float/2addr p1, v1

    .line 108
    float-to-int p1, p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lcom/narvii/widget/VerticalSeekBar;->setProgress(I)V

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    .line 116
    const/4 v0, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_0
    return-void
.end method
