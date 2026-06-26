.class public final Lffmpeg/executable/FFMpegEditorDelegate$Companion;
.super Ljava/lang/Object;
.source "FFMpegEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/executable/FFMpegEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFMpegEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate$Companion\n*L\n1#1,691:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 611
    invoke-direct {p0}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFixedDimensionSizeForSarAdjust(Lffmpeg/executable/FFMpegEditorDelegate$Companion;Lffmpeg/base/MediaEditingConfig;I)Lkotlin/Pair;
    .locals 0

    .line 611
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getFixedDimensionSizeForSarAdjust(Lffmpeg/base/MediaEditingConfig;I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResolutionByDAR(Lffmpeg/executable/FFMpegEditorDelegate$Companion;IIZF)Ljava/lang/String;
    .locals 0

    .line 611
    invoke-direct {p0, p1, p2, p3, p4}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getResolutionByDAR(IIZF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getFixedDimensionSizeForSarAdjust(Lffmpeg/base/MediaEditingConfig;I)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lffmpeg/base/MediaEditingConfig;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoWidthList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoWidthList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "config.orgVideoWidthList[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_0
    int-to-float v0, v1

    .line 661
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoDARList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "config.orgVideoDARList[index]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    const/16 p2, 0x500

    if-le p1, p2, :cond_3

    mul-int/lit16 v1, v1, 0x500

    .line 666
    div-int/2addr v1, p1

    and-int/lit8 p1, v1, 0x1

    if-ne p1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/16 p1, 0x500

    .line 672
    :cond_3
    new-instance p2, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic getFixedDimensionSizeForSarAdjust$default(Lffmpeg/executable/FFMpegEditorDelegate$Companion;Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 655
    :cond_0
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getFixedDimensionSizeForSarAdjust(Lffmpeg/base/MediaEditingConfig;I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final getResolutionByDAR(IIZF)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2d0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d0

    :goto_0
    int-to-float p2, p1

    div-float/2addr p2, p4

    float-to-int p2, p2

    and-int/lit8 p3, p2, 0x1

    if-ne p3, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    if-ge p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x2d0

    :goto_1
    int-to-float p1, p2

    mul-float p1, p1, p4

    float-to-int p1, p1

    and-int/lit8 p3, p1, 0x1

    if-ne p3, v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 652
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final formatFFMpegTime(I)Ljava/lang/String;
    .locals 6

    .line 628
    rem-int/lit16 v0, p1, 0x3e8

    .line 629
    div-int/lit16 p1, p1, 0x3e8

    rem-int/lit8 v1, p1, 0x3c

    .line 630
    div-int/lit8 v2, p1, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 631
    div-int/lit16 p1, p1, 0xe10

    .line 633
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v4, v0

    array-length p1, v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02d:%02d:%02d.%03d"

    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getInstance()Lffmpeg/executable/FFMpegEditorDelegate;
    .locals 1

    .line 613
    invoke-static {}, Lffmpeg/executable/FFMpegEditorDelegate;->access$getInstance$cp()Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/io/File;)Lffmpeg/executable/FFMpegEditorDelegate;
    .locals 4

    const-string v0, "localFileDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance()Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 617
    const-class v0, Lffmpeg/executable/FFMpegEditorDelegate;

    monitor-enter v0

    .line 618
    :try_start_0
    sget-object v2, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {v2}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance()Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    .line 619
    sget-object v2, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    new-instance v3, Lffmpeg/executable/FFMpegEditorDelegate;

    invoke-direct {v3, p1, v1}, Lffmpeg/executable/FFMpegEditorDelegate;-><init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v3}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->setInstance(Lffmpeg/executable/FFMpegEditorDelegate;)V

    .line 621
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 623
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance()Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final setInstance(Lffmpeg/executable/FFMpegEditorDelegate;)V
    .locals 0

    .line 613
    invoke-static {p1}, Lffmpeg/executable/FFMpegEditorDelegate;->access$setInstance$cp(Lffmpeg/executable/FFMpegEditorDelegate;)V

    return-void
.end method
