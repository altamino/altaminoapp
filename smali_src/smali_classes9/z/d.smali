.class public final Lz/d;
.super Lz/a;
.source "SourceFile"


# static fields
.field public static final a:Lz/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz/d;

    invoke-direct {v0}, Lz/d;-><init>()V

    sput-object v0, Lz/d;->a:Lz/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lz/a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
