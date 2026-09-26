.class public final Lr7/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPacketJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PacketJVM.kt\nio/ktor/utils/io/core/PacketJVMKt\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n1#1,31:1\n98#2,2:32\n*S KotlinDebug\n*F\n+ 1 PacketJVM.kt\nio/ktor/utils/io/core/PacketJVMKt\n*L\n18#1:32,2\n*E\n"
.end annotation


# static fields
.field private static final PACKET_MAX_COPY_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "max.copy.size"

    .line 3
    .line 4
    const/16 v1, 0x1f4

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lu7/a;->a(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    sput v0, Lr7/r;->PACKET_MAX_COPY_SIZE:I

    .line 11
    return-void
.end method

.method public static final a()I
    .locals 1

    .line 1
    sget v0, Lr7/r;->PACKET_MAX_COPY_SIZE:I

    return v0
.end method
