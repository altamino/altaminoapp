.class abstract Lcom/google/android/material/shape/m$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/shape/m$g;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V
.end method

.method public final b(Lq3/a;ILandroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/material/shape/m$g;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/material/shape/m$g;->a(Landroid/graphics/Matrix;Lq3/a;ILandroid/graphics/Canvas;)V

    .line 6
    return-void
.end method
