.class public final Lkotlinx/serialization/descriptors/j$d;
.super Lkotlinx/serialization/descriptors/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/j$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/j$d;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/j$d;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/j$d;->INSTANCE:Lkotlinx/serialization/descriptors/j$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/j;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
