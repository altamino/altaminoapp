.class public final Landroidx/media/AudioFocusRequestCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

.field private mFocusChangeHandler:Landroid/os/Handler;

.field private mFocusGain:I

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mPauseOnDuck:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/media/AudioFocusRequestCompat;->FOCUS_DEFAULT_ATTR:Landroidx/media/AudioAttributesCompat;

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->b(I)Landroidx/media/AudioFocusRequestCompat$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/media/AudioFocusRequestCompat;)V
    .locals 1
    .param p1    # Landroidx/media/AudioFocusRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Landroidx/media/AudioFocusRequestCompat;->FOCUS_DEFAULT_ATTR:Landroidx/media/AudioAttributesCompat;

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->c()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusGain:I

    .line 7
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->d()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusChangeHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mAudioAttributesCompat:Landroidx/media/AudioAttributesCompat;

    .line 10
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->e()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mPauseOnDuck:Z

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AudioFocusRequestCompat to copy must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public b(I)Landroidx/media/AudioFocusRequestCompat$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->a(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroidx/media/AudioFocusRequestCompat$Builder;->mFocusGain:I

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "Illegal audio focus gain type "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method
