.class public final Lcom/google/android/exoplayer2/trackselection/m$d;
.super Lcom/google/android/exoplayer2/trackselection/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/m$d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/trackselection/m$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/trackselection/m$d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/m$d;

.field private static final FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:I = 0x3ee

.field private static final FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:I = 0x3f7

.field private static final FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:I = 0x3ec

.field private static final FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:I = 0x3ed

.field private static final FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:I = 0x3f1

.field private static final FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:I = 0x3f6

.field private static final FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:I = 0x3e9

.field private static final FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:I = 0x3ea

.field private static final FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:I = 0x3f8

.field private static final FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NCESSARY:I = 0x3eb

.field private static final FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:I = 0x3ef

.field private static final FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:I = 0x3e8

.field private static final FIELD_RENDERER_DISABLED_INDICES:I = 0x3f5

.field private static final FIELD_SELECTION_OVERRIDES:I = 0x3f4

.field private static final FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:I = 0x3f2

.field private static final FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:I = 0x3f3

.field private static final FIELD_TUNNELING_ENABLED:I = 0x3f0


# instance fields
.field public final allowAudioMixedChannelCountAdaptiveness:Z

.field public final allowAudioMixedDecoderSupportAdaptiveness:Z

.field public final allowAudioMixedMimeTypeAdaptiveness:Z

.field public final allowAudioMixedSampleRateAdaptiveness:Z

.field public final allowMultipleAdaptiveSelections:Z

.field public final allowVideoMixedDecoderSupportAdaptiveness:Z

.field public final allowVideoMixedMimeTypeAdaptiveness:Z

.field public final allowVideoNonSeamlessAdaptiveness:Z

.field public final constrainAudioChannelCountToDeviceCapabilities:Z

.field public final exceedAudioConstraintsIfNecessary:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

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

.field public final tunnelingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/m$d;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/m$d;->DEFAULT:Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/n;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/n;-><init>()V

    .line 19
    .line 20
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/m$d;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$d$a;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z;-><init>(Lcom/google/android/exoplayer2/trackselection/z$a;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->U(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->V(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->W(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->X(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->Y(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->Z(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->a0(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->M(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->N(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->O(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->P(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->Q(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->R(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->S(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->T(Lcom/google/android/exoplayer2/trackselection/m$d$a;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$d$a;Lcom/google/android/exoplayer2/trackselection/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/m$d;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d$a;)V

    return-void
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/m$d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/m$d;->p(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/m$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/trackselection/m$d;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 3
    return-object p0
.end method

.method private static g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eq v1, v0, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-gez v3, :cond_1

    .line 26
    return v2

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method private static h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eq v1, v0, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ltz v3, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    check-cast v4, Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/trackselection/m$d;->i(Ljava/util/Map;Ljava/util/Map;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    return v2

    .line 49
    :cond_3
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method private static i(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eq v1, v0, :cond_0

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/google/android/exoplayer2/source/h1;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    :cond_2
    return v2

    .line 60
    :cond_3
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public static k(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/m$d;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static l(Landroid/util/SparseBooleanArray;)[I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 17
    move-result v2

    .line 18
    .line 19
    aput v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private static synthetic p(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/m$d;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Landroid/os/Bundle;Lcom/google/android/exoplayer2/trackselection/m$a;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/m$d$a;->b0()Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static q(Landroid/os/Bundle;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/h1;",
            "Lcom/google/android/exoplayer2/trackselection/m$e;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    new-instance v2, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v4

    .line 21
    .line 22
    if-ge v3, v4, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    check-cast v5, Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v6

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    check-cast v6, Ljava/util/Map$Entry;

    .line 53
    .line 54
    .line 55
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    check-cast v7, Lcom/google/android/exoplayer2/trackselection/m$e;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v8

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    check-cast v6, Lcom/google/android/exoplayer2/source/h1;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    const/16 v4, 0x3f2

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 98
    .line 99
    const/16 v4, 0x3f3

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/c;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    .line 112
    const/16 v4, 0x3f4

    .line 113
    .line 114
    .line 115
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/c;->e(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/m$d;->j()Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$d;

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 34
    .line 35
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 40
    .line 41
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 52
    .line 53
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 64
    .line 65
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 66
    .line 67
    if-ne v2, v3, :cond_2

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 70
    .line 71
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 72
    .line 73
    if-ne v2, v3, :cond_2

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 76
    .line 77
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 78
    .line 79
    if-ne v2, v3, :cond_2

    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 82
    .line 83
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 84
    .line 85
    if-ne v2, v3, :cond_2

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 88
    .line 89
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 90
    .line 91
    if-ne v2, v3, :cond_2

    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 94
    .line 95
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 96
    .line 97
    if-ne v2, v3, :cond_2

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 100
    .line 101
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 102
    .line 103
    if-ne v2, v3, :cond_2

    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 106
    .line 107
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/trackselection/m$d;->g(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 118
    .line 119
    .line 120
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/trackselection/m$d;->h(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 121
    move-result p1

    .line 122
    .line 123
    if-eqz p1, :cond_2

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 127
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/z;->hashCode()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/2addr v0, v1

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 11
    add-int/2addr v0, v2

    .line 12
    mul-int/2addr v0, v1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 15
    add-int/2addr v0, v2

    .line 16
    mul-int/2addr v0, v1

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 19
    add-int/2addr v0, v2

    .line 20
    mul-int/2addr v0, v1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 23
    add-int/2addr v0, v2

    .line 24
    mul-int/2addr v0, v1

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 27
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 31
    add-int/2addr v0, v2

    .line 32
    mul-int/2addr v0, v1

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 35
    add-int/2addr v0, v2

    .line 36
    mul-int/2addr v0, v1

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 39
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 43
    add-int/2addr v0, v2

    .line 44
    mul-int/2addr v0, v1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 47
    add-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    .line 50
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 51
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 55
    add-int/2addr v0, v2

    .line 56
    mul-int/2addr v0, v1

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 59
    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public j()Lcom/google/android/exoplayer2/trackselection/m$d$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m$d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d$a;-><init>(Lcom/google/android/exoplayer2/trackselection/m$d;Lcom/google/android/exoplayer2/trackselection/m$a;)V

    .line 7
    return-object v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n(ILcom/google/android/exoplayer2/source/h1;)Lcom/google/android/exoplayer2/trackselection/m$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$e;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method public o(ILcom/google/android/exoplayer2/source/h1;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/z;->toBundle()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedVideoConstraintsIfNecessary:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    const/16 v1, 0x3e9

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    const/16 v1, 0x3ea

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoNonSeamlessAdaptiveness:Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    const/16 v1, 0x3f6

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    const/16 v1, 0x3eb

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedAudioConstraintsIfNecessary:Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    const/16 v1, 0x3ec

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    const/16 v1, 0x3ed

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    const/16 v1, 0x3ee

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    .line 94
    const/16 v1, 0x3f7

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    const/16 v1, 0x3f8

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    .line 116
    const/16 v1, 0x3ef

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->exceedRendererCapabilitiesIfNecessary:Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    .line 127
    const/16 v1, 0x3f0

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->tunnelingEnabled:Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    .line 138
    const/16 v1, 0x3f1

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->allowMultipleAdaptiveSelections:Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->selectionOverrides:Landroid/util/SparseArray;

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/m$d;->q(Landroid/os/Bundle;Landroid/util/SparseArray;)V

    .line 153
    .line 154
    const/16 v1, 0x3f5

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/m$d;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/m$d;->l(Landroid/util/SparseBooleanArray;)[I

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 168
    return-object v0
.end method
