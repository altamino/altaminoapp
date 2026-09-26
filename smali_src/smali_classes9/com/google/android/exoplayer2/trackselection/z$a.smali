.class public Lcom/google/android/exoplayer2/trackselection/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private disabledTrackTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private forceHighestSupportedBitrate:Z

.field private forceLowestBitrate:Z

.field private ignoredTextSelectionFlags:I

.field private maxAudioBitrate:I

.field private maxAudioChannelCount:I

.field private maxVideoBitrate:I

.field private maxVideoFrameRate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private minVideoBitrate:I

.field private minVideoFrameRate:I

.field private minVideoHeight:I

.field private minVideoWidth:I

.field private overrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/f1;",
            "Lcom/google/android/exoplayer2/trackselection/x;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioLanguages:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioMimeTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioRoleFlags:I

.field private preferredTextLanguages:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredTextRoleFlags:I

.field private preferredVideoMimeTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredVideoRoleFlags:I

.field private selectUndeterminedTextLanguage:Z

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportOrientationMayChange:Z

    .line 2
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoRoleFlags:I

    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioChannelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioBitrate:I

    .line 4
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextLanguages:Lcom/google/common/collect/a0;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextRoleFlags:I

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->ignoredTextSelectionFlags:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->selectUndeterminedTextLanguage:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceLowestBitrate:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceHighestSupportedBitrate:Z

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->H(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/z$a;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->L(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/z$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/z;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/z;

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoWidth:I

    const/4 v0, 0x7

    .line 15
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 16
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoHeight:I

    const/16 v0, 0x8

    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoFrameRate:I

    const/16 v0, 0x9

    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoBitrate:I

    const/16 v0, 0xa

    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoWidth:I

    const/16 v0, 0xb

    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoHeight:I

    const/16 v0, 0xc

    .line 24
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoFrameRate:I

    const/16 v0, 0xd

    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 27
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoBitrate:I

    const/16 v0, 0xe

    .line 28
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportWidth:I

    const/16 v0, 0xf

    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportHeight:I

    const/16 v0, 0x10

    .line 30
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportOrientationMayChange:Z

    const/16 v0, 0x11

    .line 32
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 33
    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/google/common/collect/a0;->u([Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    const/16 v0, 0x19

    .line 35
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 36
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoRoleFlags:I

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 38
    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->D([Ljava/lang/String;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    const/4 v0, 0x2

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 41
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioRoleFlags:I

    const/16 v0, 0x12

    .line 42
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 43
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioChannelCount:I

    const/16 v0, 0x13

    .line 44
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 45
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioBitrate:I

    const/16 v0, 0x14

    .line 46
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 47
    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 48
    invoke-static {v0}, Lcom/google/common/collect/a0;->u([Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    const/4 v0, 0x3

    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 50
    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->D([Ljava/lang/String;)Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextLanguages:Lcom/google/common/collect/a0;

    const/4 v0, 0x4

    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 53
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextRoleFlags:I

    const/16 v0, 0x1a

    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 55
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->ignoredTextSelectionFlags:I

    const/4 v0, 0x5

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 57
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->selectUndeterminedTextLanguage:Z

    const/16 v0, 0x15

    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 59
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceLowestBitrate:Z

    const/16 v0, 0x16

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceHighestSupportedBitrate:Z

    const/16 v0, 0x17

    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/trackselection/x;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/a0;

    move-result-object v0

    .line 65
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    move v1, v2

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/x;

    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 68
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/x;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    .line 69
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 71
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->C(Lcom/google/android/exoplayer2/trackselection/z;)V

    return-void
.end method

.method private C(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoWidth:I

    .line 5
    .line 6
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoHeight:I

    .line 9
    .line 10
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoFrameRate:I

    .line 13
    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoBitrate:I

    .line 17
    .line 18
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoWidth:I

    .line 21
    .line 22
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoHeight:I

    .line 25
    .line 26
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoFrameRate:I

    .line 29
    .line 30
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoBitrate:I

    .line 33
    .line 34
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 35
    .line 36
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportWidth:I

    .line 37
    .line 38
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 39
    .line 40
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportHeight:I

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportOrientationMayChange:Z

    .line 45
    .line 46
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 49
    .line 50
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 51
    .line 52
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoRoleFlags:I

    .line 53
    .line 54
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 57
    .line 58
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 59
    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioRoleFlags:I

    .line 61
    .line 62
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 63
    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioChannelCount:I

    .line 65
    .line 66
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 67
    .line 68
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioBitrate:I

    .line 69
    .line 70
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 77
    .line 78
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 79
    .line 80
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextRoleFlags:I

    .line 81
    .line 82
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 83
    .line 84
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->ignoredTextSelectionFlags:I

    .line 85
    .line 86
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->selectUndeterminedTextLanguage:Z

    .line 89
    .line 90
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceLowestBitrate:Z

    .line 93
    .line 94
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceHighestSupportedBitrate:Z

    .line 97
    .line 98
    new-instance v0, Ljava/util/HashSet;

    .line 99
    .line 100
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 106
    .line 107
    new-instance v0, Ljava/util/HashMap;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 113
    .line 114
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 115
    return-void
.end method

.method private static D([Ljava/lang/String;)Lcom/google/common/collect/a0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, [Ljava/lang/String;

    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, p0, v2

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/o0;->y0(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private I(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    const-string v0, "captioning"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const/16 v0, 0x440

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextRoleFlags:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->S(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoWidth:I

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoHeight:I

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/trackselection/z$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportOrientationMayChange:Z

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredVideoRoleFlags:I

    .line 3
    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioRoleFlags:I

    .line 3
    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioChannelCount:I

    .line 3
    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxAudioBitrate:I

    .line 3
    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->preferredTextRoleFlags:I

    .line 3
    return p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoFrameRate:I

    .line 3
    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->ignoredTextSelectionFlags:I

    .line 3
    return p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/trackselection/z$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->selectUndeterminedTextLanguage:Z

    .line 3
    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/trackselection/z$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceLowestBitrate:Z

    .line 3
    return p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/trackselection/z$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->forceHighestSupportedBitrate:Z

    .line 3
    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/trackselection/z$a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/trackselection/z$a;)Ljava/util/HashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->maxVideoBitrate:I

    .line 3
    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoWidth:I

    .line 3
    return p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoHeight:I

    .line 3
    return p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoFrameRate:I

    .line 3
    return p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->minVideoBitrate:I

    .line 3
    return p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportWidth:I

    .line 3
    return p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/trackselection/z$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportHeight:I

    .line 3
    return p0
.end method


# virtual methods
.method public A()Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/z;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/z;-><init>(Lcom/google/android/exoplayer2/trackselection/z$a;)V

    .line 6
    return-object v0
.end method

.method public B(I)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/trackselection/x;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/x;->b()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-ne v1, p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method protected E(Lcom/google/android/exoplayer2/trackselection/z;)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->C(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 4
    return-object p0
.end method

.method public F(I)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->ignoredTextSelectionFlags:I

    return-object p0
.end method

.method public G(Lcom/google/android/exoplayer2/trackselection/x;)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/x;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->B(I)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->overrides:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/x;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-object p0
.end method

.method public H(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x13

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->I(Landroid/content/Context;)V

    .line 10
    :cond_0
    return-object p0
.end method

.method public J(IZ)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->disabledTrackTypes:Ljava/util/HashSet;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    return-object p0
.end method

.method public K(IIZ)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportWidth:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportHeight:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/z$a;->viewportOrientationMayChange:Z

    return-object p0
.end method

.method public L(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->I(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 7
    .line 8
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/z$a;->K(IIZ)Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
