.class public Lcom/scottyab/rootbeer/RootBeerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static libraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v0, "toolChecker"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    sput-boolean v0, Lcom/scottyab/rootbeer/RootBeerNative;->libraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lc6/a;->b(Ljava/lang/Object;)V

    .line 15
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/scottyab/rootbeer/RootBeerNative;->libraryLoaded:Z

    return v0
.end method

.method public native checkForRoot([Ljava/lang/Object;)I
.end method

.method public native setLogDebugMessages(Z)I
.end method
