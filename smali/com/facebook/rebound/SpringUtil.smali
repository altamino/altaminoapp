.class public Lcom/facebook/rebound/SpringUtil;
.super Ljava/lang/Object;
.source "SpringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapValueFromRangeToRange(DDDDD)D
    .locals 0

    sub-double/2addr p4, p2

    sub-double/2addr p8, p6

    sub-double/2addr p0, p2

    div-double/2addr p0, p4

    mul-double p0, p0, p8

    add-double/2addr p6, p0

    return-wide p6
.end method
