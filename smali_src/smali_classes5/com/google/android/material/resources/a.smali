.class public final Lcom/google/android/material/resources/a;
.super Lcom/google/android/material/resources/f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/resources/a$a;
    }
.end annotation


# instance fields
.field private final applyFont:Lcom/google/android/material/resources/a$a;

.field private cancelled:Z

.field private final fallbackFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/resources/f;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/material/resources/a;->fallbackFont:Landroid/graphics/Typeface;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/material/resources/a;->applyFont:Lcom/google/android/material/resources/a$a;

    .line 8
    return-void
.end method

.method private d(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/resources/a;->cancelled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/resources/a;->applyFont:Lcom/google/android/material/resources/a$a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/material/resources/a$a;->a(Landroid/graphics/Typeface;)V

    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/resources/a;->fallbackFont:Landroid/graphics/Typeface;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/a;->d(Landroid/graphics/Typeface;)V

    .line 6
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/a;->d(Landroid/graphics/Typeface;)V

    .line 4
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/resources/a;->cancelled:Z

    return-void
.end method
