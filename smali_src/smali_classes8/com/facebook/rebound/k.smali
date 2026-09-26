.class public Lcom/facebook/rebound/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(DDDDD)D
    .locals 0

    .line 1
    sub-double/2addr p4, p2

    sub-double/2addr p8, p6

    sub-double/2addr p0, p2

    div-double/2addr p0, p4

    mul-double/2addr p0, p8

    add-double/2addr p6, p0

    return-wide p6
.end method
