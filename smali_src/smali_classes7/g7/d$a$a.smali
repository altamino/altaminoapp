.class public final Lg7/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg7/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final additionalAudioInputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private audioOnly:Z

.field private dropNegativeTs:Z

.field private duration:I

.field private forceAudioCodecCopy:Z

.field private forceVideoCodecCopy:Z

.field private frameItemHeight:I

.field private frameItemWidth:I

.field private horizontalFlip:Z

.field private final inputClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keepFixedDimension:Z

.field private keyframeOnlyForScreenshot:Z

.field private needProgressCallback:Z

.field private final output:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private screenshotCount:I

.field private screenshotRate:F

.field private screenshotScaleRatio:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startTime:I

.field private final type:I

.field private verticalFlip:Z

.field private videoOnly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inputClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg7/d$a$a;->additionalAudioInputList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lg7/d$a$a;->screenshotCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg7/d$a$a;->screenshotRate:F

    const/16 v0, 0x64

    iput v0, p0, Lg7/d$a$a;->frameItemWidth:I

    const/16 v0, 0xc8

    iput v0, p0, Lg7/d$a$a;->frameItemHeight:I

    iput-object p1, p0, Lg7/d$a$a;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg7/d$a$a;->inputClipList:Ljava/util/List;

    iput-object p2, p0, Lg7/d$a$a;->output:Ljava/io/File;

    iput p3, p0, Lg7/d$a$a;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/io/File;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    const-string v0, "inputClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg7/d$a$a;->additionalAudioInputList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lg7/d$a$a;->screenshotCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg7/d$a$a;->screenshotRate:F

    const/16 v0, 0x64

    iput v0, p0, Lg7/d$a$a;->frameItemWidth:I

    const/16 v0, 0xc8

    iput v0, p0, Lg7/d$a$a;->frameItemHeight:I

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object v0, p0, Lg7/d$a$a;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lg7/d$a$a;->inputClipList:Ljava/util/List;

    iput-object p2, p0, Lg7/d$a$a;->output:Ljava/io/File;

    iput p3, p0, Lg7/d$a$a;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/io/File;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lg7/d$a$a;-><init>(Ljava/util/List;Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d$a$a;->screenshotScaleRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final B()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->startTime:I

    return v0
.end method

.method public final C()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->type:I

    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->verticalFlip:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->videoOnly:Z

    return v0
.end method

.method public final F(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->horizontalFlip:Z

    return-object p0
.end method

.method public final G(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->keepFixedDimension:Z

    return-object p0
.end method

.method public final H(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->keyframeOnlyForScreenshot:Z

    return-object p0
.end method

.method public final I(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->needProgressCallback:Z

    return-object p0
.end method

.method public final J(I)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lg7/d$a$a;->screenshotCount:I

    return-object p0
.end method

.method public final K(F)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lg7/d$a$a;->screenshotRate:F

    return-object p0
.end method

.method public final L(II)Lg7/d$a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-gtz p1, :cond_0

    .line 3
    .line 4
    if-lez p2, :cond_1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 p1, 0x3a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lg7/d$a$a;->screenshotScaleRatio:Ljava/lang/String;

    .line 27
    :cond_1
    return-object p0
.end method

.method public final M(I)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lg7/d$a$a;->startTime:I

    return-object p0
.end method

.method public final N(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->videoOnly:Z

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lg7/d$a$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)",
            "Lg7/d$a$a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lg7/d$a$a;->additionalAudioInputList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lg7/d$a$a;->additionalAudioInputList:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    return-object p0
.end method

.method public final b(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->audioOnly:Z

    return-object p0
.end method

.method public final c()Lg7/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lg7/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lg7/d;-><init>(Lg7/d$a$a;)V

    .line 6
    return-object v0
.end method

.method public final d(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->dropNegativeTs:Z

    return-object p0
.end method

.method public final e(I)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lg7/d$a$a;->duration:I

    return-object p0
.end method

.method public final f(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->forceAudioCodecCopy:Z

    return-object p0
.end method

.method public final g(Z)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lg7/d$a$a;->forceVideoCodecCopy:Z

    return-object p0
.end method

.method public final h(I)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-lez p1, :cond_0

    iput p1, p0, Lg7/d$a$a;->frameItemHeight:I

    :cond_0
    return-object p0
.end method

.method public final i(I)Lg7/d$a$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-lez p1, :cond_0

    iput p1, p0, Lg7/d$a$a;->frameItemWidth:I

    :cond_0
    return-object p0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d$a$a;->additionalAudioInputList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->audioOnly:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->dropNegativeTs:Z

    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->duration:I

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->forceAudioCodecCopy:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->forceVideoCodecCopy:Z

    return v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->frameItemHeight:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->frameItemWidth:I

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->horizontalFlip:Z

    return v0
.end method

.method public final s()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d$a$a;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d$a$a;->inputClipList:Ljava/util/List;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->keepFixedDimension:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->keyframeOnlyForScreenshot:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d$a$a;->needProgressCallback:Z

    return v0
.end method

.method public final x()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d$a$a;->output:Ljava/io/File;

    return-object v0
.end method

.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->screenshotCount:I

    return v0
.end method

.method public final z()F
    .locals 1

    .line 1
    iget v0, p0, Lg7/d$a$a;->screenshotRate:F

    return v0
.end method
