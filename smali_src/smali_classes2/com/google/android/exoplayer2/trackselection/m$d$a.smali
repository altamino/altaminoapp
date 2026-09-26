.class public final Lcom/google/android/exoplayer2/trackselection/m$d$a;
.super Lcom/google/android/exoplayer2/trackselection/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private allowAudioMixedChannelCountAdaptiveness:Z

.field private allowAudioMixedDecoderSupportAdaptiveness:Z

.field private allowAudioMixedMimeTypeAdaptiveness:Z

.field private allowAudioMixedSampleRateAdaptiveness:Z

.field private allowMultipleAdaptiveSelections:Z

.field private allowVideoMixedDecoderSupportAdaptiveness:Z

.field private allowVideoMixedMimeTypeAdaptiveness:Z

.field private allowVideoNonSeamlessAdaptiveness:Z

.field private constrainAudioChannelCountToDeviceCapabilities:Z

.field private exceedAudioConstraintsIfNecessary:Z

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->e0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->e0()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->e0()V

    .line 29
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/m$d;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/m$d;

    const/16 v1, 0x3e8

    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->s0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3e9

    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->n0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3ea

    .line 36
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 38
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->o0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3f6

    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->m0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3eb

    .line 42
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->q0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3ec

    .line 45
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->j0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3ed

    .line 48
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->k0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3ee

    .line 51
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->h0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3f7

    .line 54
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->i0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3f8

    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->p0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3ef

    .line 60
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->r0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3f0

    .line 63
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->z0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    const/16 v1, 0x3f1

    .line 66
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->l0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->x0(Landroid/os/Bundle;)V

    const/16 v0, 0x3f5

    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->f0([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/exoplayer2/trackselection/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$d;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 12
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedVideoConstraintsIfNecessary:Z

    .line 13
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 14
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoNonSeamlessAdaptiveness:Z

    .line 15
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 16
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedAudioConstraintsIfNecessary:Z

    .line 17
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 18
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 19
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 20
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 21
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 22
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedRendererCapabilitiesIfNecessary:Z

    .line 23
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->tunnelingEnabled:Z

    .line 24
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowMultipleAdaptiveSelections:Z

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d;->e(Lcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->d0(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d;->f(Lcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$d;Lcom/google/android/exoplayer2/trackselection/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d;)V

    return-void
.end method

.method static synthetic M(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 3
    return p0
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedRendererCapabilitiesIfNecessary:Z

    .line 3
    return p0
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->tunnelingEnabled:Z

    .line 3
    return p0
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowMultipleAdaptiveSelections:Z

    .line 3
    return p0
.end method

.method static synthetic S(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedVideoConstraintsIfNecessary:Z

    .line 3
    return p0
.end method

.method static synthetic V(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic W(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoNonSeamlessAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic X(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic Y(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedAudioConstraintsIfNecessary:Z

    .line 3
    return p0
.end method

.method static synthetic Z(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 3
    return p0
.end method

.method static synthetic a0(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 3
    return p0
.end method

.method private static d0(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    move-result v2

    .line 17
    .line 18
    new-instance v3, Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method private e0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedVideoConstraintsIfNecessary:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowMultipleAdaptiveSelections:Z

    return-void
.end method

.method private f0([I)Landroid/util/SparseBooleanArray;
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 11
    array-length v1, p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 15
    array-length v1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget v3, p1, v2

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private x0(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x3f2

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x3f3

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/source/h1;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    :goto_0
    const/16 v2, 0x3f4

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/trackselection/m$e;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 54
    .line 55
    .line 56
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/c;->c(Lcom/google/android/exoplayer2/h$a;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    :goto_1
    if-eqz v0, :cond_3

    .line 60
    array-length v2, v0

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eq v2, v3, :cond_2

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :goto_2
    array-length v3, v0

    .line 70
    .line 71
    if-ge v2, v3, :cond_3

    .line 72
    .line 73
    aget v3, v0, v2

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    check-cast v4, Lcom/google/android/exoplayer2/source/h1;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    check-cast v5, Lcom/google/android/exoplayer2/trackselection/m$e;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->w0(ILcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/m$e;)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic A()Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public A0(IIZ)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/z$a;->K(IIZ)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public bridge synthetic B(I)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->c0(I)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/z$a;->L(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public bridge synthetic F(I)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->t0(I)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic G(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->u0(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic H(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->v0(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic J(IZ)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->y0(IZ)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic K(IIZ)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->A0(IIZ)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->B0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b0()Lcom/google/android/exoplayer2/trackselection/m$d;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d$a;Lcom/google/android/exoplayer2/trackselection/m$a;)V

    .line 7
    return-object v0
.end method

.method public c0(I)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->B(I)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method protected g0(Lcom/google/android/exoplayer2/trackselection/z;)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->E(Lcom/google/android/exoplayer2/trackselection/z;)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public h0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedChannelCountAdaptiveness:Z

    return-object p0
.end method

.method public i0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedDecoderSupportAdaptiveness:Z

    return-object p0
.end method

.method public j0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public k0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowAudioMixedSampleRateAdaptiveness:Z

    return-object p0
.end method

.method public l0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowMultipleAdaptiveSelections:Z

    return-object p0
.end method

.method public m0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedDecoderSupportAdaptiveness:Z

    return-object p0
.end method

.method public n0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public o0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->allowVideoNonSeamlessAdaptiveness:Z

    return-object p0
.end method

.method public p0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->constrainAudioChannelCountToDeviceCapabilities:Z

    return-object p0
.end method

.method public q0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedAudioConstraintsIfNecessary:Z

    return-object p0
.end method

.method public r0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedRendererCapabilitiesIfNecessary:Z

    return-object p0
.end method

.method public s0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->exceedVideoConstraintsIfNecessary:Z

    return-object p0
.end method

.method public t0(I)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->F(I)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public u0(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->G(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public v0(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->H(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public w0(ILcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/m$e;)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 2
    .param p3    # Lcom/google/android/exoplayer2/trackselection/m$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Map;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->selectionOverrides:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    return-object p0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object p0
.end method

.method public y0(IZ)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/z$a;->J(IZ)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 4
    return-object p0
.end method

.method public z0(Z)Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d$a;->tunnelingEnabled:Z

    return-object p0
.end method
