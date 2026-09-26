.class public final Lkotlinx/serialization/descriptors/i$a;
.super Lkotlinx/serialization/descriptors/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/i$a;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/i$a;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/i$a;->INSTANCE:Lkotlinx/serialization/descriptors/i$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/i;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method
