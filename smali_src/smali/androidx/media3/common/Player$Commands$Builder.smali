.class public final Landroidx/media3/common/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final SUPPORTED_COMMANDS:[I


# instance fields
.field private final flagsBuilder:Landroidx/media3/common/FlagSet$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x21
        0x1a
        0x22
        0x1b
        0x1c
        0x1d
        0x1e
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 11
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media3/common/Player$Commands$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/common/FlagSet$Builder;->a(I)Landroidx/media3/common/FlagSet$Builder;

    .line 6
    return-object p0
.end method

.method public b(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/Player$Commands;->b(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/FlagSet;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/common/FlagSet$Builder;->b(Landroidx/media3/common/FlagSet;)Landroidx/media3/common/FlagSet$Builder;

    .line 10
    return-object p0
.end method

.method public varargs c([I)Landroidx/media3/common/Player$Commands$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/common/FlagSet$Builder;->c([I)Landroidx/media3/common/FlagSet$Builder;

    .line 6
    return-object p0
.end method

.method public d(IZ)Landroidx/media3/common/Player$Commands$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/FlagSet$Builder;->d(IZ)Landroidx/media3/common/FlagSet$Builder;

    .line 6
    return-object p0
.end method

.method public e()Landroidx/media3/common/Player$Commands;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Player$Commands;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/common/FlagSet$Builder;->e()Landroidx/media3/common/FlagSet;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;Landroidx/media3/common/Player$1;)V

    .line 13
    return-object v0
.end method
