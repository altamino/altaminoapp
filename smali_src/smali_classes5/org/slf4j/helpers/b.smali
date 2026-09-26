.class public Lorg/slf4j/helpers/b;
.super Lorg/slf4j/helpers/a;
.source "SourceFile"


# static fields
.field public static final NOP_LOGGER:Lorg/slf4j/helpers/b;

.field private static final serialVersionUID:J = -0x72d8937e719b999L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/slf4j/helpers/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/slf4j/helpers/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/slf4j/helpers/b;->NOP_LOGGER:Lorg/slf4j/helpers/b;

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/slf4j/helpers/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NOP"

    return-object v0
.end method
