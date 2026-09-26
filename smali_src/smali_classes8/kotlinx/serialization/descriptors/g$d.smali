.class public final Lkotlinx/serialization/descriptors/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/g;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Lf8/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 SerialDescriptor.kt\nkotlinx/serialization/descriptors/SerialDescriptorKt\n*L\n1#1,70:1\n295#2:71\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/serialization/descriptors/g$d;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/descriptors/g$b;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlinx/serialization/descriptors/g$d;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/serialization/descriptors/g$b;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 8
    return-object v0
.end method
