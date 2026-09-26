.class public final Lkotlinx/coroutines/channels/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/channels/d$a;

.field public static final BUFFERED:I = -0x2

.field private static final CHANNEL_DEFAULT_CAPACITY:I

.field public static final CONFLATED:I = -0x1

.field public static final DEFAULT_BUFFER_PROPERTY_NAME:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPTIONAL_CHANNEL:I = -0x3

.field public static final RENDEZVOUS:I = 0x0

.field public static final UNLIMITED:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/channels/d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/channels/d$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/channels/d$a;->$$INSTANCE:Lkotlinx/coroutines/channels/d$a;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    const v1, 0x7ffffffe

    .line 12
    .line 13
    const-string v2, "kotlinx.coroutines.channels.defaultBuffer"

    .line 14
    .line 15
    const/16 v3, 0x40

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lkotlinx/coroutines/internal/j0;->b(Ljava/lang/String;III)I

    .line 19
    move-result v0

    .line 20
    .line 21
    sput v0, Lkotlinx/coroutines/channels/d$a;->CHANNEL_DEFAULT_CAPACITY:I

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/channels/d$a;->CHANNEL_DEFAULT_CAPACITY:I

    return v0
.end method
