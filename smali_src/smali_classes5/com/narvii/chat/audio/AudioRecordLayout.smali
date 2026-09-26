.class public Lcom/narvii/chat/audio/AudioRecordLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;,
        Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;
    }
.end annotation


# static fields
.field public static final MIN_RECORD_DURATION:I = 0x3e8

.field public static final STATE_CANCEL:I = 0x3

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_RECORDING:I = 0x2


# instance fields
.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field public audioRecordRect:Landroid/graphics/Rect;

.field audioRecordView:Landroid/view/View;

.field audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

.field public beyondMaxDuration:Z

.field public final circleCancelColor:I

.field public final circlePrimaryColor:I

.field fragment:Landroidx/fragment/app/Fragment;

.field holdToTalk:Landroid/widget/TextView;

.field private mCurrentState:I

.field mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

.field onRecordTimeChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field onStatusChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field recordBg:Landroid/view/View;

.field recordEventFinishListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/RecordEventFinishListener;",
            ">;"
        }
    .end annotation
.end field

.field recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

.field recordIcon:Landroid/widget/ImageView;

.field recordInfoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/RecordInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field releaseToDelete:Landroid/widget/TextView;

.field releaseToSend:Landroid/widget/TextView;

.field removeBin:Landroid/view/View;

.field slideDownToDelete:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 7
    .line 8
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    .line 14
    .line 15
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 28
    .line 29
    new-instance p2, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string v0, "mediaRecorder"

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/chat/audio/AudioHelper;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p1}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0604ab

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 70
    move-result p1

    .line 71
    .line 72
    .line 73
    const p2, 0x3e4ccccd    # 0.2f

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 77
    move-result p1

    .line 78
    .line 79
    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0604aa

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 90
    move-result p1

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 94
    move-result p1

    .line 95
    .line 96
    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circleCancelColor:I

    .line 97
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/audio/AudioRecordLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->setStatus(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_5

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    const/4 v0, 0x3

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 38
    .line 39
    iget v2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circleCancelColor:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 50
    const/4 v1, 0x4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    const v1, -0x7a8a9

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    const v1, 0x7f0801bb

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 100
    .line 101
    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    check-cast v1, Landroid/view/ViewGroup;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 123
    .line 124
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 125
    .line 126
    .line 127
    const v1, 0x7f0801ba

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 143
    .line 144
    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 148
    .line 149
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    check-cast v1, Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, p1}, Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;->onStatusChange(I)V

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    return-void
.end method

.method private setStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    const v0, 0x7f120fd2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_0
    return-void
.end method

.method private wantToCancel(II)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    .line 10
    if-le p2, p1, :cond_1

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    return v0
.end method


