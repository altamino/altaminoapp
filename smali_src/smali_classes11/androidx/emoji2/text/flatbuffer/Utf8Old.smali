.class public Landroidx/emoji2/text/flatbuffer/Utf8Old;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/emoji2/text/flatbuffer/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic b()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8Old;->c()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic c()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;-><init>()V

    .line 6
    return-object v0
.end method
