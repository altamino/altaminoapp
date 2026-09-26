.class public Lcom/google/android/material/circularreveal/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final INVALID_RADIUS:F = 3.4028235E38f


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    iput p2, p0, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    iput p3, p0, Lcom/google/android/material/circularreveal/d$e;->radius:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/circularreveal/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/d$e;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/d$e;)V
    .locals 2
    .param p1    # Lcom/google/android/material/circularreveal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget v0, p1, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    iget p1, p1, Lcom/google/android/material/circularreveal/d$e;->radius:F

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/circularreveal/d$e;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/circularreveal/d$e;->radius:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    iput p2, p0, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    iput p3, p0, Lcom/google/android/material/circularreveal/d$e;->radius:F

    return-void
.end method

.method public c(Lcom/google/android/material/circularreveal/d$e;)V
    .locals 2
    .param p1    # Lcom/google/android/material/circularreveal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    .line 3
    .line 4
    iget v1, p1, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    .line 5
    .line 6
    iget p1, p1, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/material/circularreveal/d$e;->b(FFF)V

    .line 10
    return-void
.end method
