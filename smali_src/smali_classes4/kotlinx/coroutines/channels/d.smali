.class public interface abstract Lkotlinx/coroutines/channels/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/u;
.implements Lkotlinx/coroutines/channels/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/u<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/t<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final BUFFERED:I = -0x2

.field public static final CONFLATED:I = -0x1

.field public static final DEFAULT_BUFFER_PROPERTY_NAME:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Factory:Lkotlinx/coroutines/channels/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPTIONAL_CHANNEL:I = -0x3

.field public static final RENDEZVOUS:I = 0x0

.field public static final UNLIMITED:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/d$a;->$$INSTANCE:Lkotlinx/coroutines/channels/d$a;

    sput-object v0, Lkotlinx/coroutines/channels/d;->Factory:Lkotlinx/coroutines/channels/d$a;

    return-void
.end method
