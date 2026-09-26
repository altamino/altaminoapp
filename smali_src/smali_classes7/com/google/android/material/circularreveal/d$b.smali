.class public Lcom/google/android/material/circularreveal/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/google/android/material/circularreveal/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lcom/google/android/material/circularreveal/d$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final revealInfo:Lcom/google/android/material/circularreveal/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/circularreveal/d$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/circularreveal/d$b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/circularreveal/d$b;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/material/circularreveal/d$e;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/d$e;-><init>(Lcom/google/android/material/circularreveal/d$a;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/material/circularreveal/d$b;->revealInfo:Lcom/google/android/material/circularreveal/d$e;

    .line 12
    return-void
.end method


# virtual methods
.method public a(FLcom/google/android/material/circularreveal/d$e;Lcom/google/android/material/circularreveal/d$e;)Lcom/google/android/material/circularreveal/d$e;
    .locals 4
    .param p2    # Lcom/google/android/material/circularreveal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/circularreveal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/circularreveal/d$b;->revealInfo:Lcom/google/android/material/circularreveal/d$e;

    .line 3
    .line 4
    iget v1, p2, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    .line 5
    .line 6
    iget v2, p3, Lcom/google/android/material/circularreveal/d$e;->centerX:F

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, p1}, Ln3/a;->d(FFF)F

    .line 10
    move-result v1

    .line 11
    .line 12
    iget v2, p2, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    .line 13
    .line 14
    iget v3, p3, Lcom/google/android/material/circularreveal/d$e;->centerY:F

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3, p1}, Ln3/a;->d(FFF)F

    .line 18
    move-result v2

    .line 19
    .line 20
    iget p2, p2, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 21
    .line 22
    iget p3, p3, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3, p1}, Ln3/a;->d(FFF)F

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/circularreveal/d$e;->b(FFF)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/material/circularreveal/d$b;->revealInfo:Lcom/google/android/material/circularreveal/d$e;

    .line 32
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    check-cast p2, Lcom/google/android/material/circularreveal/d$e;

    .line 3
    .line 4
    check-cast p3, Lcom/google/android/material/circularreveal/d$e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/circularreveal/d$b;->a(FLcom/google/android/material/circularreveal/d$e;Lcom/google/android/material/circularreveal/d$e;)Lcom/google/android/material/circularreveal/d$e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
