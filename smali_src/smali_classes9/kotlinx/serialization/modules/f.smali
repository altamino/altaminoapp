.class public final Lkotlinx/serialization/modules/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializersModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,236:1\n31#2,3:237\n31#2,3:240\n*S KotlinDebug\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n*L\n89#1:237,3\n101#1:240,3\n*E\n"
.end annotation


# static fields
.field private static final EmptySerializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lkotlinx/serialization/modules/b;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 22
    move-result-object v5

    .line 23
    move-object v0, v6

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/modules/b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 27
    .line 28
    sput-object v6, Lkotlinx/serialization/modules/f;->EmptySerializersModule:Lkotlinx/serialization/modules/c;

    .line 29
    return-void
.end method

.method public static final a()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/serialization/modules/f;->EmptySerializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method
