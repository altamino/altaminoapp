.class public final Lcoil/decode/r;
.super Lcoil/decode/p$a;
.source "SourceFile"


# instance fields
.field private final density:I

.field private final packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/decode/p$a;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/decode/r;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcoil/decode/r;->resId:I

    .line 8
    .line 9
    iput p3, p0, Lcoil/decode/r;->density:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcoil/decode/r;->density:I

    return v0
.end method
