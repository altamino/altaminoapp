.class public final Lcom/google/firebase/sessions/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/k0;


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final US_PER_MILLIS:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/l0;

    invoke-direct {v0}, Lcom/google/firebase/sessions/l0;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/l0;->INSTANCE:Lcom/google/firebase/sessions/l0;

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
.method public a()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    mul-long/2addr v0, v2

    .line 8
    return-wide v0
.end method
