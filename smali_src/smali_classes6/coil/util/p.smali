.class final Lcoil/util/p;
.super Lcoil/util/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/util/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHardwareBitmaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HardwareBitmaps.kt\ncoil/util/LimitedFileDescriptorHardwareBitmapService\n+ 2 Dimension.kt\ncoil/size/-Dimensions\n*L\n1#1,216:1\n57#2:217\n57#2:218\n*S KotlinDebug\n*F\n+ 1 HardwareBitmaps.kt\ncoil/util/LimitedFileDescriptorHardwareBitmapService\n*L\n47#1:217\n48#1:218\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/util/p$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIN_SIZE_DIMENSION:I = 0x64


# instance fields
.field private final logger:Lcoil/util/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/util/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/util/p$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/util/p;->Companion:Lcoil/util/p$a;

    return-void
.end method

.method public constructor <init>(Lcoil/util/q;)V
    .locals 0
    .param p1    # Lcoil/util/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcoil/util/m;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method


# virtual methods
.method public a(Lcoil/size/i;)Z
    .locals 3
    .param p1    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/size/i;->b()Lcoil/size/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcoil/size/c$a;

    .line 7
    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcoil/size/c$a;

    .line 13
    .line 14
    iget v0, v0, Lcoil/size/c$a;->px:I

    .line 15
    .line 16
    if-le v0, v2, :cond_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcoil/size/i;->a()Lcoil/size/c;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    instance-of v0, p1, Lcoil/size/c$a;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    check-cast p1, Lcoil/size/c$a;

    .line 27
    .line 28
    iget p1, p1, Lcoil/size/c$a;->px:I

    .line 29
    .line 30
    if-le p1, v2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 35
    :goto_1
    return p1
.end method

.method public b()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcoil/util/l;->INSTANCE:Lcoil/util/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcoil/util/l;->b(Lcoil/util/q;)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method
