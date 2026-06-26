.class public final Lcom/narvii/scene/view/BalanceSeekBarKt;
.super Ljava/lang/Object;
.source "BalanceSeekBar.kt"


# direct methods
.method public static final toPx(F)I
    .locals 1

    .line 23
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static final toPx(I)I
    .locals 1

    .line 19
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method
