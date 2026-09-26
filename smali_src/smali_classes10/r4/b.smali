.class public Lr4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a;


# static fields
.field private static singleton:Lr4/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lr4/b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lr4/b;->singleton:Lr4/b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lr4/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lr4/b;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lr4/b;->singleton:Lr4/b;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lr4/b;->singleton:Lr4/b;

    .line 14
    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