# virtual methods
.method public addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a015d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0675

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0c0b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0d24

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0c0a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0c0c

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    .line 66
    const/4 v0, 0x1

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->setStatus(I)V

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$3;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$3;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$4;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$4;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$5;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$5;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0a0bf1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 105
    .line 106
    .line 107
    const v0, 0x7f0a0bf0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 114
    .line 115
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 116
    .line 117
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    const v2, 0x7f0604ab

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 138
    move-result v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 144
    .line 145
    .line 146
    const v1, 0x7f0801ba

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    const v0, 0x7f0a0ff1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 161
    .line 162
    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x2

    .line 18
    .line 19
    if-eqz v0, :cond_a

    .line 20
    const/4 v5, 0x3

    .line 21
    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    if-eq v0, v4, :cond_0

    .line 25
    .line 26
    if-eq v0, v5, :cond_2

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_d

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->wantToCancel(II)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v5}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0, v4}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->stopAnimation()V

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onBeyondMaxOver()V

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-direct {p0, v3}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 89
    return v3

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordEnd()V

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    check-cast v0, Lcom/narvii/chat/RecordEventFinishListener;

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Lcom/narvii/chat/RecordEventFinishListener;->onRecordEnd()V

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_6
    iget p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 140
    .line 141
    if-ne p1, v4, :cond_9

    .line 142
    .line 143
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    .line 147
    move-result p1

    .line 148
    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->getRecordDuration()J

    .line 155
    move-result-wide v0

    .line 156
    .line 157
    const-wide/16 v4, 0x3e8

    .line 158
    .line 159
    cmp-long p1, v0, v4

    .line 160
    .line 161
    if-gez p1, :cond_8

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 164
    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v0

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onMessageTooShort()V

    .line 185
    goto :goto_3

    .line 186
    .line 187
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    .line 191
    goto :goto_4

    .line 192
    .line 193
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->finishRecord()V

    .line 197
    .line 198
    .line 199
    :goto_4
    invoke-direct {p0, v3}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_9
    if-ne p1, v5, :cond_d

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    .line 209
    .line 210
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 211
    .line 212
    .line 213
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, Landroid/view/View;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 223
    move-result v0

    .line 224
    div-int/2addr v0, v4

    .line 225
    int-to-float v0, v0

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    const/high16 v5, 0x42200000    # 40.0f

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 235
    move-result v1

    .line 236
    .line 237
    const/high16 v5, 0x40000000    # 2.0f

    .line 238
    div-float/2addr v1, v5

    .line 239
    sub-float/2addr v0, v1

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    const/high16 v5, 0x41f00000    # 30.0f

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 249
    move-result v1

    .line 250
    sub-float/2addr v0, v1

    .line 251
    float-to-int v0, v0

    .line 252
    .line 253
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 254
    .line 255
    new-array v5, v4, [F

    .line 256
    .line 257
    .line 258
    fill-array-data v5, :array_0

    .line 259
    .line 260
    const-string v6, "rotation"

    .line 261
    .line 262
    .line 263
    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    .line 267
    .line 268
    new-array v6, v4, [F

    .line 269
    const/4 v7, 0x0

    .line 270
    .line 271
    aput v7, v6, v2

    .line 272
    int-to-float v7, v0

    .line 273
    .line 274
    aput v7, v6, v3

    .line 275
    .line 276
    const-string v7, "TranslationY"

    .line 277
    .line 278
    .line 279
    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 280
    move-result-object v5

    .line 281
    .line 282
    new-array v4, v4, [Landroid/animation/Animator;

    .line 283
    .line 284
    aput-object v1, v4, v2

    .line 285
    .line 286
    aput-object v5, v4, v3

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 290
    .line 291
    const-wide/16 v1, 0x12c

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 295
    .line 296
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 297
    .line 298
    .line 299
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    .line 307
    new-instance v1, Lcom/narvii/chat/audio/AudioRecordLayout$2;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout$2;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    goto :goto_5

    .line 315
    .line 316
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    .line 320
    move-result v0

    .line 321
    .line 322
    if-eqz v0, :cond_b

    .line 323
    return v2

    .line 324
    .line 325
    :cond_b
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 329
    move-result-object v5

    .line 330
    .line 331
    const-string v6, "android.permission.RECORD_AUDIO"

    .line 332
    .line 333
    .line 334
    filled-new-array {v6}, [Ljava/lang/String;

    .line 335
    move-result-object v7

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v5, v7}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 339
    move-result v0

    .line 340
    .line 341
    if-eqz v0, :cond_e

    .line 342
    .line 343
    new-instance v0, Landroid/graphics/Rect;

    .line 344
    .line 345
    .line 346
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 347
    .line 348
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    .line 349
    .line 350
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordView:Landroid/view/View;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 354
    .line 355
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 359
    move-result p1

    .line 360
    .line 361
    if-nez p1, :cond_c

    .line 362
    return v2

    .line 363
    .line 364
    .line 365
    :cond_c
    invoke-direct {p0, v4}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 366
    .line 367
    iput-boolean v2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    .line 368
    .line 369
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 370
    .line 371
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$1;

    .line 372
    .line 373
    .line 374
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$1;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaRecordManager;->startRecord(Lcom/narvii/media/IMediaRecordListener;)V

    .line 378
    :cond_d
    :goto_5
    return v3

    .line 379
    .line 380
    :cond_e
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->fragment:Landroidx/fragment/app/Fragment;

    .line 381
    .line 382
    if-nez p1, :cond_f

    .line 383
    return v2

    .line 384
    .line 385
    .line 386
    :cond_f
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 387
    move-result-object p1

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v6}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 391
    move-result-object p1

    .line 392
    .line 393
    const/16 v0, 0xc8

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 397
    move-result-object p1

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 401
    return v2

    .line 402
    nop

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    :array_0
    .array-data 4
        0x0
        0x430c0000    # 140.0f
    .end array-data
.end method

.method public removeRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setRecordFinishListener(Lcom/narvii/chat/RecordFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

    return-void
.end method
